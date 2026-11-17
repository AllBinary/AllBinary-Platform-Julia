#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.image.opengles

# extends OpenGLESImageProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ModifierOpenGLESImageProcessor <: JObject
    ModifierOpenGLESImageProcessor() = new()
end

const ModifierOpenGLESImageProcessor_instanceCValue = Ref{Any}(nothing)
const ModifierOpenGLESImageProcessor_instanceCSet = Ref(false)
function staticGet_instanceC(::Type{ModifierOpenGLESImageProcessor})
    if !ModifierOpenGLESImageProcessor_instanceCSet[]
        ModifierOpenGLESImageProcessor_instanceCSet[] = true
        ModifierOpenGLESImageProcessor_instanceCValue[] = newModifierOpenGLESImageProcessor()
    end
    ModifierOpenGLESImageProcessor_instanceCValue[]
end
function staticSet_instanceC(::Type{ModifierOpenGLESImageProcessor}, value)
    ModifierOpenGLESImageProcessor_instanceCSet[] = true
    ModifierOpenGLESImageProcessor_instanceCValue[] = value
end

function initFieldsModifierOpenGLESImageProcessor(this::ModifierOpenGLESImageProcessor)
    nothing
end

function initModifierOpenGLESImageProcessor(this::ModifierOpenGLESImageProcessor)
    initOpenGLESImageProcessor(this)
    initFieldsModifierOpenGLESImageProcessor(this)
end

function newModifierOpenGLESImageProcessor()
    this = ModifierOpenGLESImageProcessor()
    initModifierOpenGLESImageProcessor(this)
    this
end


function getInstance(::Type{ModifierOpenGLESImageProcessor})
        return staticGet_instanceC(ModifierOpenGLESImageProcessor)
end

