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

# extends UpGameKeyEventHandlerBase: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct UpGameKeyEventHandler <: JObject
    playerInputIdFactory::Any
    UpGameKeyEventHandler() = new()
end

const UpGameKeyEventHandler_instanceValue = Ref{Any}(nothing)
const UpGameKeyEventHandler_instanceSet = Ref(false)
function staticGet_instance(::Type{UpGameKeyEventHandler})
    if !UpGameKeyEventHandler_instanceSet[]
        UpGameKeyEventHandler_instanceSet[] = true
        UpGameKeyEventHandler_instanceValue[] = newUpGameKeyEventHandler()
    end
    UpGameKeyEventHandler_instanceValue[]
end
function staticSet_instance(::Type{UpGameKeyEventHandler}, value)
    UpGameKeyEventHandler_instanceSet[] = true
    UpGameKeyEventHandler_instanceValue[] = value
end
const UpGameKeyEventHandler_instanceArrayValue = Ref{Any}(nothing)
const UpGameKeyEventHandler_instanceArraySet = Ref(false)
function staticGet_instanceArray(::Type{UpGameKeyEventHandler})
    if !UpGameKeyEventHandler_instanceArraySet[]
        UpGameKeyEventHandler_instanceArraySet[] = true
        UpGameKeyEventHandler_instanceArrayValue[] = Any[newUpGameKeyEventHandlerBase(), newUpGameKeyEventHandlerBase(), newUpGameKeyEventHandlerBase(), newUpGameKeyEventHandlerBase(), newUpGameKeyEventHandlerBase(), newUpGameKeyEventHandlerBase()]
    end
    UpGameKeyEventHandler_instanceArrayValue[]
end
function staticSet_instanceArray(::Type{UpGameKeyEventHandler}, value)
    UpGameKeyEventHandler_instanceArraySet[] = true
    UpGameKeyEventHandler_instanceArrayValue[] = value
end

function initFieldsUpGameKeyEventHandler(this::UpGameKeyEventHandler)
    this.playerInputIdFactory = nothing
    this.playerInputIdFactory = AllBinary.getInstance(LocalPlayerInputIdFactory)
    nothing
end


function getInstance(::Type{UpGameKeyEventHandler})
        return staticGet_instance(UpGameKeyEventHandler)
end


function getInstanceForDevice(this::UpGameKeyEventHandler, deviceId)
        local playerInputId::Int32 = AllBinary.getPlayerForDevice(this.playerInputIdFactory, deviceId)
        return staticGet_instanceArray(UpGameKeyEventHandler)[playerInputId + 1]
end


function getInstanceForPlayer(this::UpGameKeyEventHandler, playerInputId)
        return staticGet_instanceArray(UpGameKeyEventHandler)[playerInputId + 1]
end


function initUpGameKeyEventHandler(this::UpGameKeyEventHandler)
        initUpGameKeyEventHandlerBase(this)
        initFieldsUpGameKeyEventHandler(this)
        nothing
        nothing
end

function newUpGameKeyEventHandler()
    this = UpGameKeyEventHandler()
    initUpGameKeyEventHandler(this)
    this
end


function removeAllListeners(this::UpGameKeyEventHandler)
        AllBinary.removeAllListeners(this)
        let
            local index::Int32 = Int32(Base.length(staticGet_instanceArray(UpGameKeyEventHandler))) - Int32(1)
            while index >= Int32(0)
            try
            AllBinary.removeAllListeners(staticGet_instanceArray(UpGameKeyEventHandler)[index + 1])
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end


function removeListenerSingleThreaded(this::UpGameKeyEventHandler, eventListenerInterface)
        AllBinary.removeListenerSingleThreaded(this, eventListenerInterface)
        let
            local index::Int32 = Int32(Base.length(staticGet_instanceArray(UpGameKeyEventHandler))) - Int32(1)
            while index >= Int32(0)
            try
            AllBinary.removeListenerSingleThreaded(staticGet_instanceArray(UpGameKeyEventHandler)[index + 1], eventListenerInterface)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end


function removeListener(this::UpGameKeyEventHandler, eventListenerInterface)
        AllBinary.removeListener(this, eventListenerInterface)
        let
            local index::Int32 = Int32(Base.length(staticGet_instanceArray(UpGameKeyEventHandler))) - Int32(1)
            while index >= Int32(0)
            try
            AllBinary.removeListener(staticGet_instanceArray(UpGameKeyEventHandler)[index + 1], eventListenerInterface)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end

