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
# package org.allbinary.math

# extends Angle: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NamedAngle <: JObject
    name::Any
    NamedAngle() = new()
end


function initFieldsNamedAngle(this::NamedAngle)
    this.name = nothing
    
    nothing
end


function initNamedAngle(this::NamedAngle, angle, name)
        initAngle(this, angle)
        initFieldsNamedAngle(this)
        this.name = name
        nothing
end

function newNamedAngle(angle, name)
    this = NamedAngle()
    initNamedAngle(this, angle, name)
    this
end

