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

mutable struct SecondaryPlayerQueueFactory <: JObject
    SecondaryPlayerQueueFactory() = new()
end

const SecondaryPlayerQueueFactory_SINGLETONValue = Ref{Any}(nothing)
const SecondaryPlayerQueueFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{SecondaryPlayerQueueFactory})
    if !SecondaryPlayerQueueFactory_SINGLETONSet[]
        SecondaryPlayerQueueFactory_SINGLETONSet[] = true
        SecondaryPlayerQueueFactory_SINGLETONValue[] = newPlayerQueue(Int32(4))
    end
    SecondaryPlayerQueueFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{SecondaryPlayerQueueFactory}, value)
    SecondaryPlayerQueueFactory_SINGLETONSet[] = true
    SecondaryPlayerQueueFactory_SINGLETONValue[] = value
end

function initFieldsSecondaryPlayerQueueFactory(this::SecondaryPlayerQueueFactory)
    nothing
end

function initSecondaryPlayerQueueFactory(this::SecondaryPlayerQueueFactory)
    initFieldsSecondaryPlayerQueueFactory(this)
end

function newSecondaryPlayerQueueFactory()
    this = SecondaryPlayerQueueFactory()
    initSecondaryPlayerQueueFactory(this)
    this
end


function getInstance(::Type{SecondaryPlayerQueueFactory})
        return staticGet_SINGLETON(SecondaryPlayerQueueFactory)
end

