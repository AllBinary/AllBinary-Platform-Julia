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
# package org.allbinary.android.view

mutable struct AllBinaryRenderer <: JObject
    AllBinaryRenderer() = new()
end

const AllBinaryRenderer_instanceValue = Ref{Any}(nothing)
const AllBinaryRenderer_instanceSet = Ref(false)
function staticGet_instance(::Type{AllBinaryRenderer})
    if !AllBinaryRenderer_instanceSet[]
        AllBinaryRenderer_instanceSet[] = true
        AllBinaryRenderer_instanceValue[] = newAllBinaryRenderer()
    end
    AllBinaryRenderer_instanceValue[]
end
function staticSet_instance(::Type{AllBinaryRenderer}, value)
    AllBinaryRenderer_instanceSet[] = true
    AllBinaryRenderer_instanceValue[] = value
end

function initFieldsAllBinaryRenderer(this::AllBinaryRenderer)
    nothing
end

function initAllBinaryRenderer(this::AllBinaryRenderer)
    initFieldsAllBinaryRenderer(this)
end

function newAllBinaryRenderer()
    this = AllBinaryRenderer()
    initAllBinaryRenderer(this)
    this
end


function getInstance(::Type{AllBinaryRenderer})
        return staticGet_instance(AllBinaryRenderer)
end


function setRunnable(this::AllBinaryRenderer, runnable)
        nothing
        nothing
end


function clearRunnable(this::AllBinaryRenderer)
        nothing
        nothing
end

