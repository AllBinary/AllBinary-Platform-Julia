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

mutable struct AudioContentTypeData <: JObject
    name::Any
    AudioContentTypeData() = new()
end


function initFieldsAudioContentTypeData(this::AudioContentTypeData)
    this.name = nothing
    
    nothing
end


function initAudioContentTypeData(this::AudioContentTypeData, name)
        initFieldsAudioContentTypeData(this)
        this.name = name
        nothing
end

function newAudioContentTypeData(name)
    this = AudioContentTypeData()
    initAudioContentTypeData(this, name)
    this
end


function getName(this::AudioContentTypeData)
        return this.name
end

