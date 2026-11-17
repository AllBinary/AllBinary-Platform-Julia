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
# package org.allbinary.logic.math

mutable struct SmallIntegerSingletonFactory <: JObject
    NEGATIVE_MAX::Int32
    POSITIVE_MAX::Int32
    INTEGER_ARRAY::Any
    STRING_ARRAY::Any
    MIN::Int32
    lastMin::Int32
    lastNegativeMin::Int32
    SmallIntegerSingletonFactory() = new()
end

const SmallIntegerSingletonFactory_instanceValue = Ref{Any}(nothing)
const SmallIntegerSingletonFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{SmallIntegerSingletonFactory})
    if !SmallIntegerSingletonFactory_instanceSet[]
        SmallIntegerSingletonFactory_instanceSet[] = true
        SmallIntegerSingletonFactory_instanceValue[] = newSmallIntegerSingletonFactory()
    end
    SmallIntegerSingletonFactory_instanceValue[]
end
function staticSet_instance(::Type{SmallIntegerSingletonFactory}, value)
    SmallIntegerSingletonFactory_instanceSet[] = true
    SmallIntegerSingletonFactory_instanceValue[] = value
end

function initFieldsSmallIntegerSingletonFactory(this::SmallIntegerSingletonFactory)
    this.NEGATIVE_MAX = Int32(0)
    this.POSITIVE_MAX = Int32(0)
    this.INTEGER_ARRAY = nothing
    this.STRING_ARRAY = nothing
    this.MIN = Int32(0)
    this.lastMin = Int32(0)
    this.lastNegativeMin = Int32(0)
    this.NEGATIVE_MAX = Int32(500)
    this.POSITIVE_MAX = Int32(0x2D1)
    this.INTEGER_ARRAY = jNewArray(Int32, this.NEGATIVE_MAX + this.POSITIVE_MAX, nothing)
    this.STRING_ARRAY = jNewArray(Any, this.NEGATIVE_MAX + this.POSITIVE_MAX, nothing)
    this.MIN = Int32(0)
    this.lastMin = Int32(0)
    this.lastNegativeMin = Int32(0)
    nothing
end


function getInstance(::Type{SmallIntegerSingletonFactory})
        return staticGet_instance(SmallIntegerSingletonFactory)
end


function getMin(this::SmallIntegerSingletonFactory)
        local minAllowed::Int32 = AllBinary.getMinAllowed(this)
        if this.MIN <= minAllowed
            if AllBinary.isJ2ME(J2MEUtil)
                nothing
            elseif AllBinary.isAndroid(AndroidUtil)
                logUtil = AllBinary.getInstance(LogUtil)
                AllBinary.putF(logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), "Android InputFactory was initialized before GameMidlet: "), this.MIN)), this, "getMin")
                AllBinary.initWithRange(this, Int32(0x291), Int32(6))
            else
                local logUtil = AllBinary.getInstance(LogUtil)
                AllBinary.putF(logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), "InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: "), this.MIN)), this, "getMin")
                AllBinary.initWithRange(this, Int32(0x2D0), Int32(6))
            end
        end
        if this.MIN <= minAllowed
            logUtil = AllBinary.getInstance(LogUtil)
            AllBinary.put(logUtil, "This means you loaded the InputFactory before determining the platform input size requirements.", this, "getMin", jNewException("Exception", ""))
        end
        return this.MIN
end


function getMinAllowed(this::SmallIntegerSingletonFactory)
        if AllBinary.isJ2ME(J2MEUtil)
            return Int32(0)
        else
            if AllBinary.isAndroid(AndroidUtil)
                return Int32(0x101)
            else
                return Int32(23)
            end
        end
end


function initWithRange(this::SmallIntegerSingletonFactory, value, negativeValue)
        let
            local index::Int32 = value - Int32(1)
            while index >= this.lastMin
            try
            this.INTEGER_ARRAY[index + this.NEGATIVE_MAX + 1] = index
            finally
                index -= Int32(1)
            end
            end
        end
        let
            index = negativeValue - Int32(1)
            while index >= this.lastNegativeMin
            try
            this.INTEGER_ARRAY[index + 1] = -index
            finally
                index -= Int32(1)
            end
            end
        end
        if this.lastMin < value
            this.lastMin = value
            this.MIN = value
        end
        if this.lastNegativeMin < negativeValue
            this.lastNegativeMin = negativeValue
        end
        nothing
end


function init(this::SmallIntegerSingletonFactory)
        if this.lastMin < this.POSITIVE_MAX || this.lastNegativeMin < this.NEGATIVE_MAX
            let
                local index::Int32 = this.POSITIVE_MAX - Int32(1)
                while index >= this.lastMin
                try
                this.INTEGER_ARRAY[index + this.NEGATIVE_MAX + 1] = index
                finally
                    index -= Int32(1)
                end
                end
            end
            let
                index = this.NEGATIVE_MAX - Int32(1)
                while index >= this.lastNegativeMin
                try
                this.INTEGER_ARRAY[index + 1] = -index
                finally
                    index -= Int32(1)
                end
                end
            end
            this.lastMin = this.POSITIVE_MAX
            this.MIN = this.lastMin
            this.lastNegativeMin = this.NEGATIVE_MAX
        end
        nothing
end


function initSmallIntegerSingletonFactory(this::SmallIntegerSingletonFactory)
        initFieldsSmallIntegerSingletonFactory(this)
        AllBinary.initWithRange(this, Int32(23), Int32(0))
        nothing
end

function newSmallIntegerSingletonFactory()
    this = SmallIntegerSingletonFactory()
    initSmallIntegerSingletonFactory(this)
    this
end


function getAt(this::SmallIntegerSingletonFactory, index)
        return this.INTEGER_ARRAY[index + this.NEGATIVE_MAX + 1]
end


function getAtNoThrow(this::SmallIntegerSingletonFactory, index)
        if index + this.NEGATIVE_MAX > Int32(Base.length(this.INTEGER_ARRAY)) - Int32(1)
            return this.INTEGER_ARRAY[-Int32(1) + this.NEGATIVE_MAX + 1]
        end
        return this.INTEGER_ARRAY[index + this.NEGATIVE_MAX + 1]
end


function createInstance(this::SmallIntegerSingletonFactory, index)
        local integer = AllBinary.getAt(this, index)
        if integer === nothing
            integer = index
        end
        return integer
end


function getString(this::SmallIntegerSingletonFactory, index)
        local i::Int32 = index + this.NEGATIVE_MAX
        if this.STRING_ARRAY[i + 1] === nothing
            this.STRING_ARRAY[i + 1] = AllBinary.toString(this.INTEGER_ARRAY[i + 1])
        end
        return this.STRING_ARRAY[i + 1]
end

