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

# extends CompositeShaderUpdater: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SimpleCompositeShaderUpdater <: JObject
    SimpleCompositeShaderUpdater() = new()
end


function initFieldsSimpleCompositeShaderUpdater(this::SimpleCompositeShaderUpdater)
    nothing
end


function initSimpleCompositeShaderUpdater(this::SimpleCompositeShaderUpdater, uniformBlockArray, uniformArray, attributeArray, attributeHandleArray)
        initCompositeShaderUpdater(this, uniformBlockArray, uniformArray, attributeArray, attributeHandleArray)
        nothing
end

function newSimpleCompositeShaderUpdater(uniformBlockArray, uniformArray, attributeArray, attributeHandleArray)
    this = SimpleCompositeShaderUpdater()
    initSimpleCompositeShaderUpdater(this, uniformBlockArray, uniformArray, attributeArray, attributeHandleArray)
    this
end

