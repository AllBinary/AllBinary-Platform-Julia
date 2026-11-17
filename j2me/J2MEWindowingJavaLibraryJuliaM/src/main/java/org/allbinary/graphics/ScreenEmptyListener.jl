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
# package org.allbinary.graphics

mutable struct ScreenEmptyListener <: JObject
    ScreenEmptyListener() = new()
end


function initFieldsScreenEmptyListener(this::ScreenEmptyListener)
    nothing
end

function initScreenEmptyListener(this::ScreenEmptyListener)
    initFieldsScreenEmptyListener(this)
end

function newScreenEmptyListener()
    this = ScreenEmptyListener()
    initScreenEmptyListener(this)
    this
end


function onFullScreen(this::ScreenEmptyListener, isFullScreen)
        nothing
        nothing
end


function onFullScreenDisplay(this::ScreenEmptyListener)
        nothing
        nothing
end

