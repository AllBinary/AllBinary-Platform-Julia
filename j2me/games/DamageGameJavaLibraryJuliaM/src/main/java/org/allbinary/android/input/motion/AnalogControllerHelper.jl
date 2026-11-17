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
# package org.allbinary.android.input.motion

mutable struct AnalogControllerHelper <: JObject
    reduceTimeFactor::Int32
    SCALE_VALUE::Int32
    rightTimeElapsedHelper::Any
    leftTimeElapsedHelper::Any
    downTimeElapsedHelper::Any
    upTimeElapsedHelper::Any
    AnalogControllerHelper() = new()
end


function initFieldsAnalogControllerHelper(this::AnalogControllerHelper)
    this.reduceTimeFactor = Int32(0)
    this.SCALE_VALUE = Int32(0)
    this.rightTimeElapsedHelper = nothing
    this.leftTimeElapsedHelper = nothing
    this.downTimeElapsedHelper = nothing
    this.upTimeElapsedHelper = nothing
    
    this.SCALE_VALUE = AllBinary.getInstance(AnalogControllerConfigurationFactory).SCALE_VALUE
    this.rightTimeElapsedHelper = newTimeDelayHelper(Int32(0))
    this.leftTimeElapsedHelper = newTimeDelayHelper(Int32(0))
    this.downTimeElapsedHelper = newTimeDelayHelper(Int32(0))
    this.upTimeElapsedHelper = newTimeDelayHelper(Int32(0))
    nothing
end


function initAnalogControllerHelper(this::AnalogControllerHelper, reduceTimeFactor)
        initFieldsAnalogControllerHelper(this)
        this.reduceTimeFactor = reduceTimeFactor
        nothing
end

function newAnalogControllerHelper(reduceTimeFactor)
    this = AnalogControllerHelper()
    initAnalogControllerHelper(this, reduceTimeFactor)
    this
end


function right(this::AnalogControllerHelper, collidableDestroyableDamageableLayer, xAnalogValue)
        this.rightTimeElapsedHelper.delay = ((this.SCALE_VALUE - xAnalogValue) >> this.reduceTimeFactor)
        if AllBinary.isTimeTNT(this.rightTimeElapsedHelper)
            AllBinary.right(collidableDestroyableDamageableLayer)
        end
        nothing
end


function left(this::AnalogControllerHelper, collidableDestroyableDamageableLayer, xAnalogValue)
        this.leftTimeElapsedHelper.delay = ((this.SCALE_VALUE + xAnalogValue) >> this.reduceTimeFactor)
        if AllBinary.isTimeTNT(this.leftTimeElapsedHelper)
            AllBinary.left(collidableDestroyableDamageableLayer)
        end
        nothing
end


function up(this::AnalogControllerHelper, collidableDestroyableDamageableLayer, xAnalogValue)
        this.upTimeElapsedHelper.delay = ((this.SCALE_VALUE - xAnalogValue) >> this.reduceTimeFactor)
        if AllBinary.isTimeTNT(this.upTimeElapsedHelper)
            AllBinary.up(collidableDestroyableDamageableLayer)
        end
        nothing
end


function down(this::AnalogControllerHelper, collidableDestroyableDamageableLayer, xAnalogValue)
        this.downTimeElapsedHelper.delay = ((this.SCALE_VALUE + xAnalogValue) >> this.reduceTimeFactor)
        if AllBinary.isTimeTNT(this.downTimeElapsedHelper)
            AllBinary.down(collidableDestroyableDamageableLayer)
        end
        nothing
end

