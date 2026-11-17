# Generated Code Do Not Modify
# package org.allbinary.graph

mutable struct E <: JObject
    E() = new()
end

const E_eValue = Ref{Any}(nothing)
const E_eSet = Ref(false)
function staticGet_e(::Type{E})
    if !E_eSet[]
        E_eSet[] = true
        E_eValue[] = newE()
    end
    E_eValue[]
end
function staticSet_e(::Type{E}, value)
    E_eSet[] = true
    E_eValue[] = value
end

function initFieldsE(this::E)
    nothing
end

function initE(this::E)
    initFieldsE(this)
end

function newE()
    this = E()
    initE(this)
    this
end


function newInstance(this::E)
        return staticGet_e(E)
end

