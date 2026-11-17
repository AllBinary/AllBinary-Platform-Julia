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
# package org.allbinary.graphics.canvas.transition.progress

mutable struct ProgressCanvasFactory <: JObject
    ProgressCanvasFactory() = new()
end

const ProgressCanvasFactory_PROGRESS_FORM_SCREENValue = Ref{Any}(nothing)
const ProgressCanvasFactory_PROGRESS_FORM_SCREENSet = Ref(false)
function staticGet_PROGRESS_FORM_SCREEN(::Type{ProgressCanvasFactory})
    if !ProgressCanvasFactory_PROGRESS_FORM_SCREENSet[]
        ProgressCanvasFactory_PROGRESS_FORM_SCREENSet[] = true
        ProgressCanvasFactory_PROGRESS_FORM_SCREENValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    ProgressCanvasFactory_PROGRESS_FORM_SCREENValue[]
end
function staticSet_PROGRESS_FORM_SCREEN(::Type{ProgressCanvasFactory}, value)
    ProgressCanvasFactory_PROGRESS_FORM_SCREENSet[] = true
    ProgressCanvasFactory_PROGRESS_FORM_SCREENValue[] = value
end

function initFieldsProgressCanvasFactory(this::ProgressCanvasFactory)
    nothing
end

function initProgressCanvasFactory(this::ProgressCanvasFactory)
    initFieldsProgressCanvasFactory(this)
end

function newProgressCanvasFactory()
    this = ProgressCanvasFactory()
    initProgressCanvasFactory(this)
    this
end


function getInstance(::Type{ProgressCanvasFactory})
        if staticGet_PROGRESS_FORM_SCREEN(ProgressCanvasFactory) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_PROGRESS_FORM_SCREEN(ProgressCanvasFactory, newProgressCanvas(AllBinary.getInstance(StringUtil).EMPTY_STRING, AllBinary.getInstance(BasicColorFactory).BLACK, AllBinary.getInstance(BasicColorFactory).WHITE))
        end
        return (staticGet_PROGRESS_FORM_SCREEN(ProgressCanvasFactory))
end


function getLazyInstance(::Type{ProgressCanvasFactory})
        return AllBinary.getInstance(NullPaintable)
end

