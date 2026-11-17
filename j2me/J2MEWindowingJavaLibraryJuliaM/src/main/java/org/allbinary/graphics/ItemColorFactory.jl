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
# package org.allbinary.graphics

mutable struct ItemColorFactory <: JObject
    INVERT_PAINT::Int32
    PAINT::Int32
    TEXT_FIELD_NO_FOCUS::Int32
    ItemColorFactory() = new()
end

const ItemColorFactory_instanceValue = Ref{Any}(nothing)
const ItemColorFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{ItemColorFactory})
    if !ItemColorFactory_instanceSet[]
        ItemColorFactory_instanceSet[] = true
        ItemColorFactory_instanceValue[] = newItemColorFactory()
    end
    ItemColorFactory_instanceValue[]
end
function staticSet_instance(::Type{ItemColorFactory}, value)
    ItemColorFactory_instanceSet[] = true
    ItemColorFactory_instanceValue[] = value
end

function initFieldsItemColorFactory(this::ItemColorFactory)
    this.INVERT_PAINT = Int32(0)
    this.PAINT = Int32(0)
    this.TEXT_FIELD_NO_FOCUS = Int32(0)
    this.INVERT_PAINT = Int32(0xFF000000)
    this.PAINT = Int32(0xFFe07718)
    this.TEXT_FIELD_NO_FOCUS = Int32(0x7F7F7F)
    nothing
end

function initItemColorFactory(this::ItemColorFactory)
    initFieldsItemColorFactory(this)
end

function newItemColorFactory()
    this = ItemColorFactory()
    initItemColorFactory(this)
    this
end


function getInstance(::Type{ItemColorFactory})
        return staticGet_instance(ItemColorFactory)
end

