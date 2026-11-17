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
# package org.allbinary.game.layer

# extends AllBinaryLayer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AllBinaryGameLayer <: JObject
    commonStrings::Any
    basicSetColorUtil::Any
    RED::Any
    paintable::Any
    gameKeyEventList::Any
    AllBinaryGameLayer() = new()
end


function initFieldsAllBinaryGameLayer(this::AllBinaryGameLayer)
    this.commonStrings = nothing
    this.basicSetColorUtil = nothing
    this.RED = nothing
    this.paintable = nothing
    this.gameKeyEventList = nothing
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.basicSetColorUtil = AllBinary.getInstance(BasicColorSetUtil)
    this.RED = AllBinary.getInstance(BasicColorFactory).RED
    this.paintable = AllBinary.createPaintable(AllBinaryGameLayer)
    this.gameKeyEventList = newBasicArrayListD()
    nothing
end


function createPaintable(::Type{AllBinaryGameLayer})
        if staticGet_isSWT(SWTUtil)
            return newSWTBlackPaintable()
        end
        return AllBinary.getInstance(NullPaintable)
end


function initAllBinaryGameLayer(this::AllBinaryGameLayer, name, layerInfo, viewPosition)
        initAllBinaryLayer(this, name, layerInfo, viewPosition)
        initFieldsAllBinaryGameLayer(this)
        nothing
end

function newAllBinaryGameLayer(name, layerInfo, viewPosition)
    this = AllBinaryGameLayer()
    initAllBinaryGameLayer(this, name, layerInfo, viewPosition)
    this
end


function set(this::AllBinaryGameLayer, gl)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
        nothing
end


function move(this::AllBinaryGameLayer)
        nothing
        nothing
end


function getGameKeyEventList(this::AllBinaryGameLayer)
        return this.gameKeyEventList
end


function processInput(this::AllBinaryGameLayer, allBinaryLayerManager)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
        nothing
end


function processTick(this::AllBinaryGameLayer, allBinaryLayerManager)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
        nothing
end


function onEvent(this::AllBinaryGameLayer, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function onViewPositionChangeEvent(this::AllBinaryGameLayer)
        AllBinary.onChangeEvent(this, this.viewPositionEvent)
        nothing
end


function onChangeEvent(this::AllBinaryGameLayer, layerManagerEvent)
        if AllBinary.isOnScreen(GameLayerUtil, this)
            AllBinary.setVisible(this, true)
        else
            AllBinary.setVisible(this, false)
        end
        nothing
end


function paintFirst(this::AllBinaryGameLayer, graphics)
        AllBinary.paint(this.paintable, graphics)
        nothing
end


function paintDebug(this::AllBinaryGameLayer, graphics)
        local viewPosition = AllBinary.getViewPosition(this)
        local viewX::Int32 = AllBinary.getX(viewPosition)
        local viewY::Int32 = AllBinary.getY(viewPosition)
        AllBinary.setBasicColorP(this.basicSetColorUtil, graphics, this.RED)
        AllBinary.drawRect(graphics, viewX, viewY, AllBinary.getWidth(this), AllBinary.getHeight(this))
        nothing
end


function setWidth(this::AllBinaryGameLayer, width)
        AllBinary.setLayerWidth(this, width)
        AllBinary.setHalfWidth(this, width >> Int32(1))
        nothing
end


function setHeight(this::AllBinaryGameLayer, height)
        AllBinary.setLayerHeight(this, height)
        AllBinary.setHalfHeight(this, height >> Int32(1))
        nothing
end

