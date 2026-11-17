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

# extends AllBinaryEventObject: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct LayerManagerEvent <: JObject
    layerInterface::Any
    crud::Any
    LayerManagerEvent() = new()
end


function initFieldsLayerManagerEvent(this::LayerManagerEvent)
    this.layerInterface = nothing
    this.crud = nothing
    this.layerInterface = staticGet_NULL_ALLBINARY_LAYER(AllBinaryLayer)
    
    nothing
end


function initLayerManagerEvent(this::LayerManagerEvent, layerManager, crud)
        initAllBinaryEventObject(this, layerManager)
        initFieldsLayerManagerEvent(this)
        this.crud = crud
        nothing
end

function newLayerManagerEvent(layerManager, crud)
    this = LayerManagerEvent()
    initLayerManagerEvent(this, layerManager, crud)
    this
end


function getLayerInterface(this::LayerManagerEvent)
        return this.layerInterface
end


function setLayerInterface(this::LayerManagerEvent, layerInterface)
        this.layerInterface = layerInterface
        nothing
end


function toString(this::LayerManagerEvent)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "LayerManagerEvent: \n")
        AllBinary.append(stringBuffer, "LayerInterface: ")
        AllBinary.append(stringBuffer, AllBinary.toString(AllBinary.getLayerInterface(this)))
        AllBinary.append(stringBuffer, "\nCRUD: ")
        AllBinary.append(stringBuffer, this.crud)
        return AllBinary.toString(stringBuffer)
end

