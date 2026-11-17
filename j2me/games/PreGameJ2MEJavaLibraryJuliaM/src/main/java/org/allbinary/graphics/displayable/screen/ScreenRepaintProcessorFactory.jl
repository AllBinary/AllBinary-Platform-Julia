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
# package org.allbinary.graphics.displayable.screen

mutable struct ScreenRepaintProcessorFactory <: JObject
    ScreenRepaintProcessorFactory() = new()
end

const ScreenRepaintProcessorFactory_instanceValue = Ref{Any}(nothing)
const ScreenRepaintProcessorFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{ScreenRepaintProcessorFactory})
    if !ScreenRepaintProcessorFactory_instanceSet[]
        ScreenRepaintProcessorFactory_instanceSet[] = true
        ScreenRepaintProcessorFactory_instanceValue[] = newScreenRepaintProcessorFactory()
    end
    ScreenRepaintProcessorFactory_instanceValue[]
end
function staticSet_instance(::Type{ScreenRepaintProcessorFactory}, value)
    ScreenRepaintProcessorFactory_instanceSet[] = true
    ScreenRepaintProcessorFactory_instanceValue[] = value
end

function initFieldsScreenRepaintProcessorFactory(this::ScreenRepaintProcessorFactory)
    nothing
end


function getInstance(::Type{ScreenRepaintProcessorFactory})
        return staticGet_instance(ScreenRepaintProcessorFactory)
end


function initScreenRepaintProcessorFactory(this::ScreenRepaintProcessorFactory)
        initFieldsScreenRepaintProcessorFactory(this)
        nothing
        nothing
end

function newScreenRepaintProcessorFactory()
    this = ScreenRepaintProcessorFactory()
    initScreenRepaintProcessorFactory(this)
    this
end


function create(this::ScreenRepaintProcessorFactory, displayable)
        if !AllBinary.isJ2ME(J2MEUtil)
            return newScreenRepaintProcessor(displayable)
        else
            return AllBinary.getInstance(Processor)
        end
end

