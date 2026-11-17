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
# package org.allbinary.layer.event

mutable struct LayerManagerEventListener <: JObject
    LayerManagerEventListener() = new()
end


function initFieldsLayerManagerEventListener(this::LayerManagerEventListener)
    nothing
end

function initLayerManagerEventListener(this::LayerManagerEventListener)
    initFieldsLayerManagerEventListener(this)
end

function newLayerManagerEventListener()
    this = LayerManagerEventListener()
    initLayerManagerEventListener(this)
    this
end


function onEvent(this::LayerManagerEventListener, eventObject)
        nothing
        nothing
end


function onCreateLayerManagerEvent(this::LayerManagerEventListener, layerManagerEvent)
        nothing
        nothing
end


function onDeleteLayerManagerEvent(this::LayerManagerEventListener, layerManagerEvent)
        nothing
        nothing
end

