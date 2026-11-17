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
# package org.allbinary.graphics.opengles

# extends Feature: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct OpenGLFeature <: JObject
    OpenGLFeature() = new()
end


function initFieldsOpenGLFeature(this::OpenGLFeature)
    nothing
end


function initOpenGLFeature(this::OpenGLFeature, name)
        initFeature(this, name)
        nothing
end

function newOpenGLFeature(name)
    this = OpenGLFeature()
    initOpenGLFeature(this, name)
    this
end

