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
# package org.allbinary.game.combat.destroy.event

# extends AllBinaryEventObject: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DestroyedEvent <: JObject
    allBinaryGameCanvas::Any
    allBinaryLayerInterface::Any
    DestroyedEvent() = new()
end


function initFieldsDestroyedEvent(this::DestroyedEvent)
    this.allBinaryGameCanvas = nothing
    this.allBinaryLayerInterface = nothing
    this.allBinaryGameCanvas = AllBinary.getInstance(NullGameCanvas)
    this.allBinaryLayerInterface = staticGet_NULL_ALLBINARY_LAYER(AllBinaryLayer)
    nothing
end


function initDestroyedEvent(this::DestroyedEvent, combatGameCanvas)
        initAllBinaryEventObject(this, AllBinary.getInstance(DestroyedEventHandler))
        initFieldsDestroyedEvent(this)
        AllBinary.setAllBinaryGameCanvas(this, combatGameCanvas)
        nothing
end

function newDestroyedEvent(combatGameCanvas)
    this = DestroyedEvent()
    initDestroyedEvent(this, combatGameCanvas)
    this
end


function getAllBinaryGameCanvas(this::DestroyedEvent)
        return this.allBinaryGameCanvas
end


function getLayerInterface(this::DestroyedEvent)
        return this.allBinaryLayerInterface
end


function setAllBinaryGameCanvas(this::DestroyedEvent, allBinaryGameCanvas)
        this.allBinaryGameCanvas = allBinaryGameCanvas
        nothing
end


function setLayerInterfaceForCircularStaticPool(this::DestroyedEvent, allBinaryLayerInterface)
        this.allBinaryLayerInterface = allBinaryLayerInterface
        nothing
end


function toString(this::DestroyedEvent)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "DestroyedEvent: \n")
        AllBinary.append(stringBuffer, "AllBinaryLayerInterface: ")
        AllBinary.append(stringBuffer, AllBinary.toString(this.allBinaryLayerInterface))
        AllBinary.append(stringBuffer, "\nAllBinaryGameCanvas: ")
        AllBinary.append(stringBuffer, AllBinary.toString(AllBinary.getInstance(StringUtil), AllBinary.getAllBinaryGameCanvas(this)))
        return AllBinary.toString(stringBuffer)
end

