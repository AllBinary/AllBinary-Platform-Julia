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

mutable struct Sounds <: JObject
    logUtil::Any
    commonStrings::Any
    soundStrings::Any
    soundsFactoryInterface::Any
    Sounds() = new()
end


function initFieldsSounds(this::Sounds)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.soundStrings = nothing
    this.soundsFactoryInterface = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.soundStrings = AllBinary.getInstance(SoundStrings)
    
    nothing
end


function initSounds(this::Sounds, soundsFactoryInterface)
        initFieldsSounds(this)
        this.soundsFactoryInterface = soundsFactoryInterface
        nothing
end

function newSounds(soundsFactoryInterface)
    this = Sounds()
    initSounds(this, soundsFactoryInterface)
    this
end


function init(this::Sounds)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.INIT)
        local commonLabels = AllBinary.getInstance(CommonLabels)
        local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
        AllBinary.init(this.soundsFactoryInterface)
        local soundInterfaceArray = AllBinary.getSoundInterfaceArray(this.soundsFactoryInterface)
        local smallIntegerSingletonFactory = AllBinary.getInstance(SmallIntegerSingletonFactory)
        local indexInteger = nothing
        local indexString = nothing
        local stringBuffer = newStringMaker()
        let
            local i::Int32 = Int32(0)
            while i < Int32(Base.length(soundInterfaceArray))
            try
            local soundInterface = soundInterfaceArray[i + 1]
            if soundInterface !== nothing
                indexInteger = AllBinary.getAt(smallIntegerSingletonFactory, i)
                indexString = AllBinary.toString(indexInteger)
                AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
                AllBinary.append(stringBuffer, commonLabels.INDEX_LABEL)
                AllBinary.append(stringBuffer, indexString)
                AllBinary.append(stringBuffer, this.soundStrings.SOUND)
                AllBinary.append(stringBuffer, jClassName(soundInterface))
                AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, this.commonStrings.INIT)
                AllBinary.init(soundInterface)
                AllBinary.addNormalPortion(progressCanvas, Int32(100), AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.soundStrings.INIT_SOUND), indexString)))
            end
            finally
                i += Int32(1)
            end
            end
        end
        AllBinary.setInitialized(this.soundsFactoryInterface, true)
        AllBinary.putF(this.logUtil, this.commonStrings.END, this, this.commonStrings.INIT)
        nothing
end


function stopAll(this::Sounds)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.soundStrings.STOP_ALL)
        local soundInterfaceArray = AllBinary.getSoundInterfaceArray(this.soundsFactoryInterface)
        local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
        local player = nothing
        let
            local index::Int32 = Int32(0)
            while index < Int32(Base.length(soundInterfaceArray))
            try
            if soundInterfaceArray[index + 1] !== nothing
                player = AllBinary.getPlayerP(soundInterfaceArray[index + 1])
                if player !== nothing
                    AllBinary.stop(player)
                    AllBinary.addPortion(progressCanvas, Int32(100), this.soundStrings.STOPPING_SOUND, index)
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function closeAll(this::Sounds)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.soundStrings.CLOSE_ALL)
        local soundInterfaceArray = AllBinary.getSoundInterfaceArray(this.soundsFactoryInterface)
        local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
        local player = nothing
        let
            local index::Int32 = Int32(0)
            while index < Int32(Base.length(soundInterfaceArray))
            try
            if soundInterfaceArray[index + 1] !== nothing
                player = AllBinary.getPlayerP(soundInterfaceArray[index + 1])
                if player !== nothing
                    AllBinary.close(player)
                    AllBinary.addPortion(progressCanvas, Int32(100), this.soundStrings.CLOSING_SOUND, index)
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

