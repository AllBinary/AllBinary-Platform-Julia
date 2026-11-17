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
# package org.allbinary.media.audio

mutable struct PrimaryPlayerQueueFactory <: JObject
    PrimaryPlayerQueueFactory() = new()
end

const PrimaryPlayerQueueFactory_SINGLETONValue = Ref{Any}(nothing)
const PrimaryPlayerQueueFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{PrimaryPlayerQueueFactory})
    if !PrimaryPlayerQueueFactory_SINGLETONSet[]
        PrimaryPlayerQueueFactory_SINGLETONSet[] = true
        PrimaryPlayerQueueFactory_SINGLETONValue[] = newPlayerQueue(Int32(4))
    end
    PrimaryPlayerQueueFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{PrimaryPlayerQueueFactory}, value)
    PrimaryPlayerQueueFactory_SINGLETONSet[] = true
    PrimaryPlayerQueueFactory_SINGLETONValue[] = value
end

function initFieldsPrimaryPlayerQueueFactory(this::PrimaryPlayerQueueFactory)
    nothing
end

function initPrimaryPlayerQueueFactory(this::PrimaryPlayerQueueFactory)
    initFieldsPrimaryPlayerQueueFactory(this)
end

function newPrimaryPlayerQueueFactory()
    this = PrimaryPlayerQueueFactory()
    initPrimaryPlayerQueueFactory(this)
    this
end


function getInstance(::Type{PrimaryPlayerQueueFactory})
        return staticGet_SINGLETON(PrimaryPlayerQueueFactory)
end

