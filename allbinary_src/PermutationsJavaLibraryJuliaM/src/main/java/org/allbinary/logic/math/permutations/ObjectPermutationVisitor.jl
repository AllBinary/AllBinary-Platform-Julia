# Generated Code Do Not Modify
# package org.allbinary.logic.math.permutations

# extends Visitor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ObjectPermutationVisitor <: JObject
    data::Any
    stringBuilder::Any
    ObjectPermutationVisitor() = new()
end


function initFieldsObjectPermutationVisitor(this::ObjectPermutationVisitor)
    this.data = nothing
    this.stringBuilder = nothing
    
    this.stringBuilder = newStringMaker()
    nothing
end


function initObjectPermutationVisitor(this::ObjectPermutationVisitor, data)
        initVisitor(this)
        initFieldsObjectPermutationVisitor(this)
        this.data = data
        nothing
end

function newObjectPermutationVisitor(data)
    this = ObjectPermutationVisitor()
    initObjectPermutationVisitor(this, data)
    this
end


function visit(this::ObjectPermutationVisitor, anyType)
        AllBinary.delete(this.stringBuilder, Int32(0), AllBinary.length(this.stringBuilder))
        AllBinary.print(this, this.data, this.stringBuilder)
        return AllBinary.getInstance(NullUtil).NULL_OBJECT
end


function print(this::ObjectPermutationVisitor, data)
        local stringBuilder = newStringMaker()
        AllBinary.print(this, data, stringBuilder)
        nothing
end


function print(this::ObjectPermutationVisitor, data, stringBuilder)
        local tsUtil = AllBinary.getInstance(TsUtil)
        local size::Int32 = Int32(Base.length(data))
        let
            local i::Int32 = Int32(0)
            while i < size
            try
            AllBinary.appendint(stringBuilder, ((AllBinary.hashCode(tsUtil, data[i + 1])) % Int32))
            AllBinary.append(stringBuilder, AllBinary.getInstance(CommonSeps).SPACE)
            finally
                i += Int32(1)
            end
            end
        end
        Base.println(jstr(AllBinary.toString(stringBuilder)))
        nothing
end

