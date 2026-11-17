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
# package org.allbinary.graphics.color

mutable struct ColorTemperatureUtil <: JObject
    basicColorFactory::Any
    ColorTemperatureUtil() = new()
end

const ColorTemperatureUtil_instanceValue = Ref{Any}(nothing)
const ColorTemperatureUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{ColorTemperatureUtil})
    if !ColorTemperatureUtil_instanceSet[]
        ColorTemperatureUtil_instanceSet[] = true
        ColorTemperatureUtil_instanceValue[] = newColorTemperatureUtil()
    end
    ColorTemperatureUtil_instanceValue[]
end
function staticSet_instance(::Type{ColorTemperatureUtil}, value)
    ColorTemperatureUtil_instanceSet[] = true
    ColorTemperatureUtil_instanceValue[] = value
end

function initFieldsColorTemperatureUtil(this::ColorTemperatureUtil)
    this.basicColorFactory = nothing
    this.basicColorFactory = AllBinary.getInstance(BasicColorFactory)
    nothing
end

function initColorTemperatureUtil(this::ColorTemperatureUtil)
    initFieldsColorTemperatureUtil(this)
end

function newColorTemperatureUtil()
    this = ColorTemperatureUtil()
    initColorTemperatureUtil(this)
    this
end


function getInstance(::Type{ColorTemperatureUtil})
        return staticGet_instance(ColorTemperatureUtil)
end


function getBasicColor(this::ColorTemperatureUtil, thirdTemp)
        local basicColor = this.basicColorFactory.RED
        if thirdTemp > Int32(3700)
            basicColor = this.basicColorFactory.PURPLE
        elseif thirdTemp > Int32(3200)
            basicColor = this.basicColorFactory.BLUE
        elseif thirdTemp > Int32(2700)
            basicColor = this.basicColorFactory.PUCE
        elseif thirdTemp > Int32(2200)
            basicColor = this.basicColorFactory.WHITE
        elseif thirdTemp > Int32(1700)
            basicColor = this.basicColorFactory.GREEN
        elseif thirdTemp > Int32(1200)
            basicColor = this.basicColorFactory.YELLOW
        elseif thirdTemp > Int32(700)
            basicColor = this.basicColorFactory.ORANGE
        end
        return basicColor
end

