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
# package org.allbinary.image.opengles

mutable struct OpenGLImageUtilBase <: JObject
    OpenGLImageUtilBase() = new()
end


function initFieldsOpenGLImageUtilBase(this::OpenGLImageUtilBase)
    nothing
end

function initOpenGLImageUtilBase(this::OpenGLImageUtilBase)
    initFieldsOpenGLImageUtilBase(this)
end

function newOpenGLImageUtilBase()
    this = OpenGLImageUtilBase()
    initOpenGLImageUtilBase(this)
    this
end


function paint(this::OpenGLImageUtilBase, alphaBitmap, originalBitmap, index)
        throw(jNewException("RuntimeException", ""))
end


function paint(this::OpenGLImageUtilBase, colorBitmap, originalBitmap, alpha, basicColor)
        throw(jNewException("RuntimeException", ""))
end


function createImage(this::OpenGLImageUtilBase, name)
        throw(jNewException("RuntimeException", ""))
end


function createImageFromInputStream(this::OpenGLImageUtilBase, inputStream)
        throw(jNewException("RuntimeException", ""))
end

