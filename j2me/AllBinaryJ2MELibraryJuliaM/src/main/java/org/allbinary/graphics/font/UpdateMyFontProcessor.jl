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
# package org.allbinary.graphics.font

# extends MyFontProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct UpdateMyFontProcessor <: JObject
    updateMeasurementProcessor::Any
    UpdateMyFontProcessor() = new()
end


function initFieldsUpdateMyFontProcessor(this::UpdateMyFontProcessor)
    this.updateMeasurementProcessor = nothing
    
    nothing
end


function initUpdateMyFontProcessor(this::UpdateMyFontProcessor, keyValueDrawCharArray)
        initMyFontProcessor(this)
        initFieldsUpdateMyFontProcessor(this)
        this.updateMeasurementProcessor = keyValueDrawCharArray
        nothing
end

function newUpdateMyFontProcessor(keyValueDrawCharArray)
    this = UpdateMyFontProcessor()
    initUpdateMyFontProcessor(this, keyValueDrawCharArray)
    this
end


function process(this::UpdateMyFontProcessor, graphics)
        AllBinary.updateMeasurement(this.updateMeasurementProcessor, graphics)
        nothing
end

