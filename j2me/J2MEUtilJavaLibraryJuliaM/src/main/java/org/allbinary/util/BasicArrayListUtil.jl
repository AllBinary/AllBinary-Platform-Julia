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
# package org.allbinary.util

mutable struct BasicArrayListUtil <: JObject
    NULL_ARRAY_OF_ARRAY::Any
    myRandomFactory::Any
    immutableInstance::Any
    BasicArrayListUtil() = new()
end

const BasicArrayListUtil_instanceValue = Ref{Any}(nothing)
const BasicArrayListUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{BasicArrayListUtil})
    if !BasicArrayListUtil_instanceSet[]
        BasicArrayListUtil_instanceSet[] = true
        BasicArrayListUtil_instanceValue[] = newBasicArrayListUtil()
    end
    BasicArrayListUtil_instanceValue[]
end
function staticSet_instance(::Type{BasicArrayListUtil}, value)
    BasicArrayListUtil_instanceSet[] = true
    BasicArrayListUtil_instanceValue[] = value
end

function initFieldsBasicArrayListUtil(this::BasicArrayListUtil)
    this.NULL_ARRAY_OF_ARRAY = nothing
    this.myRandomFactory = nothing
    this.immutableInstance = nothing
    this.NULL_ARRAY_OF_ARRAY = jNewArrayOf(Vector{Any}, Int32(0), () -> jNewArray(Any, Int32(0), nothing))
    this.myRandomFactory = AllBinary.getInstance(MyRandomFactory)
    this.immutableInstance = newImmutableBasicArrayList("Immutable", Int32(0))
    nothing
end

function initBasicArrayListUtil(this::BasicArrayListUtil)
    initFieldsBasicArrayListUtil(this)
end

function newBasicArrayListUtil()
    this = BasicArrayListUtil()
    initBasicArrayListUtil(this)
    this
end


function getInstance(::Type{BasicArrayListUtil})
        return staticGet_instance(BasicArrayListUtil)
end


function getRandom(this::BasicArrayListUtil, list)
        local i_random::Int32 = AllBinary.getRandomIndex(this, list)
        return list.objectArray[i_random + 1]
end


function getRandomIndex(this::BasicArrayListUtil, list)
        return AllBinary.getAbsoluteNextInt(this.myRandomFactory, AllBinary.size(list))
end


function reverse(this::BasicArrayListUtil, list)
        local lastMinusOneIndex::Int32 = AllBinary.size(list) - Int32(2)
        local temp = nothing
        local size::Int32 = lastMinusOneIndex ÷ Int32(2)
        local secondSwapIndex::Int32 = Int32(0)
        let
            local index::Int32 = Int32(0)
            while index <= size
            try
            secondSwapIndex = lastMinusOneIndex - index
            temp = AllBinary.removeAt(list, index)
            AllBinary.addAt(list, index, AllBinary.removeAt(list, secondSwapIndex))
            AllBinary.addAt(list, secondSwapIndex + Int32(1), temp)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function log(this::BasicArrayListUtil, list)
        local S_LABEL = " s: "
        local size::Int32 = AllBinary.size(list)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonLabels).TOTAL_LABEL)
        AllBinary.appendint(stringBuffer, size)
        let
            local index::Int32 = size - Int32(1)
            while index >= Int32(0)
            try
            local usedList = (list.objectArray[index + 1])
            AllBinary.append(stringBuffer, S_LABEL)
            AllBinary.appendint(stringBuffer, AllBinary.size(usedList))
            finally
                index -= Int32(1)
            end
            end
        end
        return AllBinary.toString(stringBuffer)
end


function getImmutableInstance(this::BasicArrayListUtil)
        return this.immutableInstance
end


function main(::Type{BasicArrayListUtil}, args)
        local commonPhoneStrings = AllBinary.getInstance(CommonPhoneStrings)
        local list = newBasicArrayListD()
        AllBinary.add(list, commonPhoneStrings.ONE)
        AllBinary.add(list, commonPhoneStrings.TWO)
        AllBinary.add(list, commonPhoneStrings.THREE)
        AllBinary.add(list, commonPhoneStrings.FOUR)
        AllBinary.add(list, commonPhoneStrings.FIVE)
        AllBinary.add(list, commonPhoneStrings.SIX)
        AllBinary.add(list, commonPhoneStrings.SEVEN)
        AllBinary.add(list, commonPhoneStrings.EIGHT)
        AllBinary.add(list, commonPhoneStrings.NINE)
        AllBinary.reverse(AllBinary.getInstance(BasicArrayListUtil), list)
        Base.println(jstr(AllBinary.toString(list)))
        nothing
end

