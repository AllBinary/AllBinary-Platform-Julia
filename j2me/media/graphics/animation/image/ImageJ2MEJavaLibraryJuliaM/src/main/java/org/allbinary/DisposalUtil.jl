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
# package org.allbinary

mutable struct DisposalUtil <: JObject
    DisposalUtil() = new()
end

const DisposalUtil_instanceValue = Ref{Any}(nothing)
const DisposalUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{DisposalUtil})
    if !DisposalUtil_instanceSet[]
        DisposalUtil_instanceSet[] = true
        DisposalUtil_instanceValue[] = newDisposalUtil()
    end
    DisposalUtil_instanceValue[]
end
function staticSet_instance(::Type{DisposalUtil}, value)
    DisposalUtil_instanceSet[] = true
    DisposalUtil_instanceValue[] = value
end

function initFieldsDisposalUtil(this::DisposalUtil)
    nothing
end

function initDisposalUtil(this::DisposalUtil)
    initFieldsDisposalUtil(this)
end

function newDisposalUtil()
    this = DisposalUtil()
    initDisposalUtil(this)
    this
end


function getInstance(::Type{DisposalUtil})
        return staticGet_instance(DisposalUtil)
end


function disposeImage(this::DisposalUtil, image)
        nothing
        nothing
end


function disposeResource(this::DisposalUtil, resource)
        if !AllBinary.isDisposed(resource)
            AllBinary.dispose(resource)
        end
        nothing
end

