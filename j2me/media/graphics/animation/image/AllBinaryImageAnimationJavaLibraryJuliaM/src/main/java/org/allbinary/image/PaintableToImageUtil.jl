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
# package org.allbinary.image

mutable struct PaintableToImageUtil <: JObject
    PaintableToImageUtil() = new()
end

const PaintableToImageUtil_instanceValue = Ref{Any}(nothing)
const PaintableToImageUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{PaintableToImageUtil})
    if !PaintableToImageUtil_instanceSet[]
        PaintableToImageUtil_instanceSet[] = true
        PaintableToImageUtil_instanceValue[] = newPaintableToImageUtil()
    end
    PaintableToImageUtil_instanceValue[]
end
function staticSet_instance(::Type{PaintableToImageUtil}, value)
    PaintableToImageUtil_instanceSet[] = true
    PaintableToImageUtil_instanceValue[] = value
end

function initFieldsPaintableToImageUtil(this::PaintableToImageUtil)
    nothing
end

function initPaintableToImageUtil(this::PaintableToImageUtil)
    initFieldsPaintableToImageUtil(this)
end

function newPaintableToImageUtil()
    this = PaintableToImageUtil()
    initPaintableToImageUtil(this)
    this
end


function getImage(::Type{PaintableToImageUtil}, paintableInterface, width, height)
        local image = AllBinary.get(AllBinary.getInstance(GameFeatureImageCacheFactory), jClassName(staticGet_instance(PaintableToImageUtil)), width, height)
        local graphics = AllBinary.getGraphics(image)
        AllBinary.paint(paintableInterface, graphics)
        return image
end

