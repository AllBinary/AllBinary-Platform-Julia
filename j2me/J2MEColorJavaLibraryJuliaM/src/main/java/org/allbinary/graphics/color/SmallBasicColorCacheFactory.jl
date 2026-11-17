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
# package org.allbinary.graphics.color

mutable struct SmallBasicColorCacheFactory <: JObject
    SIZE::Int32
    INDEX_TO_COLOR::Any
    BASIC_COLOR_ARRAY::Any
    colorIndex::Int32
    SmallBasicColorCacheFactory() = new()
end

const SmallBasicColorCacheFactory_instanceValue = Ref{Any}(nothing)
const SmallBasicColorCacheFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{SmallBasicColorCacheFactory})
    if !SmallBasicColorCacheFactory_instanceSet[]
        SmallBasicColorCacheFactory_instanceSet[] = true
        SmallBasicColorCacheFactory_instanceValue[] = newSmallBasicColorCacheFactory()
    end
    SmallBasicColorCacheFactory_instanceValue[]
end
function staticSet_instance(::Type{SmallBasicColorCacheFactory}, value)
    SmallBasicColorCacheFactory_instanceSet[] = true
    SmallBasicColorCacheFactory_instanceValue[] = value
end

function initFieldsSmallBasicColorCacheFactory(this::SmallBasicColorCacheFactory)
    this.SIZE = Int32(0)
    this.INDEX_TO_COLOR = nothing
    this.BASIC_COLOR_ARRAY = nothing
    this.colorIndex = Int32(0)
    this.SIZE = Int32(255)
    this.INDEX_TO_COLOR = jNewArray(Int32, this.SIZE, Int32(0))
    this.BASIC_COLOR_ARRAY = jNewArray(Any, this.SIZE, nothing)
    this.colorIndex = Int32(0)
    nothing
end


function getInstance(::Type{SmallBasicColorCacheFactory})
        return staticGet_instance(SmallBasicColorCacheFactory)
end


function initSmallBasicColorCacheFactory(this::SmallBasicColorCacheFactory)
        initFieldsSmallBasicColorCacheFactory(this)
        nothing
        nothing
end

function newSmallBasicColorCacheFactory()
    this = SmallBasicColorCacheFactory()
    initSmallBasicColorCacheFactory(this)
    this
end


function add(this::SmallBasicColorCacheFactory, basicDefaultColor)
        this.BASIC_COLOR_ARRAY[this.colorIndex + 1] = basicDefaultColor
        this.INDEX_TO_COLOR[this.colorIndex + 1] = AllBinary.intValue(basicDefaultColor)
        this.colorIndex += Int32(1)
        nothing
end


function getAndOrCreate(this::SmallBasicColorCacheFactory, colorAsInt)
        local basicColor = nothing
        let
            local index::Int32 = Int32(0)
            while index < this.SIZE
            try
            if this.INDEX_TO_COLOR[index + 1] == colorAsInt
                return this.BASIC_COLOR_ARRAY[index + 1]
            end
            finally
                index += Int32(1)
            end
            end
        end
        local ALPHA_MASK::Int32 = Int32(0xFF000000)
        basicColor = AllBinary.createInstanceAN(AllBinary.getInstance(BasicColorFactory), colorAsInt & ALPHA_MASK, colorAsInt & Int32(0x00FFFFFF), AllBinary.getInstance(StringUtil).EMPTY_STRING)
        AllBinary.add(this, basicColor)
        return basicColor
end

