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
# package org.allbinary.game.layer

mutable struct SWTUtil <: JObject
    SWTUtil() = new()
end

const SWTUtil_isSWTValue = Ref{Any}(nothing)
const SWTUtil_isSWTSet = Ref(false)
function staticGet_isSWT(::Type{SWTUtil})
    if !SWTUtil_isSWTSet[]
        SWTUtil_isSWTSet[] = true
        SWTUtil_isSWTValue[] = true
    end
    SWTUtil_isSWTValue[]
end
function staticSet_isSWT(::Type{SWTUtil}, value)
    SWTUtil_isSWTSet[] = true
    SWTUtil_isSWTValue[] = value
end
const SWTUtil_SWTValue = Ref{Any}(nothing)
const SWTUtil_SWTSet = Ref(false)
function staticGet_SWT(::Type{SWTUtil})
    if !SWTUtil_SWTSet[]
        SWTUtil_SWTSet[] = true
        SWTUtil_SWTValue[] = "SWT"
    end
    SWTUtil_SWTValue[]
end
function staticSet_SWT(::Type{SWTUtil}, value)
    SWTUtil_SWTSet[] = true
    SWTUtil_SWTValue[] = value
end

function initFieldsSWTUtil(this::SWTUtil)
    nothing
end

function initSWTUtil(this::SWTUtil)
    initFieldsSWTUtil(this)
end

function newSWTUtil()
    this = SWTUtil()
    initSWTUtil(this)
    this
end

