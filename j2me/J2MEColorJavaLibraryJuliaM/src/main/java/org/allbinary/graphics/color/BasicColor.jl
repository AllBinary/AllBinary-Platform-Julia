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

mutable struct BasicColor <: JObject
    name::Any
    value::Int32
    redComponent::Float32
    greenComponent::Float32
    blueComponent::Float32
    alphaComponent::Float32
    red::Int16
    green::Int16
    blue::Int16
    alpha::Int16
    BasicColor() = new()
end


function initFieldsBasicColor(this::BasicColor)
    this.name = nothing
    this.value = Int32(0)
    this.redComponent = 0.0f0
    this.greenComponent = 0.0f0
    this.blueComponent = 0.0f0
    this.alphaComponent = 0.0f0
    this.red = Int16(0)
    this.green = Int16(0)
    this.blue = Int16(0)
    this.alpha = Int16(0)
    
    
    
    
    
    
    
    
    
    
    nothing
end


function initBasicColor(this::BasicColor, alphaValue, value, name)
        initFieldsBasicColor(this)
        this.name = name
        local tempValue::Int32 = Int32(0)
        local basicColorUtil = AllBinary.getInstance(BasicColorUtil)
        if basicColorUtil.isAlpha
            if basicColorUtil.ffOpaque
                tempValue = alphaValue | value
            else
                tempValue = Int32(0x00000000) | value
            end
        else
            tempValue = value
        end
        local alphaInt::Int32 = ((tempValue >> Int32(24)) & Int32(255))
        this.alpha = ((alphaInt) % Int16)
        this.alphaComponent = (Float32(alphaInt)) ÷ 255.0f0
        local redInt::Int32 = ((tempValue >> Int32(16)) & Int32(255))
        this.red = ((redInt) % Int16)
        this.redComponent = (Float32(redInt)) ÷ 255.0f0
        local greenInt::Int32 = ((tempValue >> Int32(8)) & Int32(255))
        this.green = ((greenInt) % Int16)
        this.greenComponent = (Float32(greenInt)) ÷ 255.0f0
        local blueInt::Int32 = ((tempValue) & Int32(255))
        this.blue = ((blueInt) % Int16)
        this.blueComponent = (Float32(blueInt)) ÷ 255.0f0
        this.value = tempValue
        nothing
end

function newBasicColor(alphaValue, value, name)
    this = BasicColor()
    initBasicColor(this, alphaValue, value, name)
    this
end


function intValue(this::BasicColor)
        return this.value
end


function toInt(this::BasicColor)
        return this.value
end


function toString(this::BasicColor)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "BasicColor: ")
        AllBinary.append(stringBuffer, "Alpha: ")
        AllBinary.appendshort(stringBuffer, this.alpha)
        AllBinary.append(stringBuffer, " Red: ")
        AllBinary.appendshort(stringBuffer, this.red)
        AllBinary.append(stringBuffer, " Green: ")
        AllBinary.appendshort(stringBuffer, this.green)
        AllBinary.append(stringBuffer, " Blue: ")
        AllBinary.appendshort(stringBuffer, this.blue)
        AllBinary.append(stringBuffer, " Value: ")
        AllBinary.appendint(stringBuffer, this.value)
        return AllBinary.toString(stringBuffer)
end


function getName(this::BasicColor)
        return this.name
end


function getRedComponent(this::BasicColor)
        return this.redComponent
end


function getGreenComponent(this::BasicColor)
        return this.greenComponent
end


function getBlueComponent(this::BasicColor)
        return this.blueComponent
end


function getAlphaComponent(this::BasicColor)
        return this.alphaComponent
end

