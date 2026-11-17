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
# package org.allbinary.game.score.remote

# extends HighScores: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct RemoteHighScores <: JObject
    logUtil::Any
    enumerationUtil::Any
    abeClientInformation::Any
    softwareInformation::Any
    ascending::Any
    ASCENDING::Any
    RemoteHighScores() = new()
end

const RemoteHighScores_hashTableValue = Ref{Any}(nothing)
const RemoteHighScores_hashTableSet = Ref(false)
function staticGet_hashTable(::Type{RemoteHighScores})
    if !RemoteHighScores_hashTableSet[]
        RemoteHighScores_hashTableSet[] = true
        RemoteHighScores_hashTableValue[] = AllBinary.createHashtable(AllBinary.getInstance(StdUtil))
    end
    RemoteHighScores_hashTableValue[]
end
function staticSet_hashTable(::Type{RemoteHighScores}, value)
    RemoteHighScores_hashTableSet[] = true
    RemoteHighScores_hashTableValue[] = value
end

function initFieldsRemoteHighScores(this::RemoteHighScores)
    this.logUtil = nothing
    this.enumerationUtil = nothing
    this.abeClientInformation = nothing
    this.softwareInformation = nothing
    this.ascending = nothing
    this.ASCENDING = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.enumerationUtil = AllBinary.getInstance(EnumerationUtil)
    
    
    this.ascending = nothing
    this.ASCENDING = "ASCENDING"
    nothing
end


function initRemoteHighScores(this::RemoteHighScores, abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, ascending, preload)
        initHighScores(this, AllBinary.toString(gameInfo), heading, columnTwoHeading)
        initFieldsRemoteHighScores(this)
        this.abeClientInformation = abeClientInformation
        this.softwareInformation = softwareInformation
        AllBinary.setAscending(this, ascending)
        if preload
            AllBinary.process(AllBinary.getInstance(RemoteHighScoresProcessorFactory), this, this.abeClientInformation, gameInfo)
        end
        nothing
end

function newRemoteHighScores(abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, ascending, preload)
    this = RemoteHighScores()
    initRemoteHighScores(this, abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, ascending, preload)
    this
end


function getInstance(::Type{RemoteHighScores}, abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, isAscending)
        return AllBinary.getInstancePreload(RemoteHighScores, abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, isAscending, true)
end


function getInstancePreload(::Type{RemoteHighScores}, abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, isAscending, preload)
        local logUtil = AllBinary.getInstance(LogUtil)
        try
            local highScores = (AllBinary.get(staticGet_hashTable(RemoteHighScores), gameInfo))
            if highScores === nothing
                highScores = newRemoteHighScores(abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, isAscending, preload)
                AllBinary.put(staticGet_hashTable(RemoteHighScores), gameInfo, highScores)
            end
            return highScores
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(logUtil, commonStrings.EXCEPTION, AllBinary.getInstance(RemoteErrorHighScoresSingletonFactory), commonStrings.GET_INSTANCE, e)
            return AllBinary.getInstance(RemoteErrorHighScoresSingletonFactory)
        end
end


function addHighScore(this::RemoteHighScores, newHighScore)
        AllBinary.process(AllBinary.getInstance(RemoteHighScoresSubmissionProcessorFactory), this, this.abeClientInformation, newHighScore)
        nothing
end


function update(this::RemoteHighScores, hashtable)
        AllBinary.clear(AllBinary.getList(this))
        local vector = (AllBinary.get(hashtable, (AllBinary.getInstance(RemoteHighScoresData).HIGH_SCORES)))
        if vector !== nothing
            local size::Int32 = AllBinary.size(vector)
            let
                local index::Int32 = Int32(0)
                while index < size
                try
                local highScoreVector = (AllBinary.get(vector, index))
                local displayName = (AllBinary.get(highScoreVector, Int32(0)))
                local score = (AllBinary.get(highScoreVector, Int32(1)))
                local longScore::Int64 = Base.parse(Int64, score)
                local highScore = newHighScore(-Int32(1), displayName, nothing, longScore)
                AllBinary.add(AllBinary.getList(this), highScore)
                finally
                    index += Int32(1)
                end
                end
            end
        else
            local NEXT_ELEMENT = AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonLabels).NEXT), "Element: "))
            local commonStrings = AllBinary.getInstance(CommonStrings)
            local enumeration = AllBinary.elements(hashtable)
            local nextElement = nothing
            while AllBinary.hasMoreElements(this.enumerationUtil, enumeration)
                nextElement = AllBinary.nextElement(this.enumerationUtil, enumeration)
                AllBinary.putF(this.logUtil, jstr(NEXT_ELEMENT) * jstr(nextElement), this, commonStrings.PROCESS)
            end
        end
        nothing
end


function setAscending(this::RemoteHighScores, ascending)
        this.ascending = ascending
        nothing
end


function getAscending(this::RemoteHighScores)
        return this.ascending
end


function getSoftwareInformation(this::RemoteHighScores)
        return this.softwareInformation
end

