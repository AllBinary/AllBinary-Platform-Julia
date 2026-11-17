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
# package org.allbinary.game

mutable struct Intermission <: JObject
    enabled::Bool
    timeElapsedHelper::Any
    intermissionEnableListener::Any
    Intermission() = new()
end


function initFieldsIntermission(this::Intermission)
    this.enabled = false
    this.timeElapsedHelper = nothing
    this.intermissionEnableListener = nothing
    this.enabled = false
    this.timeElapsedHelper = newTimeDelayHelper(Int32(0))
    this.intermissionEnableListener = AllBinary.getInstance(NullIntermissionEnableListener)
    nothing
end


function initIntermission(this::Intermission)
        initFieldsIntermission(this)
        nothing
        nothing
end

function newIntermission()
    this = Intermission()
    initIntermission(this)
    this
end


function setListener(this::Intermission, enableListener)
        this.intermissionEnableListener = enableListener
        nothing
end


function getTimeDelayHelper(this::Intermission)
        return this.timeElapsedHelper
end


function setEnabled(this::Intermission, enabled)
        this.enabled = enabled
        if AllBinary.isEnabled(this)
            AllBinary.setStartTimeTNT(AllBinary.getTimeDelayHelper(this))
        end
        AllBinary.notifyIntermission(this.intermissionEnableListener, enabled)
        nothing
end


function isEnabled(this::Intermission)
        return this.enabled
end

