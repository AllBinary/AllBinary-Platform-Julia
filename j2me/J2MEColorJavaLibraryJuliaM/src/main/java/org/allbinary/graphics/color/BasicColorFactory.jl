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

mutable struct BasicColorFactory <: JObject
    NULL_COLOR::Any
    TAN::Any
    SKIN_PINK::Any
    RED::Any
    LIGHT_RED::Any
    DARK_GREEN::Any
    GREEN::Any
    LIGHT_GREEN::Any
    PURPLE::Any
    BLUE::Any
    LIGHT_BLUE::Any
    VERY_LIGHT_BLUE::Any
    PUCE::Any
    AQUA::Any
    YELLOW::Any
    PINK::Any
    BLACK::Any
    GREY::Any
    LIGHT_GREY::Any
    DARK_GREY::Any
    ORANGE::Any
    BROWN::Any
    WHITE::Any
    TRANSPARENT_COLOR::Any
    TRANSPARENT_GREY::Any
    TRANSPARENT_BLACK::Any
    TRANSPARENT_RED::Any
    CLEAR_COLOR::Any
    BORDER_COLOR::Any
    BasicColorFactory() = new()
end

const BasicColorFactory_instanceValue = Ref{Any}(nothing)
const BasicColorFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{BasicColorFactory})
    if !BasicColorFactory_instanceSet[]
        BasicColorFactory_instanceSet[] = true
        BasicColorFactory_instanceValue[] = newBasicColorFactory()
    end
    BasicColorFactory_instanceValue[]
end
function staticSet_instance(::Type{BasicColorFactory}, value)
    BasicColorFactory_instanceSet[] = true
    BasicColorFactory_instanceValue[] = value
end

function initFieldsBasicColorFactory(this::BasicColorFactory)
    this.NULL_COLOR = nothing
    this.TAN = nothing
    this.SKIN_PINK = nothing
    this.RED = nothing
    this.LIGHT_RED = nothing
    this.DARK_GREEN = nothing
    this.GREEN = nothing
    this.LIGHT_GREEN = nothing
    this.PURPLE = nothing
    this.BLUE = nothing
    this.LIGHT_BLUE = nothing
    this.VERY_LIGHT_BLUE = nothing
    this.PUCE = nothing
    this.AQUA = nothing
    this.YELLOW = nothing
    this.PINK = nothing
    this.BLACK = nothing
    this.GREY = nothing
    this.LIGHT_GREY = nothing
    this.DARK_GREY = nothing
    this.ORANGE = nothing
    this.BROWN = nothing
    this.WHITE = nothing
    this.TRANSPARENT_COLOR = nothing
    this.TRANSPARENT_GREY = nothing
    this.TRANSPARENT_BLACK = nothing
    this.TRANSPARENT_RED = nothing
    this.CLEAR_COLOR = nothing
    this.BORDER_COLOR = nothing
    this.NULL_COLOR = AllBinary.createInstanceARGB(this, Int32(255), Int32(255), Int32(255), Int32(255), "null color")
    this.TAN = AllBinary.createInstance(this, Int32(0xE9D8B5))
    this.SKIN_PINK = AllBinary.createInstance(this, Int32(0xFDCECE))
    this.RED = AllBinary.createInstanceAN(this, AllBinary.getInstance(BasicColorUtil).ALPHA, Int32(0xFF0000), "red")
    this.LIGHT_RED = AllBinary.createInstanceAN(this, AllBinary.getInstance(BasicColorUtil).ALPHA, Int32(0xFFA0A0), "light red")
    this.DARK_GREEN = AllBinary.createInstance(this, Int32(0x00FF00))
    this.GREEN = AllBinary.createInstanceAN(this, AllBinary.getInstance(BasicColorUtil).ALPHA, Int32(0x00DD00), "green")
    this.LIGHT_GREEN = AllBinary.createInstance(this, Int32(0x007700))
    this.PURPLE = AllBinary.createInstanceAN(this, AllBinary.getInstance(BasicColorUtil).ALPHA, Int32(0x400040), "purple")
    this.BLUE = AllBinary.createInstanceAN(this, AllBinary.getInstance(BasicColorUtil).ALPHA, Int32(0x0000FF), "blue")
    this.LIGHT_BLUE = AllBinary.createInstance(this, Int32(0x00aaff))
    this.VERY_LIGHT_BLUE = AllBinary.createInstance(this, Int32(0x000033))
    this.PUCE = AllBinary.createInstance(this, Int32(0xFF00AA))
    this.AQUA = AllBinary.createInstance(this, Int32(0x00FFFF))
    this.YELLOW = AllBinary.createInstanceAN(this, AllBinary.getInstance(BasicColorUtil).ALPHA, Int32(0xFFFF00), "yellow")
    this.PINK = AllBinary.createInstance(this, Int32(0xFF00FF))
    this.BLACK = AllBinary.createInstanceAN(this, AllBinary.getInstance(BasicColorUtil).ALPHA, Int32(0x000000), "black")
    this.GREY = AllBinary.createInstanceAN(this, AllBinary.getInstance(BasicColorUtil).ALPHA, Int32(0xAAAAAA), "grey")
    this.LIGHT_GREY = AllBinary.createInstance(this, Int32(0xC0C0C0))
    this.DARK_GREY = AllBinary.createInstance(this, Int32(0x404040))
    this.ORANGE = AllBinary.createInstance(this, Int32(0xe07718))
    this.BROWN = AllBinary.createInstance(this, Int32(0x956B00))
    this.WHITE = AllBinary.createInstance(this, Int32(0xFFFFFF))
    this.TRANSPARENT_COLOR = AllBinary.createInstanceAN(this, Int32(0x00000000), Int32(0x000000), AllBinary.getInstance(StringUtil).EMPTY_STRING)
    this.TRANSPARENT_GREY = AllBinary.createInstanceAN(this, Int32(0x52000000), Int32(0xECECEC), AllBinary.getInstance(StringUtil).EMPTY_STRING)
    this.TRANSPARENT_BLACK = AllBinary.createInstanceAN(this, Int32(0x52000000), Int32(0x000000), AllBinary.getInstance(StringUtil).EMPTY_STRING)
    this.TRANSPARENT_RED = AllBinary.createInstanceAN(this, Int32(0x52000000), Int32(0xFF0000), AllBinary.getInstance(StringUtil).EMPTY_STRING)
    this.CLEAR_COLOR = this.BLACK
    this.BORDER_COLOR = this.WHITE
    nothing
end

function initBasicColorFactory(this::BasicColorFactory)
    initFieldsBasicColorFactory(this)
end

function newBasicColorFactory()
    this = BasicColorFactory()
    initBasicColorFactory(this)
    this
end


function getInstance(::Type{BasicColorFactory})
        return staticGet_instance(BasicColorFactory)
end


function createInstance(this::BasicColorFactory, value)
        return newBasicColor(AllBinary.getInstance(BasicColorUtil).ALPHA, value, AllBinary.getInstance(StringUtil).EMPTY_STRING)
end


function createInstanceA(this::BasicColorFactory, alphaValue, value)
        return newBasicColor(alphaValue, value, AllBinary.getInstance(StringUtil).EMPTY_STRING)
end


function createInstanceAN(this::BasicColorFactory, alphaValue, value, name)
        return newBasicColor(alphaValue, value, name)
end


function createInstanceARGB(this::BasicColorFactory, alphaValue, r, g, b, name)
        local ALPHA_MASK::Int32 = Int32(0xFF000000)
        return newBasicColor(alphaValue, ((alphaValue << Int32(24)) & ALPHA_MASK) + ((r << Int32(16)) & Int32(0x00FF0000)) + ((g << Int32(8)) & Int32(0x0000FF00)) + (b & Int32(0x000000FF)), AllBinary.getInstance(StringUtil).EMPTY_STRING)
end

