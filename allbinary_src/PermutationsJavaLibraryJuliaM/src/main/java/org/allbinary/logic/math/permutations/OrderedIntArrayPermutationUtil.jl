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

mutable struct OrderedIntArrayPermutationUtil <: JObject
    TOTAL_ITERATIONS_TABLE::Any
    FINISHED::Any
    OrderedIntArrayPermutationUtil() = new()
end

const OrderedIntArrayPermutationUtil_instanceValue = Ref{Any}(nothing)
const OrderedIntArrayPermutationUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{OrderedIntArrayPermutationUtil})
    if !OrderedIntArrayPermutationUtil_instanceSet[]
        OrderedIntArrayPermutationUtil_instanceSet[] = true
        OrderedIntArrayPermutationUtil_instanceValue[] = newOrderedIntArrayPermutationUtil()
    end
    OrderedIntArrayPermutationUtil_instanceValue[]
end
function staticSet_instance(::Type{OrderedIntArrayPermutationUtil}, value)
    OrderedIntArrayPermutationUtil_instanceSet[] = true
    OrderedIntArrayPermutationUtil_instanceValue[] = value
end

function initFieldsOrderedIntArrayPermutationUtil(this::OrderedIntArrayPermutationUtil)
    this.TOTAL_ITERATIONS_TABLE = nothing
    this.FINISHED = nothing
    this.TOTAL_ITERATIONS_TABLE = "Total Iterations: "
    this.FINISHED = "\nFINISHED"
    nothing
end


function getInstance(::Type{OrderedIntArrayPermutationUtil})
        return staticGet_instance(OrderedIntArrayPermutationUtil)
end


function initOrderedIntArrayPermutationUtil(this::OrderedIntArrayPermutationUtil)
        initFieldsOrderedIntArrayPermutationUtil(this)
        nothing
        nothing
end

function newOrderedIntArrayPermutationUtil()
    this = OrderedIntArrayPermutationUtil()
    initOrderedIntArrayPermutationUtil(this)
    this
end


function getNext(this::OrderedIntArrayPermutationUtil, data)
        local length::Int32 = Int32(Base.length(data))
        local i::Int32 = length - Int32(1)
        while data[i - Int32(1) + 1] >= data[i + 1]
            i = i - Int32(1)
        end
        local j::Int32 = length
        while data[j - Int32(1) + 1] <= data[i - Int32(1) + 1]
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


function swap(this::OrderedIntArrayPermutationUtil, data, a, b)
        local temp::Int32 = data[a + 1]
        data[a + 1] = data[b + 1]
        data[b + 1] = temp
        nothing
end


function factorial(this::OrderedIntArrayPermutationUtil, dataLength)
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


function generate(this::OrderedIntArrayPermutationUtil, data, visitor)
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


function main(::Type{OrderedIntArrayPermutationUtil}, args)
        local TOTAL::Int32 = Int32(3)
        local data = jNewArray(Int32, TOTAL, Int32(0))
        let
            local i::Int32 = Int32(0)
            while i < TOTAL
            try
            data[i + 1] = i
            finally
                i += Int32(1)
            end
            end
        end
        local permutationVisitor = newIntPermutationVisitor(data)
        local ORIGINAL_DATA_LABEL = "Original Data: "
        Base.println(jstr(ORIGINAL_DATA_LABEL))
        AllBinary.print(permutationVisitor, data, newStringMaker())
        AllBinary.generate(AllBinary.getInstance(OrderedIntArrayPermutationUtil), data, permutationVisitor)
        nothing
end

