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
# package org.allbinary.device

mutable struct OpenGLESGraphicsCompositeFactory <: JObject
    openGLESGraphicsFactory::Any
    OpenGLESGraphicsCompositeFactory() = new()
end

const OpenGLESGraphicsCompositeFactory_instanceValue = Ref{Any}(nothing)
const OpenGLESGraphicsCompositeFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{OpenGLESGraphicsCompositeFactory})
    if !OpenGLESGraphicsCompositeFactory_instanceSet[]
        OpenGLESGraphicsCompositeFactory_instanceSet[] = true
        OpenGLESGraphicsCompositeFactory_instanceValue[] = newOpenGLESGraphicsCompositeFactory()
    end
    OpenGLESGraphicsCompositeFactory_instanceValue[]
end
function staticSet_instance(::Type{OpenGLESGraphicsCompositeFactory}, value)
    OpenGLESGraphicsCompositeFactory_instanceSet[] = true
    OpenGLESGraphicsCompositeFactory_instanceValue[] = value
end

function initFieldsOpenGLESGraphicsCompositeFactory(this::OpenGLESGraphicsCompositeFactory)
    this.openGLESGraphicsFactory = nothing
    this.openGLESGraphicsFactory = newOpenGLESGraphicsFactory()
    nothing
end

function initOpenGLESGraphicsCompositeFactory(this::OpenGLESGraphicsCompositeFactory)
    initFieldsOpenGLESGraphicsCompositeFactory(this)
end

function newOpenGLESGraphicsCompositeFactory()
    this = OpenGLESGraphicsCompositeFactory()
    initOpenGLESGraphicsCompositeFactory(this)
    this
end


function getInstance(::Type{OpenGLESGraphicsCompositeFactory})
        return staticGet_instance(OpenGLESGraphicsCompositeFactory)
end


function set(this::OpenGLESGraphicsCompositeFactory, openGLESGraphicsFactory)
        this.openGLESGraphicsFactory = openGLESGraphicsFactory
        nothing
end


function get(this::OpenGLESGraphicsCompositeFactory)
        return this.openGLESGraphicsFactory
end

