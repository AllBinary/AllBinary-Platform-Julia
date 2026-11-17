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
# package org.allbinary.game

mutable struct NullIntermissionEnableListener <: JObject
    NullIntermissionEnableListener() = new()
end

const NullIntermissionEnableListener_SINGLETONValue = Ref{Any}(nothing)
const NullIntermissionEnableListener_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{NullIntermissionEnableListener})
    if !NullIntermissionEnableListener_SINGLETONSet[]
        NullIntermissionEnableListener_SINGLETONSet[] = true
        NullIntermissionEnableListener_SINGLETONValue[] = newNullIntermissionEnableListener()
    end
    NullIntermissionEnableListener_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{NullIntermissionEnableListener}, value)
    NullIntermissionEnableListener_SINGLETONSet[] = true
    NullIntermissionEnableListener_SINGLETONValue[] = value
end

function initFieldsNullIntermissionEnableListener(this::NullIntermissionEnableListener)
    nothing
end


function getInstance(::Type{NullIntermissionEnableListener})
        return staticGet_SINGLETON(NullIntermissionEnableListener)
end


function initNullIntermissionEnableListener(this::NullIntermissionEnableListener)
        initFieldsNullIntermissionEnableListener(this)
        nothing
        nothing
end

function newNullIntermissionEnableListener()
    this = NullIntermissionEnableListener()
    initNullIntermissionEnableListener(this)
    this
end


function notifyIntermission(this::NullIntermissionEnableListener, enable)
        nothing
        nothing
end

