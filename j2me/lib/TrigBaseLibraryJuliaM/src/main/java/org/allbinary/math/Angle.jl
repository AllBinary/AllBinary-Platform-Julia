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
# package org.allbinary.math

mutable struct Angle <: JObject
    value::Int16
    Angle() = new()
end


function initFieldsAngle(this::Angle)
    this.value = Int16(0)
    
    nothing
end


function initAngle(this::Angle, angle)
        initFieldsAngle(this)
        this.value = angle
        nothing
end

function newAngle(angle)
    this = Angle()
    initAngle(this, angle)
    this
end


function getValue(this::Angle)
        return this.value
end

