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
# package org.allbinary.graphics.font

mutable struct FontDebugFactory <: JObject
    FontDebugFactory() = new()
end

const FontDebugFactory_instanceValue = Ref{Any}(nothing)
const FontDebugFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{FontDebugFactory})
    if !FontDebugFactory_instanceSet[]
        FontDebugFactory_instanceSet[] = true
        FontDebugFactory_instanceValue[] = newFontDebugFactory()
    end
    FontDebugFactory_instanceValue[]
end
function staticSet_instance(::Type{FontDebugFactory}, value)
    FontDebugFactory_instanceSet[] = true
    FontDebugFactory_instanceValue[] = value
end

function initFieldsFontDebugFactory(this::FontDebugFactory)
    nothing
end

function initFontDebugFactory(this::FontDebugFactory)
    initFieldsFontDebugFactory(this)
end

function newFontDebugFactory()
    this = FontDebugFactory()
    initFontDebugFactory(this)
    this
end


function getInstance(::Type{FontDebugFactory})
        return staticGet_instance(FontDebugFactory)
end


function setFont(this::FontDebugFactory, font, graphics)
        AllBinary.setFont(graphics, font)
        nothing
end

