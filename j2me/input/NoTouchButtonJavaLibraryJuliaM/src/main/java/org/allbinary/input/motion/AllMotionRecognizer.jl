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
# package org.allbinary.input.motion

mutable struct AllMotionRecognizer <: JObject
    id::Int32
    AllMotionRecognizer() = new()
end

const AllMotionRecognizer_indexValue = Ref{Any}(nothing)
const AllMotionRecognizer_indexSet = Ref(false)
function staticGet_index(::Type{AllMotionRecognizer})
    if !AllMotionRecognizer_indexSet[]
        AllMotionRecognizer_indexSet[] = true
        AllMotionRecognizer_indexValue[] = Int32(0)
    end
    AllMotionRecognizer_indexValue[]
end
function staticSet_index(::Type{AllMotionRecognizer}, value)
    AllMotionRecognizer_indexSet[] = true
    AllMotionRecognizer_indexValue[] = value
end

function initFieldsAllMotionRecognizer(this::AllMotionRecognizer)
    this.id = Int32(0)
    
    nothing
end


function initAllMotionRecognizer(this::AllMotionRecognizer)
        initFieldsAllMotionRecognizer(this)
        this.id = (let old = staticGet_index(AllMotionRecognizer); staticSet_index(AllMotionRecognizer, old + Int32(1)); old end)
        nothing
end

function newAllMotionRecognizer()
    this = AllMotionRecognizer()
    initAllMotionRecognizer(this)
    this
end


function processStartMotionEvent(this::AllMotionRecognizer, x, y, deviceId, modifiers)
        nothing
        nothing
end


function processEndMotionEvent(this::AllMotionRecognizer, x, y, deviceId, modifiers)
        nothing
        nothing
end


function processDraggedMotionEvent(this::AllMotionRecognizer, x, y, deviceId, modifiers)
        nothing
        nothing
end


function processMovedMotionEvent(this::AllMotionRecognizer, x, y, deviceId, modifiers)
        nothing
        nothing
end


function processScrolledMotionEvent(this::AllMotionRecognizer, x, y, deviceId, modifiers)
        nothing
        nothing
end


function getId(this::AllMotionRecognizer)
        return this.id
end

