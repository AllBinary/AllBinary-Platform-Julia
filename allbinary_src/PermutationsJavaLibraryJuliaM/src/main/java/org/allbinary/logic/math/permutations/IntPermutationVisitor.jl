# Generated Code Do Not Modify
# package org.allbinary.logic.math.permutations

# extends Visitor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct IntPermutationVisitor <: JObject
    data::Any
    stringBuilder::Any
    IntPermutationVisitor() = new()
end


function initFieldsIntPermutationVisitor(this::IntPermutationVisitor)
    this.data = nothing
    this.stringBuilder = nothing
    
    this.stringBuilder = newStringMaker()
    nothing
end


function initIntPermutationVisitor(this::IntPermutationVisitor, data)
        initVisitor(this)
        initFieldsIntPermutationVisitor(this)
        this.data = data
        nothing
end

function newIntPermutationVisitor(data)
    this = IntPermutationVisitor()
    initIntPermutationVisitor(this, data)
    this
end


function visit(this::IntPermutationVisitor, anyType)
        AllBinary.delete(this.stringBuilder, Int32(0), AllBinary.length(this.stringBuilder))
        AllBinary.print(this, this.data, this.stringBuilder)
        return AllBinary.getInstance(NullUtil).NULL_OBJECT
end


function print(this::IntPermutationVisitor, data)
        local stringBuilder = newStringMaker()
        AllBinary.print(this, data, stringBuilder)
        nothing
end


function print(this::IntPermutationVisitor, data, stringBuilder)
        local commonSeps = AllBinary.getInstance(CommonSeps)
        local size::Int32 = Int32(Base.length(data))
        let
            local i::Int32 = Int32(0)
            while i < size
            try
            AllBinary.appendint(stringBuilder, data[i + 1])
            AllBinary.append(stringBuilder, commonSeps.SPACE)
            finally
                i += Int32(1)
            end
            end
        end
        Base.println(jstr(AllBinary.toString(stringBuilder)))
        nothing
end

