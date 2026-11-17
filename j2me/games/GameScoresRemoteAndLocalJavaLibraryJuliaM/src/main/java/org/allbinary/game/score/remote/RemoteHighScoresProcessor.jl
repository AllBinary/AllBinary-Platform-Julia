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

mutable struct RemoteHighScoresProcessor <: JObject
    logUtil::Any
    commonStrings::Any
    noCrypt::Any
    RemoteHighScoresProcessor() = new()
end


function initFieldsRemoteHighScoresProcessor(this::RemoteHighScoresProcessor)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.noCrypt = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.noCrypt = newNoCrypt()
    nothing
end


function initRemoteHighScoresProcessor(this::RemoteHighScoresProcessor)
        initFieldsRemoteHighScoresProcessor(this)
        nothing
        nothing
end

function newRemoteHighScoresProcessor()
    this = RemoteHighScoresProcessor()
    initRemoteHighScoresProcessor(this)
    this
end


function process(this::RemoteHighScoresProcessor, remoteHighScores, abeClientInformation, gameInfo)
        AllBinary.putF(this.logUtil, "Begin Remote HighScores Retrieval", this, this.commonStrings.PROCESS)
        local gameInfoData = AllBinary.getInstance(GameInfoData)
        local hashtable = AllBinary.toHashtable(abeClientInformation)
        AllBinary.putAll(AllBinary.getInstance(HashtableUtil), AllBinary.toHashtable(gameInfo), hashtable)
        AllBinary.put(hashtable, gameInfoData.SOFTWARE_INFORMATION, AllBinary.toString(AllBinary.getSoftwareInformation(remoteHighScores)))
        AllBinary.put(hashtable, remoteHighScores.ASCENDING, AllBinary.toString(AllBinary.getAscending(remoteHighScores)))
        local displayInfoSingleton = AllBinary.getInstance(DisplayInfoSingleton)
        AllBinary.put(hashtable, displayInfoSingleton.ORIENTATION, AllBinary.toStringb(AllBinary.getInstance(BooleanFactory), AllBinary.isPortrait(displayInfoSingleton)))
        AllBinary.put(hashtable, AllBinary.getInstance(RemoteHighScoresData).GAME_CONFIGURATION, AllBinary.toString(AllBinary.getInstance(GameConfigurationCentral)))
        if staticGet_isOnline(XmlRpcAbeClient)
            local resultHashtable = (AllBinary.get(newXmlRpcRemoteHighScoresClient(abeClientInformation, "highscoresservicessl.php", "HighScoresService.process"), hashtable, this.noCrypt))
            AllBinary.update(remoteHighScores, resultHashtable)
        end
        nothing
end

