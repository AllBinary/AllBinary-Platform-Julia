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

mutable struct Sound <: JObject
    resource::Any
    player::Any
    Sound() = new()
end


function initFieldsSound(this::Sound)
    this.resource = nothing
    this.player = nothing
    
    this.player = staticGet_NO_PLAYER(NoPlayer)
    nothing
end


function initSound(this::Sound, resource)
        initFieldsSound(this)
        this.resource = resource
        nothing
end

function newSound(resource)
    this = Sound()
    initSound(this, resource)
    this
end


function getResource(this::Sound)
        return this.resource
end


function getPlayerP(this::Sound)
        return this.player
end


function setPlayerP(this::Sound, player)
        this.player = player
        nothing
end


function init(this::Sound)
        nothing
        nothing
end


function getDuration(this::Sound)
        return -Int32(1)
end


function run(this::Sound)
        try
            AllBinary.start(this.player)
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(PreLogUtil, commonStrings.EXCEPTION, this, commonStrings.RUN)
        end
        nothing
end

