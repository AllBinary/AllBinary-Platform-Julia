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
# package org.allbinary.media.audio

#NotDeviceSpecificNoMediaMIDP1Library
mutable struct AllBinaryMediaManager <: JObject
    AllBinaryMediaManager() = new()
end

const AllBinaryMediaManager_THISValue = Ref{Any}(nothing)
const AllBinaryMediaManager_THISSet = Ref(false)
function staticGet_THIS(::Type{AllBinaryMediaManager})
    if !AllBinaryMediaManager_THISSet[]
        AllBinaryMediaManager_THISSet[] = true
        AllBinaryMediaManager_THISValue[] = "AllBinaryMediaManagerNoMediaMIDP1"
    end
    AllBinaryMediaManager_THISValue[]
end
function staticSet_THIS(::Type{AllBinaryMediaManager}, value)
    AllBinaryMediaManager_THISSet[] = true
    AllBinaryMediaManager_THISValue[] = value
end

function initFieldsAllBinaryMediaManager(this::AllBinaryMediaManager)
    nothing
end


function initAllBinaryMediaManager(this::AllBinaryMediaManager)
        initFieldsAllBinaryMediaManager(this)
        nothing
        nothing
end

function newAllBinaryMediaManager()
    this = AllBinaryMediaManager()
    initAllBinaryMediaManager(this)
    this
end


function isMuted(::Type{AllBinaryMediaManager})
        return false
end


function setMuted(::Type{AllBinaryMediaManager}, aMuted)
        nothing
        nothing
end


function update(::Type{AllBinaryMediaManager})
        return true
end


function init(::Type{AllBinaryMediaManager}, soundsFactoryInterface)
        local logUtil = AllBinary.getInstance(LogUtil)
        local commonString = AllBinary.getInstance(CommonStrings)
        AllBinary.putF(logUtil, commonString.START, staticGet_THIS(AllBinaryMediaManager), commonString.INIT)
        AllBinary.addNormalPortion(AllBinary.getInstance(ProgressCanvasFactory), Int32(50), "Media Manager")
        AllBinary.init(newSounds(soundsFactoryInterface))
        nothing
end


function shutdown(::Type{AllBinaryMediaManager}, soundsFactoryInterface)
        AllBinary.stopAll(newSounds(soundsFactoryInterface))
        AllBinary.closeAll(newSounds(soundsFactoryInterface))
        AllBinary.gc(AllBinary.getInstance(TsUtil))
        nothing
end


function createPlayerFromInputStream(::Type{AllBinaryMediaManager}, stream, type_)
        local logUtil = AllBinary.getInstance(LogUtil)
        local commonString = AllBinary.getInstance(CommonStrings)
        AllBinary.putF(logUtil, commonString.START, staticGet_THIS(AllBinaryMediaManager), "creatPlayer(InputStream)")
        return (staticGet_NO_PLAYER(NoPlayer))
end


function createPlayer(::Type{AllBinaryMediaManager}, locator)
        local logUtil = AllBinary.getInstance(LogUtil)
        local commonString = AllBinary.getInstance(CommonStrings)
        AllBinary.putF(logUtil, commonString.START, staticGet_THIS(AllBinaryMediaManager), "creatPlayer(locator)")
        return (staticGet_NO_PLAYER(NoPlayer))
end


function playTone(::Type{AllBinaryMediaManager}, frequency, time, volume)
        nothing
        nothing
end


function getSupportedContentTypes(::Type{AllBinaryMediaManager}, protocol)
        return AllBinary.getArrayInstance(AllBinary.getInstance(StringUtil))
end


function getSupportedProtocols(::Type{AllBinaryMediaManager}, content_type)
        return AllBinary.getArrayInstance(AllBinary.getInstance(StringUtil))
end

