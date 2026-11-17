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
# package org.allbinary.input.motion.button

mutable struct TouchScreenType <: JObject
    name::Any
    TouchScreenType() = new()
end


function initFieldsTouchScreenType(this::TouchScreenType)
    this.name = nothing
    
    nothing
end


function initTouchScreenType(this::TouchScreenType, name)
        initFieldsTouchScreenType(this)
        this.name = name
        nothing
end

function newTouchScreenType(name)
    this = TouchScreenType()
    initTouchScreenType(this, name)
    this
end


function getName(this::TouchScreenType)
        return this.name
end


function toString(this::TouchScreenType)
        return AllBinary.getName(this)
end

