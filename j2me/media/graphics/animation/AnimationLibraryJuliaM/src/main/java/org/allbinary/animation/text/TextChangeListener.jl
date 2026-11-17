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
# package org.allbinary.animation.text

mutable struct TextChangeListener <: JObject
    TextChangeListener() = new()
end

const TextChangeListener_instanceValue = Ref{Any}(nothing)
const TextChangeListener_instanceSet = Ref(false)
function staticGet_instance(::Type{TextChangeListener})
    if !TextChangeListener_instanceSet[]
        TextChangeListener_instanceSet[] = true
        TextChangeListener_instanceValue[] = newTextChangeListener()
    end
    TextChangeListener_instanceValue[]
end
function staticSet_instance(::Type{TextChangeListener}, value)
    TextChangeListener_instanceSet[] = true
    TextChangeListener_instanceValue[] = value
end

function initFieldsTextChangeListener(this::TextChangeListener)
    nothing
end

function initTextChangeListener(this::TextChangeListener)
    initFieldsTextChangeListener(this)
end

function newTextChangeListener()
    this = TextChangeListener()
    initTextChangeListener(this)
    this
end


function getInstance(::Type{TextChangeListener})
        return staticGet_instance(TextChangeListener)
end


function onMeasure(this::TextChangeListener)
        nothing
        nothing
end

