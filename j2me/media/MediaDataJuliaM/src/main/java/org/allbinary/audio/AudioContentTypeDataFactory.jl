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
# package org.allbinary.audio

mutable struct AudioContentTypeDataFactory <: JObject
    MIME_AUDIO_TONE::Any
    MIME_AUDIO_AMR::Any
    MIME_AUDIO_AMR_WB::Any
    MIME_AUDIO_WAV::Any
    MIME_AUDIO_MIDI::Any
    MIME_AUDIO_SP_MIDI::Any
    AudioContentTypeDataFactory() = new()
end

const AudioContentTypeDataFactory_instanceValue = Ref{Any}(nothing)
const AudioContentTypeDataFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{AudioContentTypeDataFactory})
    if !AudioContentTypeDataFactory_instanceSet[]
        AudioContentTypeDataFactory_instanceSet[] = true
        AudioContentTypeDataFactory_instanceValue[] = newAudioContentTypeDataFactory()
    end
    AudioContentTypeDataFactory_instanceValue[]
end
function staticSet_instance(::Type{AudioContentTypeDataFactory}, value)
    AudioContentTypeDataFactory_instanceSet[] = true
    AudioContentTypeDataFactory_instanceValue[] = value
end

function initFieldsAudioContentTypeDataFactory(this::AudioContentTypeDataFactory)
    this.MIME_AUDIO_TONE = nothing
    this.MIME_AUDIO_AMR = nothing
    this.MIME_AUDIO_AMR_WB = nothing
    this.MIME_AUDIO_WAV = nothing
    this.MIME_AUDIO_MIDI = nothing
    this.MIME_AUDIO_SP_MIDI = nothing
    this.MIME_AUDIO_TONE = newAudioContentTypeData("audio/x-tone-seq")
    this.MIME_AUDIO_AMR = newAudioContentTypeData("audio/amr")
    this.MIME_AUDIO_AMR_WB = newAudioContentTypeData("audio/amr-wb")
    this.MIME_AUDIO_WAV = newAudioContentTypeData("audio/x-wav")
    this.MIME_AUDIO_MIDI = newAudioContentTypeData("audio/midi")
    this.MIME_AUDIO_SP_MIDI = newAudioContentTypeData("audio/sp-midi")
    nothing
end


function getInstance(::Type{AudioContentTypeDataFactory})
        return staticGet_instance(AudioContentTypeDataFactory)
end


function initAudioContentTypeDataFactory(this::AudioContentTypeDataFactory)
        initFieldsAudioContentTypeDataFactory(this)
        nothing
        nothing
end

function newAudioContentTypeDataFactory()
    this = AudioContentTypeDataFactory()
    initAudioContentTypeDataFactory(this)
    this
end

