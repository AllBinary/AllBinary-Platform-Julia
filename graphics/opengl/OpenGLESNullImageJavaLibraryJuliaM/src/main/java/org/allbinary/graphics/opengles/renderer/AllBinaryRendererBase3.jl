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
# package org.allbinary.graphics.opengles.renderer

mutable struct AllBinaryRendererBase3 <: JObject
    list::Any
    AllBinaryRendererBase3() = new()
end


function initFieldsAllBinaryRendererBase3(this::AllBinaryRendererBase3)
    this.list = nothing
    this.list = newBasicArrayListD()
    nothing
end

function initAllBinaryRendererBase3(this::AllBinaryRendererBase3)
    initFieldsAllBinaryRendererBase3(this)
end

function newAllBinaryRendererBase3()
    this = AllBinaryRendererBase3()
    initAllBinaryRendererBase3(this)
    this
end


function update(this::AllBinaryRendererBase3, gl)
        while AllBinary.size(this.list) > Int32(0)
            local openGLESImage = (AllBinary.removeAt(this.list, Int32(0)))
            if openGLESImage !== nothing
                AllBinary.set(openGLESImage, gl)
            end
        end
        nothing
end


function add(this::AllBinaryRendererBase3, image)
        AllBinary.add(this.list, image)
        nothing
end

