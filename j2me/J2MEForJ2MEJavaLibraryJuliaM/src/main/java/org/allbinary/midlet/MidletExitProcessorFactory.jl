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
# package org.allbinary.midlet

mutable struct MidletExitProcessorFactory <: JObject
    MidletExitProcessorFactory() = new()
end

const MidletExitProcessorFactory_instanceValue = Ref{Any}(nothing)
const MidletExitProcessorFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{MidletExitProcessorFactory})
    if !MidletExitProcessorFactory_instanceSet[]
        MidletExitProcessorFactory_instanceSet[] = true
        MidletExitProcessorFactory_instanceValue[] = newMidletExitProcessorFactory()
    end
    MidletExitProcessorFactory_instanceValue[]
end
function staticSet_instance(::Type{MidletExitProcessorFactory}, value)
    MidletExitProcessorFactory_instanceSet[] = true
    MidletExitProcessorFactory_instanceValue[] = value
end

function initFieldsMidletExitProcessorFactory(this::MidletExitProcessorFactory)
    nothing
end

function initMidletExitProcessorFactory(this::MidletExitProcessorFactory)
    initFieldsMidletExitProcessorFactory(this)
end

function newMidletExitProcessorFactory()
    this = MidletExitProcessorFactory()
    initMidletExitProcessorFactory(this)
    this
end


function getInstance(::Type{MidletExitProcessorFactory})
        return staticGet_instance(MidletExitProcessorFactory)
end


function getExitInstance(this::MidletExitProcessorFactory, midlet)
        if AllBinary.isAppletLoader(AppletUtil, midlet) || AllBinary.isJ2ME(J2MEUtil)
            return AllBinary.getInstance(Processor)
        else
            return newMidletExitProcessor(midlet)
        end
end

