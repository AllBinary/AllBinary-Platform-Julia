#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.graphics.font

mutable struct MyFontProcessor <: JObject
    MyFontProcessor() = new()
end

const MyFontProcessor_instanceValue = Ref{Any}(nothing)
const MyFontProcessor_instanceSet = Ref(false)
function staticGet_instance(::Type{MyFontProcessor})
    if !MyFontProcessor_instanceSet[]
        MyFontProcessor_instanceSet[] = true
        MyFontProcessor_instanceValue[] = newMyFontProcessor()
    end
    MyFontProcessor_instanceValue[]
end
function staticSet_instance(::Type{MyFontProcessor}, value)
    MyFontProcessor_instanceSet[] = true
    MyFontProcessor_instanceValue[] = value
end

function initFieldsMyFontProcessor(this::MyFontProcessor)
    nothing
end

function initMyFontProcessor(this::MyFontProcessor)
    initFieldsMyFontProcessor(this)
end

function newMyFontProcessor()
    this = MyFontProcessor()
    initMyFontProcessor(this)
    this
end


function defaultCharWidth(::Type{MyFontProcessor}, font)
        return AllBinary.charWidth(font, UInt16('C'))
end


function defaultStringWidth(::Type{MyFontProcessor}, font, size)
        return AllBinary.defaultCharWidth(MyFontProcessor, font) * size
end


function getInstance(::Type{MyFontProcessor})
        return staticGet_instance(MyFontProcessor)
end


function process(this::MyFontProcessor, graphics)
        nothing
        nothing
end

