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
# package org.allbinary.canvas

mutable struct FullScreenUtil <: JObject
    FullScreenUtil() = new()
end

const FullScreenUtil_instanceValue = Ref{Any}(nothing)
const FullScreenUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{FullScreenUtil})
    if !FullScreenUtil_instanceSet[]
        FullScreenUtil_instanceSet[] = true
        FullScreenUtil_instanceValue[] = newFullScreenUtil()
    end
    FullScreenUtil_instanceValue[]
end
function staticSet_instance(::Type{FullScreenUtil}, value)
    FullScreenUtil_instanceSet[] = true
    FullScreenUtil_instanceValue[] = value
end

function initFieldsFullScreenUtil(this::FullScreenUtil)
    nothing
end

function initFullScreenUtil(this::FullScreenUtil)
    initFieldsFullScreenUtil(this)
end

function newFullScreenUtil()
    this = FullScreenUtil()
    initFullScreenUtil(this)
    this
end


function getInstance(::Type{FullScreenUtil})
        return staticGet_instance(FullScreenUtil)
end


function initOnRun(this::FullScreenUtil, fullScreenInterface, commandListener)
        if commandListener !== nothing
            AllBinary.init(this, fullScreenInterface)
        end
        nothing
end


function init(this::FullScreenUtil, fullScreenInterface)
        nothing
        nothing
end


function isScreenChange(this::FullScreenUtil, isFullScreen)
        local mainFeatureFactory = AllBinary.getInstance(MainFeatureFactory)
        local features = AllBinary.getInstance(Features)
        if AllBinary.isFeature(features, mainFeatureFactory.FULL_SCREEN) != isFullScreen
            return true
        end
        return false
end


function isScreenChangeCanvas(this::FullScreenUtil, fullScreenInterface)
        return AllBinary.isScreenChange(this, false)
end

