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
# package org.allbinary.game.ag.layer.hud.basic

# extends Processor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NextUnremoveableProcessor <: JObject
    updateMeasurementProcessor::Any
    NextUnremoveableProcessor() = new()
end


function initFieldsNextUnremoveableProcessor(this::NextUnremoveableProcessor)
    this.updateMeasurementProcessor = nothing
    
    nothing
end


function initNextUnremoveableProcessor(this::NextUnremoveableProcessor, updateMeasurementProcessor)
        initProcessor(this)
        initFieldsNextUnremoveableProcessor(this)
        this.updateMeasurementProcessor = updateMeasurementProcessor
        nothing
end

function newNextUnremoveableProcessor(updateMeasurementProcessor)
    this = NextUnremoveableProcessor()
    initNextUnremoveableProcessor(this, updateMeasurementProcessor)
    this
end


function process(this::NextUnremoveableProcessor)
        AllBinary.setNextUnremoveableProcess(this.updateMeasurementProcessor)
        nothing
end

