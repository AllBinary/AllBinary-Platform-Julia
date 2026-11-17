#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.graphics.form

mutable struct ItemIndexPaintable <: JObject
    ItemIndexPaintable() = new()
end

const ItemIndexPaintable_instanceValue = Ref{Any}(nothing)
const ItemIndexPaintable_instanceSet = Ref(false)
function staticGet_instance(::Type{ItemIndexPaintable})
    if !ItemIndexPaintable_instanceSet[]
        ItemIndexPaintable_instanceSet[] = true
        ItemIndexPaintable_instanceValue[] = newItemIndexPaintable()
    end
    ItemIndexPaintable_instanceValue[]
end
function staticSet_instance(::Type{ItemIndexPaintable}, value)
    ItemIndexPaintable_instanceSet[] = true
    ItemIndexPaintable_instanceValue[] = value
end

function initFieldsItemIndexPaintable(this::ItemIndexPaintable)
    nothing
end

function initItemIndexPaintable(this::ItemIndexPaintable)
    initFieldsItemIndexPaintable(this)
end

function newItemIndexPaintable()
    this = ItemIndexPaintable()
    initItemIndexPaintable(this)
    this
end


function getInstance(::Type{ItemIndexPaintable})
        return staticGet_instance(ItemIndexPaintable)
end


function paint(this::ItemIndexPaintable, graphics, index, item, dx, dy)
        return Int32(0)
end

