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
# package org.allbinary.game.displayable.canvas

mutable struct DemoCanvasProgressUtil <: JObject
    DemoCanvasProgressUtil() = new()
end


function initFieldsDemoCanvasProgressUtil(this::DemoCanvasProgressUtil)
    nothing
end

function initDemoCanvasProgressUtil(this::DemoCanvasProgressUtil)
    initFieldsDemoCanvasProgressUtil(this)
end

function newDemoCanvasProgressUtil()
    this = DemoCanvasProgressUtil()
    initDemoCanvasProgressUtil(this)
    this
end


function showProgress(::Type{DemoCanvasProgressUtil}, demoCanvas)
        AllBinary.showProgressOptionallyInTheBackground(DemoCanvasProgressUtil, demoCanvas, false)
        nothing
end


function showProgressOptionallyInTheBackground(::Type{DemoCanvasProgressUtil}, demoCanvas, background)
        local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
        AllBinary.startBackground(progressCanvas, background)
        local paintableArray = jNewArray(Any, Int32(2), nothing)
        paintableArray[Int32(0) + 1] = progressCanvas
        paintableArray[Int32(1) + 1] = AllBinary.getDefaultPaintableInterface(demoCanvas)
        AllBinary.setDefaultPaintableInterface(demoCanvas, newPaintableComposite(paintableArray))
        AllBinary.setPaintableInterface(demoCanvas, AllBinary.getDefaultPaintableInterface(demoCanvas))
        nothing
end

