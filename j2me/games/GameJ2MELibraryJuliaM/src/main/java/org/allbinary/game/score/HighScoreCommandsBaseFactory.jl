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
# package org.allbinary.game.score

mutable struct HighScoreCommandsBaseFactory <: JObject
    logUtil::Any
    HIGH_SCORE_COMMANDS::Any
    HighScoreCommandsBaseFactory() = new()
end


function initFieldsHighScoreCommandsBaseFactory(this::HighScoreCommandsBaseFactory)
    this.logUtil = nothing
    this.HIGH_SCORE_COMMANDS = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    nothing
end


function initHighScoreCommandsBaseFactory(this::HighScoreCommandsBaseFactory, HIGH_SCORE_COMMANDS)
        initFieldsHighScoreCommandsBaseFactory(this)
        this.HIGH_SCORE_COMMANDS = HIGH_SCORE_COMMANDS
        nothing
end

function newHighScoreCommandsBaseFactory(HIGH_SCORE_COMMANDS)
    this = HighScoreCommandsBaseFactory()
    initHighScoreCommandsBaseFactory(this, HIGH_SCORE_COMMANDS)
    this
end


function isHighScoreCommand(this::HighScoreCommandsBaseFactory, command)
        let
            local index::Int32 = Int32(Base.length(this.HIGH_SCORE_COMMANDS)) - Int32(1)
            while index >= Int32(0)
            try
            if command === this.HIGH_SCORE_COMMANDS[index + 1]
                return true
            end
            finally
                index -= Int32(1)
            end
            end
        end
        return false
end


function getIndex(this::HighScoreCommandsBaseFactory, command)
        let
            local index::Int32 = Int32(Base.length(this.HIGH_SCORE_COMMANDS)) - Int32(1)
            while index >= Int32(0)
            try
            if command === this.HIGH_SCORE_COMMANDS[index + 1]
                return index
            end
            finally
                index -= Int32(1)
            end
            end
        end
        throw(jNewException("Exception", "No Such Command"))
end

