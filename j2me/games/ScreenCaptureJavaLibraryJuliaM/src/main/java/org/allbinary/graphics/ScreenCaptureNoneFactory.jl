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

mutable struct ScreenCaptureNoneFactory <: JObject
    ScreenCaptureNoneFactory() = new()
end

const ScreenCaptureNoneFactory_instanceValue = Ref{Any}(nothing)
const ScreenCaptureNoneFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{ScreenCaptureNoneFactory})
    if !ScreenCaptureNoneFactory_instanceSet[]
        ScreenCaptureNoneFactory_instanceSet[] = true
        ScreenCaptureNoneFactory_instanceValue[] = newScreenCapture()
    end
    ScreenCaptureNoneFactory_instanceValue[]
end
function staticSet_instance(::Type{ScreenCaptureNoneFactory}, value)
    ScreenCaptureNoneFactory_instanceSet[] = true
    ScreenCaptureNoneFactory_instanceValue[] = value
end

function initFieldsScreenCaptureNoneFactory(this::ScreenCaptureNoneFactory)
    nothing
end

function initScreenCaptureNoneFactory(this::ScreenCaptureNoneFactory)
    initFieldsScreenCaptureNoneFactory(this)
end

function newScreenCaptureNoneFactory()
    this = ScreenCaptureNoneFactory()
    initScreenCaptureNoneFactory(this)
    this
end


function getInstance(::Type{ScreenCaptureNoneFactory})
        return staticGet_instance(ScreenCaptureNoneFactory)
end

