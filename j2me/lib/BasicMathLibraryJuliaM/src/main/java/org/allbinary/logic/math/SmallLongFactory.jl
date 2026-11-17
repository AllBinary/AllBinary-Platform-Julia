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

mutable struct SmallLongFactory <: JObject
    NEGATIVE_MAX::Int32
    POSITIVE_MAX::Int32
    INTEGER_ARRAY::Any
    STRING_ARRAY::Any
    MIN::Int32
    lastMin::Int32
    lastNegativeMin::Int32
    SmallLongFactory() = new()
end

const SmallLongFactory_instanceValue = Ref{Any}(nothing)
const SmallLongFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{SmallLongFactory})
    if !SmallLongFactory_instanceSet[]
        SmallLongFactory_instanceSet[] = true
        SmallLongFactory_instanceValue[] = newSmallLongFactory()
    end
    SmallLongFactory_instanceValue[]
end
function staticSet_instance(::Type{SmallLongFactory}, value)
    SmallLongFactory_instanceSet[] = true
    SmallLongFactory_instanceValue[] = value
end

function initFieldsSmallLongFactory(this::SmallLongFactory)
    this.NEGATIVE_MAX = Int32(0)
    this.POSITIVE_MAX = Int32(0)
    this.INTEGER_ARRAY = nothing
    this.STRING_ARRAY = nothing
    this.MIN = Int32(0)
    this.lastMin = Int32(0)
    this.lastNegativeMin = Int32(0)
    this.NEGATIVE_MAX = Int32(500)
    this.POSITIVE_MAX = Int32(0x2D1)
    this.INTEGER_ARRAY = jNewArray(Int64, this.NEGATIVE_MAX + this.POSITIVE_MAX, nothing)
    this.STRING_ARRAY = jNewArray(Any, this.NEGATIVE_MAX + this.POSITIVE_MAX, nothing)
    this.MIN = Int32(0)
    this.lastMin = Int32(0)
    this.lastNegativeMin = Int32(0)
    nothing
end


function getInstance(::Type{SmallLongFactory})
        return staticGet_instance(SmallLongFactory)
end


function initWithRange(this::SmallLongFactory, value, negativeValue)
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


function init(this::SmallLongFactory)
        if this.INTEGER_ARRAY[Int32(0) + 1] === nothing
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
                this.lastNegativeMin = this.NEGATIVE_MAX
            end
        end
        nothing
end


function initSmallLongFactory(this::SmallLongFactory)
        initFieldsSmallLongFactory(this)
        nothing
        nothing
end

function newSmallLongFactory()
    this = SmallLongFactory()
    initSmallLongFactory(this)
    this
end


function getInstanceNoThrow(this::SmallLongFactory, index)
        if index + ((this.NEGATIVE_MAX) % Int64) > ((Int32(Base.length(this.INTEGER_ARRAY)) - Int32(1)) % Int64)
            return this.INTEGER_ARRAY[-Int32(1) + this.NEGATIVE_MAX + 1]
        end
        return this.INTEGER_ARRAY[(((index) % Int32)) + this.NEGATIVE_MAX + 1]
end


function getString(this::SmallLongFactory, index)
        local i::Int32 = index + this.NEGATIVE_MAX
        if this.STRING_ARRAY[i + 1] === nothing
            this.STRING_ARRAY[i + 1] = AllBinary.toString(this.INTEGER_ARRAY[i + 1])
        end
        return this.STRING_ARRAY[i + 1]
end

