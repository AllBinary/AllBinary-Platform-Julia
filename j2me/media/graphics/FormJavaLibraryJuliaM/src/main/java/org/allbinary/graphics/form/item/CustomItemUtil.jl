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
# package org.allbinary.graphics.form.item

mutable struct CustomItemUtil <: JObject
    CUSTOM_ITEM_ARRAY::Any
    CustomItemUtil() = new()
end

const CustomItemUtil_instanceValue = Ref{Any}(nothing)
const CustomItemUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{CustomItemUtil})
    if !CustomItemUtil_instanceSet[]
        CustomItemUtil_instanceSet[] = true
        CustomItemUtil_instanceValue[] = newCustomItemUtil()
    end
    CustomItemUtil_instanceValue[]
end
function staticSet_instance(::Type{CustomItemUtil}, value)
    CustomItemUtil_instanceSet[] = true
    CustomItemUtil_instanceValue[] = value
end

function initFieldsCustomItemUtil(this::CustomItemUtil)
    this.CUSTOM_ITEM_ARRAY = nothing
    this.CUSTOM_ITEM_ARRAY = jNewArray(Any, Int32(0), nothing)
    nothing
end

function initCustomItemUtil(this::CustomItemUtil)
    initFieldsCustomItemUtil(this)
end

function newCustomItemUtil()
    this = CustomItemUtil()
    initCustomItemUtil(this)
    this
end


function getInstance(::Type{CustomItemUtil})
        return staticGet_instance(CustomItemUtil)
end

