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
# package org.allbinary.image

mutable struct PreResourceImageUtil <: JObject
    PreResourceImageUtil() = new()
end

const PreResourceImageUtil_instanceValue = Ref{Any}(nothing)
const PreResourceImageUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{PreResourceImageUtil})
    if !PreResourceImageUtil_instanceSet[]
        PreResourceImageUtil_instanceSet[] = true
        PreResourceImageUtil_instanceValue[] = newPreResourceImageUtil()
    end
    PreResourceImageUtil_instanceValue[]
end
function staticSet_instance(::Type{PreResourceImageUtil}, value)
    PreResourceImageUtil_instanceSet[] = true
    PreResourceImageUtil_instanceValue[] = value
end

function initFieldsPreResourceImageUtil(this::PreResourceImageUtil)
    nothing
end

function initPreResourceImageUtil(this::PreResourceImageUtil)
    initFieldsPreResourceImageUtil(this)
end

function newPreResourceImageUtil()
    this = PreResourceImageUtil()
    initPreResourceImageUtil(this)
    this
end


function getInstance(::Type{PreResourceImageUtil})
        return staticGet_instance(PreResourceImageUtil)
end


function encapsulate(this::PreResourceImageUtil, image)
        return image
end


function updateGL(this::PreResourceImageUtil, gl, image)
        nothing
        nothing
end


function update(this::PreResourceImageUtil, graphics, image)
        nothing
        nothing
end

