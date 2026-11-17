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
# package org.allbinary.game.input

mutable struct LocalPlayerInputIdFactory <: JObject
    logUtil::Any
    MAX_NUMBER_OF_PLAYERS::Int32
    MAX_FAST_DEVICEID::Int32
    deviceIdToplayerId::Any
    playerIdToDeviceId::Any
    playersInPlay::Any
    totalDevicesMapped::Int32
    LocalPlayerInputIdFactory() = new()
end

const LocalPlayerInputIdFactory_instanceValue = Ref{Any}(nothing)
const LocalPlayerInputIdFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{LocalPlayerInputIdFactory})
    if !LocalPlayerInputIdFactory_instanceSet[]
        LocalPlayerInputIdFactory_instanceSet[] = true
        LocalPlayerInputIdFactory_instanceValue[] = newLocalPlayerInputIdFactory()
    end
    LocalPlayerInputIdFactory_instanceValue[]
end
function staticSet_instance(::Type{LocalPlayerInputIdFactory}, value)
    LocalPlayerInputIdFactory_instanceSet[] = true
    LocalPlayerInputIdFactory_instanceValue[] = value
end

function initFieldsLocalPlayerInputIdFactory(this::LocalPlayerInputIdFactory)
    this.logUtil = nothing
    this.MAX_NUMBER_OF_PLAYERS = Int32(0)
    this.MAX_FAST_DEVICEID = Int32(0)
    this.deviceIdToplayerId = nothing
    this.playerIdToDeviceId = nothing
    this.playersInPlay = nothing
    this.totalDevicesMapped = Int32(0)
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.MAX_NUMBER_OF_PLAYERS = Int32(6)
    this.MAX_FAST_DEVICEID = Int32(65)
    this.deviceIdToplayerId = jNewArray(Int32, this.MAX_FAST_DEVICEID, Int32(0))
    this.playerIdToDeviceId = jNewArray(Int32, this.MAX_NUMBER_OF_PLAYERS, Int32(0))
    this.playersInPlay = jNewArray(Bool, this.MAX_NUMBER_OF_PLAYERS, false)
    this.totalDevicesMapped = Int32(0)
    nothing
end


function initLocalPlayerInputIdFactory(this::LocalPlayerInputIdFactory)
        initFieldsLocalPlayerInputIdFactory(this)
        let
            local index::Int32 = Int32(Base.length(this.deviceIdToplayerId)) - Int32(1)
            while index >= Int32(0)
            try
            this.deviceIdToplayerId[index + 1] = -Int32(1)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end

function newLocalPlayerInputIdFactory()
    this = LocalPlayerInputIdFactory()
    initLocalPlayerInputIdFactory(this)
    this
end


function getInstance(::Type{LocalPlayerInputIdFactory})
        return staticGet_instance(LocalPlayerInputIdFactory)
end


function getDeviceId(this::LocalPlayerInputIdFactory, playerInputId)
        return this.playerIdToDeviceId[playerInputId + 1]
end


function getPlayerForDevice(this::LocalPlayerInputIdFactory, deviceId)
        local index::Int32 = Int32(0)
        if deviceId < this.MAX_FAST_DEVICEID
            local playerInputId::Int32 = this.deviceIdToplayerId[deviceId + 1]
            if playerInputId != -Int32(1)
                return playerInputId
            end
        else
            let
                index = this.totalDevicesMapped - Int32(1)
                while index >= Int32(0)
                try
                if this.playerIdToDeviceId[index + 1] == deviceId
                    return index
                end
                finally
                    index -= Int32(1)
                end
                end
            end
        end
        index = this.totalDevicesMapped
        if deviceId < this.MAX_FAST_DEVICEID
            this.deviceIdToplayerId[deviceId + 1] = index
        else
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.appendint(AllBinary.append(newStringMaker(), "Added DeviceId: "), deviceId), " beyond fast Id list")), this, "getPlayerForDevice")
        end
        this.playerIdToDeviceId[index + 1] = deviceId
        AllBinary.addPlayer(AllBinary.getInstance(AnalogLocationInputFactory), this.totalDevicesMapped)
        this.totalDevicesMapped += Int32(1)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(AllBinary.appendint(AllBinary.append(AllBinary.appendint(AllBinary.append(newStringMaker(), "Added DeviceId: "), deviceId), " at: "), index), " Total: "), this.totalDevicesMapped)), this, "getPlayerForDevice")
        return index
end


function getTotalDevicesInPlay(this::LocalPlayerInputIdFactory)
        local total::Int32 = Int32(0)
        let
            local index::Int32 = this.totalDevicesMapped - Int32(1)
            while index >= Int32(0)
            try
            if this.playersInPlay[index + 1] == true
                total += Int32(1)
            end
            finally
                index -= Int32(1)
            end
            end
        end
        return total
end


function isPlayerInPlay(this::LocalPlayerInputIdFactory, playerInputId)
        return this.playersInPlay[playerInputId + 1]
end


function setPlayerInPlay(this::LocalPlayerInputIdFactory, playerInputId)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), "Setting PlayerInPlay with playerInputId: "), playerInputId)), this, "setPlayerInPlay")
        this.playersInPlay[playerInputId + 1] = true
        nothing
end


function setPlayerOutOfPlay(this::LocalPlayerInputIdFactory, playerInputId)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), "Setting PlayerOutOfPlay with playerInputId: "), playerInputId)), this, "setPlayerOutOfPlay")
        this.playersInPlay[playerInputId + 1] = false
        nothing
end


function getPlayersInPlay(this::LocalPlayerInputIdFactory)
        return this.playersInPlay
end

