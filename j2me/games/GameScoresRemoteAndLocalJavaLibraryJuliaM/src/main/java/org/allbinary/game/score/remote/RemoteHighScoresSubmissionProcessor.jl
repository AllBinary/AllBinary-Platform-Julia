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

mutable struct RemoteHighScoresSubmissionProcessor <: JObject
    logUtil::Any
    commonStrings::Any
    noCrypt::Any
    RemoteHighScoresSubmissionProcessor() = new()
end


function initFieldsRemoteHighScoresSubmissionProcessor(this::RemoteHighScoresSubmissionProcessor)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.noCrypt = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.noCrypt = newNoCrypt()
    nothing
end


function initRemoteHighScoresSubmissionProcessor(this::RemoteHighScoresSubmissionProcessor)
        initFieldsRemoteHighScoresSubmissionProcessor(this)
        nothing
        nothing
end

function newRemoteHighScoresSubmissionProcessor()
    this = RemoteHighScoresSubmissionProcessor()
    initRemoteHighScoresSubmissionProcessor(this)
    this
end


function process(this::RemoteHighScoresSubmissionProcessor, remoteHighScores, abeClientInformation, highScore)
        try
            AllBinary.putF(this.logUtil, "Begin Remote HighScores Submission", this, this.commonStrings.PROCESS)
            local gameInfoData = AllBinary.getInstance(GameInfoData)
            local hashtable = AllBinary.toHashtable(abeClientInformation)
            AllBinary.putAll(AllBinary.getInstance(HashtableUtil), AllBinary.toHashtable(AllBinary.getGameInfo(highScore)), hashtable)
            AllBinary.put(hashtable, AllBinary.getInstance(RemoteHighScoresData).CUSTOMER_USER_NAME, "None")
            AllBinary.put(hashtable, AllBinary.getInstance(RemoteHighScoresData).DISPLAY_NAME, AllBinary.getName(highScore))
            AllBinary.put(hashtable, gameInfoData.SOFTWARE_INFORMATION, AllBinary.toString(AllBinary.getSoftwareInformation(remoteHighScores)))
            AllBinary.put(hashtable, remoteHighScores.ASCENDING, AllBinary.toString(AllBinary.getAscending(remoteHighScores)))
            local displayInfoSingleton = AllBinary.getInstance(DisplayInfoSingleton)
            AllBinary.put(hashtable, displayInfoSingleton.ORIENTATION, AllBinary.toStringb(AllBinary.getInstance(BooleanFactory), AllBinary.isPortrait(displayInfoSingleton)))
            AllBinary.put(hashtable, AllBinary.getInstance(RemoteHighScoresData).GAME_CONFIGURATION, AllBinary.toString(AllBinary.getInstance(GameConfigurationCentral)))
            AllBinary.put(hashtable, AllBinary.getInstance(RemoteHighScoresData).SCORE, jstr(AllBinary.getScore(highScore)))
            if staticGet_isOnline(XmlRpcAbeClient)
                local resultHashtable = (AllBinary.get(newXmlRpcRemoteHighScoresClient(abeClientInformation, "highscoresubmissionservicessl.php", "HighScoreSubmissionService.process"), hashtable, this.noCrypt))
                AllBinary.update(remoteHighScores, resultHashtable)
            end
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.PROCESS, e)
        end
        nothing
end

