#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2011 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.logic.math.permutations

mutable struct OrderedObjectArrayPermutationUtil <: JObject
    TOTAL_ITERATIONS_TABLE::Any
    FINISHED::Any
    OrderedObjectArrayPermutationUtil() = new()
end

const OrderedObjectArrayPermutationUtil_instanceValue = Ref{Any}(nothing)
const OrderedObjectArrayPermutationUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{OrderedObjectArrayPermutationUtil})
    if !OrderedObjectArrayPermutationUtil_instanceSet[]
        OrderedObjectArrayPermutationUtil_instanceSet[] = true
        OrderedObjectArrayPermutationUtil_instanceValue[] = newOrderedObjectArrayPermutationUtil()
    end
    OrderedObjectArrayPermutationUtil_instanceValue[]
end
function staticSet_instance(::Type{OrderedObjectArrayPermutationUtil}, value)
    OrderedObjectArrayPermutationUtil_instanceSet[] = true
    OrderedObjectArrayPermutationUtil_instanceValue[] = value
end

function initFieldsOrderedObjectArrayPermutationUtil(this::OrderedObjectArrayPermutationUtil)
    this.TOTAL_ITERATIONS_TABLE = nothing
    this.FINISHED = nothing
    this.TOTAL_ITERATIONS_TABLE = "Total Iterations: "
    this.FINISHED = "\nFINISHED"
    nothing
end


function getInstance(::Type{OrderedObjectArrayPermutationUtil})
        return staticGet_instance(OrderedObjectArrayPermutationUtil)
end


function initOrderedObjectArrayPermutationUtil(this::OrderedObjectArrayPermutationUtil)
        initFieldsOrderedObjectArrayPermutationUtil(this)
        nothing
        nothing
end

function newOrderedObjectArrayPermutationUtil()
    this = OrderedObjectArrayPermutationUtil()
    initOrderedObjectArrayPermutationUtil(this)
    this
end


function getNext(this::OrderedObjectArrayPermutationUtil, data)
        local length::Int32 = Int32(Base.length(data))
        local i::Int32 = length - Int32(1)
        local tsUtil = AllBinary.getInstance(TsUtil)
        while AllBinary.hashCode(tsUtil, data[i - Int32(1) + 1]) >= AllBinary.hashCode(tsUtil, data[i + 1])
            i = i - Int32(1)
        end
        local j::Int32 = length
        while AllBinary.hashCode(tsUtil, data[j - Int32(1) + 1]) <= AllBinary.hashCode(tsUtil, data[i - Int32(1) + 1])
            j = j - Int32(1)
        end
        AllBinary.swap(this, data, i - Int32(1), j - Int32(1))
        i += Int32(1)
        j = length
        while i < j
            AllBinary.swap(this, data, i - Int32(1), j - Int32(1))
            i += Int32(1)
            j -= Int32(1)
        end
        nothing
end


function swap(this::OrderedObjectArrayPermutationUtil, data, a, b)
        local temp = data[a + 1]
        data[a + 1] = data[b + 1]
        data[b + 1] = temp
        nothing
end


function factorial(this::OrderedObjectArrayPermutationUtil, dataLength)
        local temp::Int64 = Int64(1)
        if dataLength > Int32(1)
            let
                local i::Int32 = Int32(1)
                while i <= dataLength
                try
                temp *= ((i) % Int64)
                finally
                    i += Int32(1)
                end
                end
            end
        end
        return temp
end


function generate(this::OrderedObjectArrayPermutationUtil, data, visitor)
        local iterations::Int64 = AllBinary.factorial(this, Int32(Base.length(data)))
        Base.println(jstr(this.TOTAL_ITERATIONS_TABLE))
        Base.println(jstr(iterations))
        let
            local count::Int64 = Int64(0)
            while count < iterations - Int64(1)
            try
            AllBinary.getNext(this, data)
            AllBinary.visit(visitor, this)
            finally
                count += 1
            end
            end
        end
        Base.println(jstr(this.FINISHED))
        nothing
end


function main(::Type{OrderedObjectArrayPermutationUtil}, args)
        local TOTAL::Int32 = Int32(7)
        local data = jNewArray(Any, TOTAL, nothing)
        let
            local i::Int32 = Int32(0)
            while i < TOTAL
            try
            data[i + 1] = newComparableObject()
            finally
                i += Int32(1)
            end
            end
        end
        AllBinary.sort(Arrays, data)
        local permutationVisitor = newObjectPermutationVisitor(data)
        local ORIGINAL_DATA_LABEL = "Original Data: "
        Base.println(jstr(ORIGINAL_DATA_LABEL))
        AllBinary.visit(permutationVisitor, data)
        AllBinary.generate(AllBinary.getInstance(OrderedObjectArrayPermutationUtil), data, permutationVisitor)
        nothing
end

