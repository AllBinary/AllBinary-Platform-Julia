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

# extends DownKeyEventHandlerBase: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DownKeyEventHandler <: JObject
    playerInputIdFactory::Any
    DownKeyEventHandler() = new()
end

const DownKeyEventHandler_instanceValue = Ref{Any}(nothing)
const DownKeyEventHandler_instanceSet = Ref(false)
function staticGet_instance(::Type{DownKeyEventHandler})
    if !DownKeyEventHandler_instanceSet[]
        DownKeyEventHandler_instanceSet[] = true
        DownKeyEventHandler_instanceValue[] = newDownKeyEventHandler()
    end
    DownKeyEventHandler_instanceValue[]
end
function staticSet_instance(::Type{DownKeyEventHandler}, value)
    DownKeyEventHandler_instanceSet[] = true
    DownKeyEventHandler_instanceValue[] = value
end
const DownKeyEventHandler_instanceArrayValue = Ref{Any}(nothing)
const DownKeyEventHandler_instanceArraySet = Ref(false)
function staticGet_instanceArray(::Type{DownKeyEventHandler})
    if !DownKeyEventHandler_instanceArraySet[]
        DownKeyEventHandler_instanceArraySet[] = true
        DownKeyEventHandler_instanceArrayValue[] = Any[newDownKeyEventHandlerBase(), newDownKeyEventHandlerBase(), newDownKeyEventHandlerBase(), newDownKeyEventHandlerBase(), newDownKeyEventHandlerBase(), newDownKeyEventHandlerBase()]
    end
    DownKeyEventHandler_instanceArrayValue[]
end
function staticSet_instanceArray(::Type{DownKeyEventHandler}, value)
    DownKeyEventHandler_instanceArraySet[] = true
    DownKeyEventHandler_instanceArrayValue[] = value
end

function initFieldsDownKeyEventHandler(this::DownKeyEventHandler)
    this.playerInputIdFactory = nothing
    this.playerInputIdFactory = AllBinary.getInstance(LocalPlayerInputIdFactory)
    nothing
end


function getInstance(::Type{DownKeyEventHandler})
        return staticGet_instance(DownKeyEventHandler)
end


function getInstanceForDevice(this::DownKeyEventHandler, deviceId)
        local playerInputId::Int32 = AllBinary.getPlayerForDevice(this.playerInputIdFactory, deviceId)
        return staticGet_instanceArray(DownKeyEventHandler)[playerInputId + 1]
end


function getInstanceForPlayer(this::DownKeyEventHandler, playerInputId)
        return staticGet_instanceArray(DownKeyEventHandler)[playerInputId + 1]
end


function initDownKeyEventHandler(this::DownKeyEventHandler)
        initDownKeyEventHandlerBase(this)
        initFieldsDownKeyEventHandler(this)
        nothing
        nothing
end

function newDownKeyEventHandler()
    this = DownKeyEventHandler()
    initDownKeyEventHandler(this)
    this
end


function removeAllListeners(this::DownKeyEventHandler)
        AllBinary.removeAllListeners(this)
        let
            local index::Int32 = Int32(Base.length(staticGet_instanceArray(DownKeyEventHandler))) - Int32(1)
            while index >= Int32(0)
            try
            AllBinary.removeAllListeners(staticGet_instanceArray(DownKeyEventHandler)[index + 1])
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end


function removeListenerSingleThreaded(this::DownKeyEventHandler, eventListenerInterface)
        AllBinary.removeListenerSingleThreaded(this, eventListenerInterface)
        let
            local index::Int32 = Int32(Base.length(staticGet_instanceArray(DownKeyEventHandler))) - Int32(1)
            while index >= Int32(0)
            try
            AllBinary.removeListenerSingleThreaded(staticGet_instanceArray(DownKeyEventHandler)[index + 1], eventListenerInterface)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end


function removeListener(this::DownKeyEventHandler, eventListenerInterface)
        AllBinary.removeListener(this, eventListenerInterface)
        let
            local index::Int32 = Int32(Base.length(staticGet_instanceArray(DownKeyEventHandler))) - Int32(1)
            while index >= Int32(0)
            try
            AllBinary.removeListener(staticGet_instanceArray(DownKeyEventHandler)[index + 1], eventListenerInterface)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end

