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
# package org.allbinary.graphics.threed

mutable struct GLHolder <: JObject
    isCreated::Bool
    GLHolder() = new()
end


function initFieldsGLHolder(this::GLHolder)
    this.isCreated = false
    this.isCreated = true
    nothing
end


function initGLHolder(this::GLHolder)
        initFieldsGLHolder(this)
        nothing
        nothing
end

function newGLHolder()
    this = GLHolder()
    initGLHolder(this)
    this
end


function runOnSurfaceCreated(this::GLHolder, renderer)
        nothing
        nothing
end


function runOnSurfaceChanged(this::GLHolder, renderer, width, height)
        nothing
        nothing
end


function run(this::GLHolder, renderer)
        nothing
        nothing
end

