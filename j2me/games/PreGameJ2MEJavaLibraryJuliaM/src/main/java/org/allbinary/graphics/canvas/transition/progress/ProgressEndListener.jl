#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.graphics.canvas.transition.progress

mutable struct ProgressEndListener <: JObject
    ProgressEndListener() = new()
end

const ProgressEndListener_instanceValue = Ref{Any}(nothing)
const ProgressEndListener_instanceSet = Ref(false)
function staticGet_instance(::Type{ProgressEndListener})
    if !ProgressEndListener_instanceSet[]
        ProgressEndListener_instanceSet[] = true
        ProgressEndListener_instanceValue[] = newProgressEndListener()
    end
    ProgressEndListener_instanceValue[]
end
function staticSet_instance(::Type{ProgressEndListener}, value)
    ProgressEndListener_instanceSet[] = true
    ProgressEndListener_instanceValue[] = value
end

function initFieldsProgressEndListener(this::ProgressEndListener)
    nothing
end

function initProgressEndListener(this::ProgressEndListener)
    initFieldsProgressEndListener(this)
end

function newProgressEndListener()
    this = ProgressEndListener()
    initProgressEndListener(this)
    this
end


function onEndEvent(this::ProgressEndListener)
        nothing
        nothing
end

