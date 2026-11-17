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
# package org.allbinary.graphics

mutable struct ScreenCaptureFactory <: JObject
    ScreenCaptureFactory() = new()
end

const ScreenCaptureFactory_instanceValue = Ref{Any}(nothing)
const ScreenCaptureFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{ScreenCaptureFactory})
    if !ScreenCaptureFactory_instanceSet[]
        ScreenCaptureFactory_instanceSet[] = true
        ScreenCaptureFactory_instanceValue[] = AllBinary.getInstance(ScreenCaptureNoneFactory)
    end
    ScreenCaptureFactory_instanceValue[]
end
function staticSet_instance(::Type{ScreenCaptureFactory}, value)
    ScreenCaptureFactory_instanceSet[] = true
    ScreenCaptureFactory_instanceValue[] = value
end

function initFieldsScreenCaptureFactory(this::ScreenCaptureFactory)
    nothing
end

function initScreenCaptureFactory(this::ScreenCaptureFactory)
    initFieldsScreenCaptureFactory(this)
end

function newScreenCaptureFactory()
    this = ScreenCaptureFactory()
    initScreenCaptureFactory(this)
    this
end


function getInstance(::Type{ScreenCaptureFactory})
        return staticGet_instance(ScreenCaptureFactory)
end

