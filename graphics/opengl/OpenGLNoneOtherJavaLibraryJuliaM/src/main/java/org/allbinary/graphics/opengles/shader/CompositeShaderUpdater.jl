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
# package org.allbinary.graphics.opengles.shader

# extends ShaderUpdater: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CompositeShaderUpdater <: JObject
    commonSeps::Any
    CompositeShaderUpdater() = new()
end

const CompositeShaderUpdater_instanceCValue = Ref{Any}(nothing)
const CompositeShaderUpdater_instanceCSet = Ref(false)
function staticGet_instanceC(::Type{CompositeShaderUpdater})
    if !CompositeShaderUpdater_instanceCSet[]
        CompositeShaderUpdater_instanceCSet[] = true
        CompositeShaderUpdater_instanceCValue[] = newCompositeShaderUpdater(AllBinary.getArrayInstance(AllBinary.getInstance(StringUtil)), AllBinary.getArrayInstance(AllBinary.getInstance(StringUtil)), AllBinary.getArrayInstance(AllBinary.getInstance(StringUtil)), AllBinary.getInstance(NullUtil).NULL_INT_ARRAY)
    end
    CompositeShaderUpdater_instanceCValue[]
end
function staticSet_instanceC(::Type{CompositeShaderUpdater}, value)
    CompositeShaderUpdater_instanceCSet[] = true
    CompositeShaderUpdater_instanceCValue[] = value
end

function initFieldsCompositeShaderUpdater(this::CompositeShaderUpdater)
    this.commonSeps = nothing
    this.commonSeps = AllBinary.getInstance(CommonSeps)
    nothing
end


function getInstance(::Type{CompositeShaderUpdater})
        return staticGet_instanceC(CompositeShaderUpdater)
end


function initCompositeShaderUpdater(this::CompositeShaderUpdater, uniformBlockArray, uniformArray, attributeArray, attributeHandleArray)
        initShaderUpdater(this)
        initFieldsCompositeShaderUpdater(this)
        nothing
        nothing
end

function newCompositeShaderUpdater(uniformBlockArray, uniformArray, attributeArray, attributeHandleArray)
    this = CompositeShaderUpdater()
    initCompositeShaderUpdater(this, uniformBlockArray, uniformArray, attributeArray, attributeHandleArray)
    this
end


function onSurfaceCreated(this::CompositeShaderUpdater, gl, eglConfig, programHandle)
        nothing
        nothing
end


function onSurfaceDestroyed(this::CompositeShaderUpdater, gl)
        nothing
        nothing
end

