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

mutable struct PlayerQueue <: JObject
    commonStrings::Any
    list::Any
    max::Int32
    PlayerQueue() = new()
end

const PlayerQueue_TOTALValue = Ref{Any}(nothing)
const PlayerQueue_TOTALSet = Ref(false)
function staticGet_TOTAL(::Type{PlayerQueue})
    if !PlayerQueue_TOTALSet[]
        PlayerQueue_TOTALSet[] = true
        PlayerQueue_TOTALValue[] = "Sounds In Queue: "
    end
    PlayerQueue_TOTALValue[]
end
function staticSet_TOTAL(::Type{PlayerQueue}, value)
    PlayerQueue_TOTALSet[] = true
    PlayerQueue_TOTALValue[] = value
end

function initFieldsPlayerQueue(this::PlayerQueue)
    this.commonStrings = nothing
    this.list = nothing
    this.max = Int32(0)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.list = newBasicArrayListD()
    
    nothing
end


function initPlayerQueue(this::PlayerQueue, max)
        initFieldsPlayerQueue(this)
        this.max = max
        nothing
end

function newPlayerQueue(max)
    this = PlayerQueue()
    initPlayerQueue(this, max)
    this
end


function add(this::PlayerQueue, sound)
        try
            if !AllBinary.contains(this.list, sound)
                AllBinary.add(this.list, sound)
            end
        catch e
            AllBinary.put(PreLogUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.ADD)
        end
        nothing
end


function process(this::PlayerQueue)
        local sound = AllBinary.getInstance(NoSound)
        try
            local played::Bool = false
            if AllBinary.size(this.list) > Int32(0)
                sound = (AllBinary.removeAt(this.list, Int32(0)))
                if sound !== nothing
                    AllBinary.start(AllBinary.getPlayerP(sound))
                end
                while AllBinary.size(this.list) > this.max
                    AllBinary.removeAt(this.list, Int32(0))
                end
                played = true
            end
            return played
        catch e
            local resource = AllBinary.getInstance(StringUtil).EMPTY_STRING
            if sound !== nothing
                resource = AllBinary.getResource(sound)
            end
            AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.commonStrings.EXCEPTION_LABEL), resource)), this, this.commonStrings.PROCESS)
            return false
        end
end


function clear(this::PlayerQueue)
        AllBinary.clear(this.list)
        nothing
end


function toString(this::PlayerQueue)
        return AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), staticGet_TOTAL(PlayerQueue)), AllBinary.size(this.list)))
end

