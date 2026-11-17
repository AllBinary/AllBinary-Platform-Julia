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

# extends DownGameKeyEventHandlerBase: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DownGameKeyEventHandler <: JObject
    playerInputIdFactory::Any
    DownGameKeyEventHandler() = new()
end

const DownGameKeyEventHandler_instanceValue = Ref{Any}(nothing)
const DownGameKeyEventHandler_instanceSet = Ref(false)
function staticGet_instance(::Type{DownGameKeyEventHandler})
    if !DownGameKeyEventHandler_instanceSet[]
        DownGameKeyEventHandler_instanceSet[] = true
        DownGameKeyEventHandler_instanceValue[] = newDownGameKeyEventHandler()
    end
    DownGameKeyEventHandler_instanceValue[]
end
function staticSet_instance(::Type{DownGameKeyEventHandler}, value)
    DownGameKeyEventHandler_instanceSet[] = true
    DownGameKeyEventHandler_instanceValue[] = value
end
const DownGameKeyEventHandler_instanceArrayValue = Ref{Any}(nothing)
const DownGameKeyEventHandler_instanceArraySet = Ref(false)
function staticGet_instanceArray(::Type{DownGameKeyEventHandler})
    if !DownGameKeyEventHandler_instanceArraySet[]
        DownGameKeyEventHandler_instanceArraySet[] = true
        DownGameKeyEventHandler_instanceArrayValue[] = Any[newDownGameKeyEventHandlerBase(), newDownGameKeyEventHandlerBase(), newDownGameKeyEventHandlerBase(), newDownGameKeyEventHandlerBase(), newDownGameKeyEventHandlerBase(), newDownGameKeyEventHandlerBase()]
    end
    DownGameKeyEventHandler_instanceArrayValue[]
end
function staticSet_instanceArray(::Type{DownGameKeyEventHandler}, value)
    DownGameKeyEventHandler_instanceArraySet[] = true
    DownGameKeyEventHandler_instanceArrayValue[] = value
end

function initFieldsDownGameKeyEventHandler(this::DownGameKeyEventHandler)
    this.playerInputIdFactory = nothing
    this.playerInputIdFactory = AllBinary.getInstance(LocalPlayerInputIdFactory)
    nothing
end


function getInstance(::Type{DownGameKeyEventHandler})
        return staticGet_instance(DownGameKeyEventHandler)
end


function getInstanceForDevice(this::DownGameKeyEventHandler, deviceId)
        local playerInputId::Int32 = AllBinary.getPlayerForDevice(this.playerInputIdFactory, deviceId)
        return staticGet_instanceArray(DownGameKeyEventHandler)[playerInputId + 1]
end


function getInstanceForPlayer(this::DownGameKeyEventHandler, playerInputId)
        return staticGet_instanceArray(DownGameKeyEventHandler)[playerInputId + 1]
end


function initDownGameKeyEventHandler(this::DownGameKeyEventHandler)
        initDownGameKeyEventHandlerBase(this)
        initFieldsDownGameKeyEventHandler(this)
        nothing
        nothing
end

function newDownGameKeyEventHandler()
    this = DownGameKeyEventHandler()
    initDownGameKeyEventHandler(this)
    this
end


function removeAllListeners(this::DownGameKeyEventHandler)
        AllBinary.removeAllListeners(this)
        let
            local index::Int32 = Int32(Base.length(staticGet_instanceArray(DownGameKeyEventHandler))) - Int32(1)
            while index >= Int32(0)
            try
            AllBinary.removeAllListeners(staticGet_instanceArray(DownGameKeyEventHandler)[index + 1])
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end


function removeListenerSingleThreaded(this::DownGameKeyEventHandler, eventListenerInterface)
        AllBinary.removeListenerSingleThreaded(this, eventListenerInterface)
        let
            local index::Int32 = Int32(Base.length(staticGet_instanceArray(DownGameKeyEventHandler))) - Int32(1)
            while index >= Int32(0)
            try
            AllBinary.removeListenerSingleThreaded(staticGet_instanceArray(DownGameKeyEventHandler)[index + 1], eventListenerInterface)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end


function removeListener(this::DownGameKeyEventHandler, eventListenerInterface)
        AllBinary.removeListener(this, eventListenerInterface)
        let
            local index::Int32 = Int32(Base.length(staticGet_instanceArray(DownGameKeyEventHandler))) - Int32(1)
            while index >= Int32(0)
            try
            AllBinary.removeListener(staticGet_instanceArray(DownGameKeyEventHandler)[index + 1], eventListenerInterface)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end

