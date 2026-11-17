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
# package org.allbinary.game.rand

#Do not use in client code for money related things.
mutable struct MyRandomFactory <: JObject
    mathUtil::Any
    rand::Any
    MyRandomFactory() = new()
end

const MyRandomFactory_instanceValue = Ref{Any}(nothing)
const MyRandomFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{MyRandomFactory})
    if !MyRandomFactory_instanceSet[]
        MyRandomFactory_instanceSet[] = true
        MyRandomFactory_instanceValue[] = newMyRandomFactory()
    end
    MyRandomFactory_instanceValue[]
end
function staticSet_instance(::Type{MyRandomFactory}, value)
    MyRandomFactory_instanceSet[] = true
    MyRandomFactory_instanceValue[] = value
end

function initFieldsMyRandomFactory(this::MyRandomFactory)
    this.mathUtil = nothing
    this.rand = nothing
    this.mathUtil = AllBinary.getInstance(MathUtil)
    
    nothing
end


function getInstance(::Type{MyRandomFactory})
        return staticGet_instance(MyRandomFactory)
end


function initMyRandomFactory(this::MyRandomFactory)
        initFieldsMyRandomFactory(this)
        this.rand = newRandom(jCurrentTimeMillis())
        nothing
end

function newMyRandomFactory()
    this = MyRandomFactory()
    initMyRandomFactory(this)
    this
end


function setSeed(this::MyRandomFactory, seed)
        this.rand = newRandom(seed)
        nothing
end


function getNextInt(this::MyRandomFactory, range)
        local div::Int32 = (staticGet_MAX_VALUE(Integer) ÷ range) + Int32(1)
        return (AllBinary.nextInt(this.rand) ÷ div)
end


function getAbsoluteNextInt(this::MyRandomFactory, range)
        return AllBinary.abs(this.mathUtil, AllBinary.getNextInt(this, range))
end


function getAbsoluteNextIntAllowZero(this::MyRandomFactory, range)
        if range == Int32(0)
            return Int32(0)
        else
            return AllBinary.abs(this.mathUtil, AllBinary.getNextInt(this, range))
        end
end


function shuffle(this::MyRandomFactory, intArray)
        AllBinary.shuffleTotal(this, intArray, Int32(Base.length(intArray)) * Int32(7))
        nothing
end


function shuffleTotal(this::MyRandomFactory, intArray, shuffleTotal)
        local size::Int32 = Int32(Base.length(intArray))
        local randomIndex::Int32 = Int32(0)
        local randomIndex2::Int32 = Int32(0)
        local value::Int32 = Int32(0)
        let
            local index::Int32 = Int32(0)
            while index < shuffleTotal
            try
            randomIndex = AllBinary.getAbsoluteNextIntAllowZero(this, size)
            randomIndex2 = AllBinary.getAbsoluteNextIntAllowZero(this, size)
            value = intArray[randomIndex + 1]
            intArray[randomIndex + 1] = intArray[randomIndex2 + 1]
            intArray[randomIndex2 + 1] = value
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function shuffle2(this::MyRandomFactory, intArray, intArray2)
        AllBinary.shuffle2Total(this, intArray, intArray2, Int32(Base.length(intArray)) * Int32(7))
        nothing
end


function shuffle2Total(this::MyRandomFactory, intArray, intArray2, shuffleTotal)
        local size::Int32 = Int32(Base.length(intArray))
        local randomIndex::Int32 = Int32(0)
        local randomIndex2::Int32 = Int32(0)
        local value::Int32 = Int32(0)
        local value2::Int32 = Int32(0)
        let
            local index::Int32 = Int32(0)
            while index < shuffleTotal
            try
            randomIndex = AllBinary.getAbsoluteNextIntAllowZero(this, size)
            randomIndex2 = AllBinary.getAbsoluteNextIntAllowZero(this, size)
            value = intArray[randomIndex + 1]
            value2 = intArray2[randomIndex + 1]
            intArray[randomIndex + 1] = intArray[randomIndex2 + 1]
            intArray[randomIndex2 + 1] = value
            intArray2[randomIndex + 1] = intArray2[randomIndex2 + 1]
            intArray2[randomIndex2 + 1] = value2
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function main(::Type{MyRandomFactory}, args)
        local randomFactory = AllBinary.getInstance(MyRandomFactory)
        local stringBuilder = newStringMaker()
        local commonSeps = AllBinary.getInstance(CommonSeps)
        local size2::Int32 = Int32(100)
        let
            local index::Int32 = Int32(0)
            while index < size2
            try
            AllBinary.append(AllBinary.appendint(stringBuilder, AllBinary.getAbsoluteNextInt(randomFactory, Int32(3))), commonSeps.COMMA)
            finally
                index += Int32(1)
            end
            end
        end
        Base.println(jstr(AllBinary.toString(stringBuilder)))
        AllBinary.delete(stringBuilder, Int32(0), AllBinary.length(stringBuilder))
        local intArray = jNewArray(Int32, Int32(52), Int32(0))
        local intArray2 = jNewArray(Int32, Int32(52), Int32(0))
        local size::Int32 = Int32(Base.length(intArray))
        let
            index = Int32(0)
            while index < size
            try
            intArray[index + 1] = index
            intArray2[index + 1] = index
            finally
                index += Int32(1)
            end
            end
        end
        AllBinary.shuffle2(randomFactory, intArray, intArray2)
        let
            index = Int32(0)
            while index < size
            try
            AllBinary.append(AllBinary.appendint(stringBuilder, intArray[index + 1]), commonSeps.COMMA)
            finally
                index += Int32(1)
            end
            end
        end
        Base.println(jstr(AllBinary.toString(stringBuilder)))
        AllBinary.delete(stringBuilder, Int32(0), AllBinary.length(stringBuilder))
        let
            index = Int32(0)
            while index < size
            try
            AllBinary.append(AllBinary.appendint(stringBuilder, intArray2[index + 1]), commonSeps.COMMA)
            finally
                index += Int32(1)
            end
            end
        end
        Base.println(jstr(AllBinary.toString(stringBuilder)))
        local found::Bool = false
        let
            index = Int32(0)
            while index < size
            try
            found = false
            let
                local index2::Int32 = Int32(0)
                while index2 < size
                try
                if intArray[index2 + 1] == index
                    found = true
                end
                finally
                    index2 += Int32(1)
                end
                end
            end
            if !found
                throw(jNewException("RuntimeException", ""))
            end
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

