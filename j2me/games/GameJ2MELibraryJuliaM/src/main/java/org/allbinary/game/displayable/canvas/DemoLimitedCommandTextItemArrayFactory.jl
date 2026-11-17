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
# package org.allbinary.game.displayable.canvas

mutable struct DemoLimitedCommandTextItemArrayFactory <: JObject
    commandTextItemArrayFactory::Any
    DemoLimitedCommandTextItemArrayFactory() = new()
end

const DemoLimitedCommandTextItemArrayFactory_instanceValue = Ref{Any}(nothing)
const DemoLimitedCommandTextItemArrayFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{DemoLimitedCommandTextItemArrayFactory})
    if !DemoLimitedCommandTextItemArrayFactory_instanceSet[]
        DemoLimitedCommandTextItemArrayFactory_instanceSet[] = true
        DemoLimitedCommandTextItemArrayFactory_instanceValue[] = newDemoLimitedCommandTextItemArrayFactory()
    end
    DemoLimitedCommandTextItemArrayFactory_instanceValue[]
end
function staticSet_instance(::Type{DemoLimitedCommandTextItemArrayFactory}, value)
    DemoLimitedCommandTextItemArrayFactory_instanceSet[] = true
    DemoLimitedCommandTextItemArrayFactory_instanceValue[] = value
end

function initFieldsDemoLimitedCommandTextItemArrayFactory(this::DemoLimitedCommandTextItemArrayFactory)
    this.commandTextItemArrayFactory = nothing
    this.commandTextItemArrayFactory = newCommandTextItemArrayFactory(newLimitCommandsVisitor())
    nothing
end

function initDemoLimitedCommandTextItemArrayFactory(this::DemoLimitedCommandTextItemArrayFactory)
    initFieldsDemoLimitedCommandTextItemArrayFactory(this)
end

function newDemoLimitedCommandTextItemArrayFactory()
    this = DemoLimitedCommandTextItemArrayFactory()
    initDemoLimitedCommandTextItemArrayFactory(this)
    this
end


function getInstance(::Type{DemoLimitedCommandTextItemArrayFactory})
        return staticGet_instance(DemoLimitedCommandTextItemArrayFactory)
end


function getCommandTextItemArrayFactory(this::DemoLimitedCommandTextItemArrayFactory)
        return this.commandTextItemArrayFactory
end

