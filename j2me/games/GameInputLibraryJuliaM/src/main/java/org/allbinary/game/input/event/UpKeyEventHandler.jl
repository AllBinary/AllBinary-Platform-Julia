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
# package org.allbinary.game.input.event

# extends UpKeyEventHandlerBase: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct UpKeyEventHandler <: JObject
    playerInputIdFactory::Any
    UpKeyEventHandler() = new()
end

const UpKeyEventHandler_instanceValue = Ref{Any}(nothing)
const UpKeyEventHandler_instanceSet = Ref(false)
function staticGet_instance(::Type{UpKeyEventHandler})
    if !UpKeyEventHandler_instanceSet[]
        UpKeyEventHandler_instanceSet[] = true
        UpKeyEventHandler_instanceValue[] = newUpKeyEventHandler()
    end
    UpKeyEventHandler_instanceValue[]
end
function staticSet_instance(::Type{UpKeyEventHandler}, value)
    UpKeyEventHandler_instanceSet[] = true
    UpKeyEventHandler_instanceValue[] = value
end
const UpKeyEventHandler_instanceArrayValue = Ref{Any}(nothing)
const UpKeyEventHandler_instanceArraySet = Ref(false)
function staticGet_instanceArray(::Type{UpKeyEventHandler})
    if !UpKeyEventHandler_instanceArraySet[]
        UpKeyEventHandler_instanceArraySet[] = true
        UpKeyEventHandler_instanceArrayValue[] = Any[newUpKeyEventHandlerBase(), newUpKeyEventHandlerBase(), newUpKeyEventHandlerBase(), newUpKeyEventHandlerBase(), newUpKeyEventHandlerBase(), newUpKeyEventHandlerBase()]
    end
    UpKeyEventHandler_instanceArrayValue[]
end
function staticSet_instanceArray(::Type{UpKeyEventHandler}, value)
    UpKeyEventHandler_instanceArraySet[] = true
    UpKeyEventHandler_instanceArrayValue[] = value
end

function initFieldsUpKeyEventHandler(this::UpKeyEventHandler)
    this.playerInputIdFactory = nothing
    this.playerInputIdFactory = AllBinary.getInstance(LocalPlayerInputIdFactory)
    nothing
end


function getInstance(::Type{UpKeyEventHandler})
        return staticGet_instance(UpKeyEventHandler)
end


function getInstanceForDevice(this::UpKeyEventHandler, deviceId)
        local playerInputId::Int32 = AllBinary.getPlayerForDevice(this.playerInputIdFactory, deviceId)
        return staticGet_instanceArray(UpKeyEventHandler)[playerInputId + 1]
end


function getInstanceForPlayer(this::UpKeyEventHandler, playerInputId)
        return staticGet_instanceArray(UpKeyEventHandler)[playerInputId + 1]
end


function initUpKeyEventHandler(this::UpKeyEventHandler)
        initUpKeyEventHandlerBase(this)
        initFieldsUpKeyEventHandler(this)
        nothing
        nothing
end

function newUpKeyEventHandler()
    this = UpKeyEventHandler()
    initUpKeyEventHandler(this)
    this
end


function removeAllListeners(this::UpKeyEventHandler)
        AllBinary.removeAllListeners(this)
        let
            local index::Int32 = Int32(Base.length(staticGet_instanceArray(UpKeyEventHandler))) - Int32(1)
            while index >= Int32(0)
            try
            AllBinary.removeAllListeners(staticGet_instanceArray(UpKeyEventHandler)[index + 1])
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end


function removeListenerSingleThreaded(this::UpKeyEventHandler, eventListenerInterface)
        AllBinary.removeListenerSingleThreaded(this, eventListenerInterface)
        let
            local index::Int32 = Int32(Base.length(staticGet_instanceArray(UpKeyEventHandler))) - Int32(1)
            while index >= Int32(0)
            try
            AllBinary.removeListenerSingleThreaded(staticGet_instanceArray(UpKeyEventHandler)[index + 1], eventListenerInterface)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end


function removeListener(this::UpKeyEventHandler, eventListenerInterface)
        AllBinary.removeListener(this, eventListenerInterface)
        let
            local index::Int32 = Int32(Base.length(staticGet_instanceArray(UpKeyEventHandler))) - Int32(1)
            while index >= Int32(0)
            try
            AllBinary.removeListener(staticGet_instanceArray(UpKeyEventHandler)[index + 1], eventListenerInterface)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end

