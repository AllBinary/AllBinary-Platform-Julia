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

mutable struct ResizableEmptyListener <: JObject
    ResizableEmptyListener() = new()
end


function initFieldsResizableEmptyListener(this::ResizableEmptyListener)
    nothing
end

function initResizableEmptyListener(this::ResizableEmptyListener)
    initFieldsResizableEmptyListener(this)
end

function newResizableEmptyListener()
    this = ResizableEmptyListener()
    initResizableEmptyListener(this)
    this
end


function onResizable(this::ResizableEmptyListener, isResizable)
        nothing
        nothing
end

