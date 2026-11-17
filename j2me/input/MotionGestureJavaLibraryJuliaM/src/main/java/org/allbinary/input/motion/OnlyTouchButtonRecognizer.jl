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

# extends MotionRecognizer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct OnlyTouchButtonRecognizer <: JObject
    touchButtonRecognizer::Any
    touchButtonProcessing::Bool
    OnlyTouchButtonRecognizer() = new()
end


function initFieldsOnlyTouchButtonRecognizer(this::OnlyTouchButtonRecognizer)
    this.touchButtonRecognizer = nothing
    this.touchButtonProcessing = false
    
    this.touchButtonProcessing = false
    nothing
end


function initOnlyTouchButtonRecognizer(this::OnlyTouchButtonRecognizer)
        initMotionRecognizer(this)
        initFieldsOnlyTouchButtonRecognizer(this)
        this.touchButtonRecognizer = newTouchButtonRecognizer()
        nothing
end

function newOnlyTouchButtonRecognizer()
    this = OnlyTouchButtonRecognizer()
    initOnlyTouchButtonRecognizer(this)
    this
end


function processStartMotionEvent(this::OnlyTouchButtonRecognizer, x, y, deviceId, modifiers)
        if AllBinary.pressTouchButtonInput(this.touchButtonRecognizer, x, y, deviceId)
            this.touchButtonProcessing = true
        end
        nothing
end


function processEndMotionEvent(this::OnlyTouchButtonRecognizer, x, y, deviceId, modifiers)
        if this.touchButtonProcessing
            this.touchButtonProcessing = false
        end
        if AllBinary.releaseTouchButtonInput(this.touchButtonRecognizer, x, y, deviceId)
            return
        end
        nothing
end


function processDraggedMotionEvent(this::OnlyTouchButtonRecognizer, x, y, deviceId, modifiers)
        if this.touchButtonProcessing
            AllBinary.pressTouchButtonInput(this.touchButtonRecognizer, x, y, deviceId)
        end
        nothing
end

