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
# package org.allbinary.android.input.motion.event

# extends AllBinaryEventObject: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AnalogControllerConfigurationEvent <: JObject
    AnalogControllerConfigurationEvent() = new()
end


function initFieldsAnalogControllerConfigurationEvent(this::AnalogControllerConfigurationEvent)
    nothing
end


function initAnalogControllerConfigurationEvent(this::AnalogControllerConfigurationEvent, anyType)
        initAllBinaryEventObject(this, anyType)
        nothing
end

function newAnalogControllerConfigurationEvent(anyType)
    this = AnalogControllerConfigurationEvent()
    initAnalogControllerConfigurationEvent(this, anyType)
    this
end

