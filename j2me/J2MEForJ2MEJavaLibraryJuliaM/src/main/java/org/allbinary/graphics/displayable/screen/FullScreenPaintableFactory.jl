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
# package org.allbinary.graphics.displayable.screen

mutable struct FullScreenPaintableFactory <: JObject
    paintable::Any
    FullScreenPaintableFactory() = new()
end

const FullScreenPaintableFactory_instanceValue = Ref{Any}(nothing)
const FullScreenPaintableFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{FullScreenPaintableFactory})
    if !FullScreenPaintableFactory_instanceSet[]
        FullScreenPaintableFactory_instanceSet[] = true
        FullScreenPaintableFactory_instanceValue[] = newFullScreenPaintableFactory()
    end
    FullScreenPaintableFactory_instanceValue[]
end
function staticSet_instance(::Type{FullScreenPaintableFactory}, value)
    FullScreenPaintableFactory_instanceSet[] = true
    FullScreenPaintableFactory_instanceValue[] = value
end

function initFieldsFullScreenPaintableFactory(this::FullScreenPaintableFactory)
    this.paintable = nothing
    this.paintable = AllBinary.getInstance(NullPaintable)
    nothing
end

function initFullScreenPaintableFactory(this::FullScreenPaintableFactory)
    initFieldsFullScreenPaintableFactory(this)
end

function newFullScreenPaintableFactory()
    this = FullScreenPaintableFactory()
    initFullScreenPaintableFactory(this)
    this
end


function getInstance(::Type{FullScreenPaintableFactory})
        return staticGet_instance(FullScreenPaintableFactory)
end

