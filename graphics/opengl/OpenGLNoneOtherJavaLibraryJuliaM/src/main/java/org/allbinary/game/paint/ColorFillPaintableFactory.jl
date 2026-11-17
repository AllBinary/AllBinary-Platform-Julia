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
# package org.allbinary.game.paint

mutable struct ColorFillPaintableFactory <: JObject
    ColorFillPaintableFactory() = new()
end

const ColorFillPaintableFactory_instanceValue = Ref{Any}(nothing)
const ColorFillPaintableFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{ColorFillPaintableFactory})
    if !ColorFillPaintableFactory_instanceSet[]
        ColorFillPaintableFactory_instanceSet[] = true
        ColorFillPaintableFactory_instanceValue[] = newColorFillPaintableFactory()
    end
    ColorFillPaintableFactory_instanceValue[]
end
function staticSet_instance(::Type{ColorFillPaintableFactory}, value)
    ColorFillPaintableFactory_instanceSet[] = true
    ColorFillPaintableFactory_instanceValue[] = value
end

function initFieldsColorFillPaintableFactory(this::ColorFillPaintableFactory)
    nothing
end

function initColorFillPaintableFactory(this::ColorFillPaintableFactory)
    initFieldsColorFillPaintableFactory(this)
end

function newColorFillPaintableFactory()
    this = ColorFillPaintableFactory()
    initColorFillPaintableFactory(this)
    this
end


function getInstance(::Type{ColorFillPaintableFactory})
        return staticGet_instance(ColorFillPaintableFactory)
end


function getInstance(this::ColorFillPaintableFactory, basicColor, forThreedCanvas)
        local operatingSystem = AllBinary.getOperatingSystemInstance(AllBinary.getInstance(OperatingSystemFactory))
        if AllBinary.isOverScan(operatingSystem)
            return newOverScanColorFillPaintable(basicColor)
        else
            return newColorFillPaintable(basicColor)
        end
end

