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
# package org.allbinary.media

# extends AllBinaryVibrationME: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AllBinaryVisualDebugVibration <: JObject
    displayInfoSingleton::Any
    timeDelayHelper::Any
    VIBRATING::Any
    myFontProcessor::Any
    anchor::Int32
    width::Int32
    AllBinaryVisualDebugVibration() = new()
end


function initFieldsAllBinaryVisualDebugVibration(this::AllBinaryVisualDebugVibration)
    this.displayInfoSingleton = nothing
    this.timeDelayHelper = nothing
    this.VIBRATING = nothing
    this.myFontProcessor = nothing
    this.anchor = Int32(0)
    this.width = Int32(0)
    this.displayInfoSingleton = AllBinary.getInstance(DisplayInfoSingleton)
    this.timeDelayHelper = newTimeDelayHelper(staticGet_MAX_VALUE(Integer))
    this.VIBRATING = "Vibrating"
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    this.anchor = staticGet_TOP_LEFT(Anchor)
    this.width = Int32(0)
    nothing
end

function initAllBinaryVisualDebugVibration(this::AllBinaryVisualDebugVibration)
    initAllBinaryVibrationME(this)
    initFieldsAllBinaryVisualDebugVibration(this)
end

function newAllBinaryVisualDebugVibration()
    this = AllBinaryVisualDebugVibration()
    initAllBinaryVisualDebugVibration(this)
    this
end


function updateMeasurement(this::AllBinaryVisualDebugVibration, graphics)
        local font = AllBinary.getFont(graphics)
        this.width = AllBinary.stringWidth(font, this.VIBRATING)
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function vibrate(this::AllBinaryVisualDebugVibration, duration, type_, volume)
        this.timeDelayHelper.delay = duration
        nothing
end


function paint(this::AllBinaryVisualDebugVibration, graphics)
        if AllBinary.isTimeTNT(this.timeDelayHelper)
            this.timeDelayHelper.delay = staticGet_MAX_VALUE(Integer)
            AllBinary.process(this.myFontProcessor, graphics)
            AllBinary.drawString(graphics, this.VIBRATING, AllBinary.getLastHalfWidth(this.displayInfoSingleton) - (this.width >> Int32(1)), Int32(0), this.anchor)
        end
        nothing
end

