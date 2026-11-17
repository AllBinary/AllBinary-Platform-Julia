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
# package org.allbinary.animation.transition

mutable struct RunAtEndAnimationListener <: JObject
    runnable::Any
    RunAtEndAnimationListener() = new()
end


function initFieldsRunAtEndAnimationListener(this::RunAtEndAnimationListener)
    this.runnable = nothing
    
    nothing
end


function initRunAtEndAnimationListener(this::RunAtEndAnimationListener, runnable)
        initFieldsRunAtEndAnimationListener(this)
        this.runnable = runnable
        nothing
end

function newRunAtEndAnimationListener(runnable)
    this = RunAtEndAnimationListener()
    initRunAtEndAnimationListener(this, runnable)
    this
end


function onPlatformAnimationStart(this::RunAtEndAnimationListener)
        nothing
        nothing
end


function onPlatformAnimationEnd(this::RunAtEndAnimationListener)
        nothing
        nothing
end


function onPlatformAnimationRepeat(this::RunAtEndAnimationListener)
        nothing
        nothing
end

