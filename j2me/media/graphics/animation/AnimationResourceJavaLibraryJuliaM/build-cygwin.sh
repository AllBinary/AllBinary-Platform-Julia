#!/usr/bin/env bash

# Loads the Julia files the Julia converter generated in one module named AllBinary with the hand written runtime and
# the Julia sources of the dependencies (META-INF/jl/src of their jars). Loading parses every file and defines every
# type and method, so syntax and definition errors fail the build. This project's sources are written to <output>/src.
# Arguments: source_dir output_dir object_dir dependency_dir runtime_dir compiler "flags" artifactId fail_on_error

set -uo pipefail

export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

source_dir="$(cygpath -u "$1")"
output_dir="$(cygpath -u "$2")"
object_dir="$(cygpath -u "$3")"
dependency_dir="$(cygpath -u "$4")"
runtime_dir="$(cygpath -u "$5")"
compiler="$(cygpath -u "$6")"
read -r -a compiler_flags <<< "$7"
artifact="$8"
fail_on_error="${9:-true}"

if [ ! -d "$source_dir" ]; then
    echo "No Julia sources: $source_dir"
    exit 0
fi

rm -rf "$output_dir" "$object_dir"
mkdir -p "$output_dir/src" "$object_dir"
cp -R "$source_dir/." "$output_dir/src/"

check="$object_dir/check.jl"
{
    echo 'module AllBinary'
    for runtime in "$runtime_dir"/*.jl; do
        echo "include(raw\"$(cygpath -w "$runtime")\")"
    done
    # The java.* classes: java/JState.jl (the runtime objects and the generic functions of their Java methods) first
    if [ -f "$runtime_dir/java/JState.jl" ]; then
        echo "include(raw\"$(cygpath -w "$runtime_dir/java/JState.jl")\")"
        find "$runtime_dir/java" -type f -name '*.jl' ! -name 'JState.jl' | LC_ALL=C sort | while IFS= read -r file; do echo "include(raw\"$(cygpath -w "$file")\")"; done
    fi
    if [ -d "$dependency_dir/src" ]; then
        find "$dependency_dir/src" -type f -name '*.jl' | sort | while IFS= read -r file; do echo "include(raw\"$(cygpath -w "$file")\")"; done
    fi
    find "$source_dir" -type f -name '*.jl' | sort | while IFS= read -r file; do echo "include(raw\"$(cygpath -w "$file")\")"; done
    echo 'end'
    echo "println(\"Julia loaded: $artifact\")"
} > "$check"

echo "Julia sources: $(find "$source_dir" -name '*.jl' | wc -l)"
if "$compiler" --startup-file=no "${compiler_flags[@]}" "$(cygpath -w "$check")"; then
    exit 0
fi
echo "Julia build failed: $artifact" >&2
if [ "$fail_on_error" = "true" ]; then
    exit 1
fi
exit 0
