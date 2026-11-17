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

mutable struct ItemIndexDx <: JObject
    ItemIndexDx() = new()
end

const ItemIndexDx_instanceValue = Ref{Any}(nothing)
const ItemIndexDx_instanceSet = Ref(false)
function staticGet_instance(::Type{ItemIndexDx})
    if !ItemIndexDx_instanceSet[]
        ItemIndexDx_instanceSet[] = true
        ItemIndexDx_instanceValue[] = newItemIndexDx()
    end
    ItemIndexDx_instanceValue[]
end
function staticSet_instance(::Type{ItemIndexDx}, value)
    ItemIndexDx_instanceSet[] = true
    ItemIndexDx_instanceValue[] = value
end

function initFieldsItemIndexDx(this::ItemIndexDx)
    nothing
end

function initItemIndexDx(this::ItemIndexDx)
    initFieldsItemIndexDx(this)
end

function newItemIndexDx()
    this = ItemIndexDx()
    initItemIndexDx(this)
    this
end


function getInstance(::Type{ItemIndexDx})
        return staticGet_instance(ItemIndexDx)
end


function getDx(this::ItemIndexDx, index, item, dx, dy)
        return Int32(0)
end

