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
# package org.allbinary.input.motion.gesture

mutable struct MotionGestureToMotionGestureActionAssociation <: JObject
    list::Any
    motionGestureAction::Any
    MotionGestureToMotionGestureActionAssociation() = new()
end


function initFieldsMotionGestureToMotionGestureActionAssociation(this::MotionGestureToMotionGestureActionAssociation)
    this.list = nothing
    this.motionGestureAction = nothing
    
    
    nothing
end


function initMotionGestureToMotionGestureActionAssociation(this::MotionGestureToMotionGestureActionAssociation, list, commandAction)
        initFieldsMotionGestureToMotionGestureActionAssociation(this)
        this.list = list
        this.motionGestureAction = commandAction
        nothing
end

function newMotionGestureToMotionGestureActionAssociation(list, commandAction)
    this = MotionGestureToMotionGestureActionAssociation()
    initMotionGestureToMotionGestureActionAssociation(this, list, commandAction)
    this
end


function getMotionGesture(this::MotionGestureToMotionGestureActionAssociation)
        return this.list
end


function setMotionGestures(this::MotionGestureToMotionGestureActionAssociation, list)
        this.list = list
        nothing
end


function getCommandAction(this::MotionGestureToMotionGestureActionAssociation)
        return this.motionGestureAction
end


function setMotionGestureAction(this::MotionGestureToMotionGestureActionAssociation, commandAction)
        this.motionGestureAction = commandAction
        nothing
end


function isMotionGestureArrayEquals(this::MotionGestureToMotionGestureActionAssociation, aList)
        local size::Int32 = AllBinary.size(aList)
        if AllBinary.size(this.list) != size
            return false
        end
        let
            local i::Int32 = size - Int32(1)
            while i >= Int32(0)
            try
            if aList.objectArray[i + 1] != this.list.objectArray[i + 1]
                return false
            end
            finally
                i -= Int32(1)
            end
            end
        end
        return true
end

