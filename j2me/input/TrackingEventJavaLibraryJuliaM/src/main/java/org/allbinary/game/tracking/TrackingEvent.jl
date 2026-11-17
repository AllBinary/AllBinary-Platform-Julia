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
# package org.allbinary.game.tracking

# extends AllBinaryEventObject: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TrackingEvent <: JObject
    layerInterface::Any
    TrackingEvent() = new()
end


function initFieldsTrackingEvent(this::TrackingEvent)
    this.layerInterface = nothing
    this.layerInterface = staticGet_NULL_ALLBINARY_LAYER(AllBinaryLayer)
    nothing
end


function initTrackingEvent(this::TrackingEvent, allBinaryLayerInterface)
        initAllBinaryEventObject(this, allBinaryLayerInterface)
        initFieldsTrackingEvent(this)
        if allBinaryLayerInterface !== AllBinary.getInstance(TrackingEventHandler)
            AllBinary.setLayerInterface(this, (allBinaryLayerInterface))
        end
        nothing
end

function newTrackingEvent(allBinaryLayerInterface)
    this = TrackingEvent()
    initTrackingEvent(this, allBinaryLayerInterface)
    this
end


function init(this::TrackingEvent, anyType)
        AllBinary.setSource(this, anyType)
        nothing
end


function getLayerInterface(this::TrackingEvent)
        return this.layerInterface
end


function setLayerInterface(this::TrackingEvent, layerInterface)
        this.layerInterface = layerInterface
        nothing
end


function setLayerInterfaceForCircularStaticPool(this::TrackingEvent, layerInterface)
        this.layerInterface = layerInterface
        nothing
end


function toString(this::TrackingEvent)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "TrackingEvent: \n")
        AllBinary.append(stringBuffer, "LayerInterface: ")
        AllBinary.append(stringBuffer, AllBinary.toString(this.layerInterface))
        return AllBinary.toString(stringBuffer)
end

