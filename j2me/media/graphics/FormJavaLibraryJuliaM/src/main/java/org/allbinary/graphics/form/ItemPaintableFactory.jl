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
# package org.allbinary.graphics.form

# extends ItemPaintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ItemPaintableFactory <: JObject
    ItemPaintableFactory() = new()
end

const ItemPaintableFactory_instanceValue = Ref{Any}(nothing)
const ItemPaintableFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{ItemPaintableFactory})
    if !ItemPaintableFactory_instanceSet[]
        ItemPaintableFactory_instanceSet[] = true
        ItemPaintableFactory_instanceValue[] = newItemPaintableFactory()
    end
    ItemPaintableFactory_instanceValue[]
end
function staticSet_instance(::Type{ItemPaintableFactory}, value)
    ItemPaintableFactory_instanceSet[] = true
    ItemPaintableFactory_instanceValue[] = value
end

function initFieldsItemPaintableFactory(this::ItemPaintableFactory)
    nothing
end

function initItemPaintableFactory(this::ItemPaintableFactory)
    initItemPaintable(this)
    initFieldsItemPaintableFactory(this)
end

function newItemPaintableFactory()
    this = ItemPaintableFactory()
    initItemPaintableFactory(this)
    this
end


function getInstance(::Type{ItemPaintableFactory})
        return staticGet_instance(ItemPaintableFactory)
end


function getInstanceItemPaintable(this::ItemPaintableFactory, paintableForm)
        return staticGet_instance(ItemPaintableFactory)
end

