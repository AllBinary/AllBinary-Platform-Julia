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

# extends Input: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct MotionGestureInput <: JObject
    MotionGestureInput() = new()
end


function initFieldsMotionGestureInput(this::MotionGestureInput)
    nothing
end


function initMotionGestureInput(this::MotionGestureInput, id, name)
        initInput(this, id, name)
        local inputFactory = AllBinary.getInstance(InputFactory)
        AllBinary.add(inputFactory, AllBinary.getId(this), this)
        nothing
end

function newMotionGestureInput(id, name)
    this = MotionGestureInput()
    initMotionGestureInput(this, id, name)
    this
end

