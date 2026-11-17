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
# package org.allbinary.bounds

mutable struct LayerBounds <: JObject
    logUtil::Any
    rectangle::Any
    LayerBounds() = new()
end


function initFieldsLayerBounds(this::LayerBounds)
    this.logUtil = nothing
    this.rectangle = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    nothing
end


function initLayerBounds(this::LayerBounds, rectangle)
        initFieldsLayerBounds(this)
        this.rectangle = rectangle
        nothing
end

function newLayerBounds(rectangle)
    this = LayerBounds()
    initLayerBounds(this, rectangle)
    this
end


function getRectangleP(this::LayerBounds)
        return this.rectangle
end


function visit(this::LayerBounds, boundsVisitorInterface)
        nothing
        nothing
end


function onEvent(this::LayerBounds, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function onBoundsChangeEvent(this::LayerBounds, boundsChangeEvent)
        this.rectangle = AllBinary.getRectangle(boundsChangeEvent)
        nothing
end

