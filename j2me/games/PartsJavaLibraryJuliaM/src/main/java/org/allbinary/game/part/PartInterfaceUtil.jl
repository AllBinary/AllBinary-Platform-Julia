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
# package org.allbinary.game.part

mutable struct PartInterfaceUtil <: JObject
    PartInterfaceUtil() = new()
end

const PartInterfaceUtil_SINGLETONValue = Ref{Any}(nothing)
const PartInterfaceUtil_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{PartInterfaceUtil})
    if !PartInterfaceUtil_SINGLETONSet[]
        PartInterfaceUtil_SINGLETONSet[] = true
        PartInterfaceUtil_SINGLETONValue[] = jNewArray(Any, Int32(0), nothing)
    end
    PartInterfaceUtil_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{PartInterfaceUtil}, value)
    PartInterfaceUtil_SINGLETONSet[] = true
    PartInterfaceUtil_SINGLETONValue[] = value
end

function initFieldsPartInterfaceUtil(this::PartInterfaceUtil)
    nothing
end

function initPartInterfaceUtil(this::PartInterfaceUtil)
    initFieldsPartInterfaceUtil(this)
end

function newPartInterfaceUtil()
    this = PartInterfaceUtil()
    initPartInterfaceUtil(this)
    this
end


function getZeroArray(::Type{PartInterfaceUtil})
        return staticGet_SINGLETON(PartInterfaceUtil)
end

