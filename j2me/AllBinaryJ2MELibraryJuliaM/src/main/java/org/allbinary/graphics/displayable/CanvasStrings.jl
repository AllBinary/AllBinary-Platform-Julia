#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.graphics.displayable

mutable struct CanvasStrings <: JObject
    CONSTRUCTOR::Any
    PAUSE::Any
    UN_PAUSE::Any
    SET_FULL_SCREEN_MODE::Any
    SIZE_CHANGED::Any
    SCALED_IMAGES::Any
    PAINT::Any
    ON_DISPLAY_CHANGE_EVENT::Any
    UPDATE_MEASUREMENT::Any
    FD_WIDTH::Any
    FD_HEIGHT::Any
    EMPTY_CHILD_NAME_LIST::Any
    ABOUT::Any
    OPTIONS::Any
    FONT_ATLAS::Any
    OBJ_MODEL::Any
    MD2_MODEL::Any
    _PNG::Any
    CanvasStrings() = new()
end

const CanvasStrings_instanceValue = Ref{Any}(nothing)
const CanvasStrings_instanceSet = Ref(false)
function staticGet_instance(::Type{CanvasStrings})
    if !CanvasStrings_instanceSet[]
        CanvasStrings_instanceSet[] = true
        CanvasStrings_instanceValue[] = newCanvasStrings()
    end
    CanvasStrings_instanceValue[]
end
function staticSet_instance(::Type{CanvasStrings}, value)
    CanvasStrings_instanceSet[] = true
    CanvasStrings_instanceValue[] = value
end

function initFieldsCanvasStrings(this::CanvasStrings)
    this.CONSTRUCTOR = nothing
    this.PAUSE = nothing
    this.UN_PAUSE = nothing
    this.SET_FULL_SCREEN_MODE = nothing
    this.SIZE_CHANGED = nothing
    this.SCALED_IMAGES = nothing
    this.PAINT = nothing
    this.ON_DISPLAY_CHANGE_EVENT = nothing
    this.UPDATE_MEASUREMENT = nothing
    this.FD_WIDTH = nothing
    this.FD_HEIGHT = nothing
    this.EMPTY_CHILD_NAME_LIST = nothing
    this.ABOUT = nothing
    this.OPTIONS = nothing
    this.FONT_ATLAS = nothing
    this.OBJ_MODEL = nothing
    this.MD2_MODEL = nothing
    this._PNG = nothing
    this.CONSTRUCTOR = "MyCanvas::MyCanvas"
    this.PAUSE = "MyCanvas::pause"
    this.UN_PAUSE = "MyCanvas::unPause"
    this.SET_FULL_SCREEN_MODE = "setFullScreenMode"
    this.SIZE_CHANGED = "sizeChanged"
    this.SCALED_IMAGES = "scaledImages"
    this.PAINT = "paint"
    this.ON_DISPLAY_CHANGE_EVENT = "onDisplayChangeEvent"
    this.UPDATE_MEASUREMENT = "updateMeasurement"
    this.FD_WIDTH = " font/display width: "
    this.FD_HEIGHT = " font/display height: "
    this.EMPTY_CHILD_NAME_LIST = AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil))
    this.ABOUT = "About"
    this.OPTIONS = "Options"
    this.FONT_ATLAS = "/font.png"
    this.OBJ_MODEL = "_obj"
    this.MD2_MODEL = "_md2"
    this._PNG = ".png"
    nothing
end

function initCanvasStrings(this::CanvasStrings)
    initFieldsCanvasStrings(this)
end

function newCanvasStrings()
    this = CanvasStrings()
    initCanvasStrings(this)
    this
end


function getInstance(::Type{CanvasStrings})
        return staticGet_instance(CanvasStrings)
end

