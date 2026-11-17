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

# extends HighScoresHelperBase: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HighScoresHelper <: JObject
    circularIndexUtil::Any
    lastIndex::Int32
    HighScoresHelper() = new()
end


function initFieldsHighScoresHelper(this::HighScoresHelper)
    this.circularIndexUtil = nothing
    this.lastIndex = Int32(0)
    this.circularIndexUtil = AllBinary.createInstanceAt(CircularIndexUtil, Int32(0), Int32(0))
    this.lastIndex = -Int32(1)
    nothing
end

function initHighScoresHelper(this::HighScoresHelper)
    initHighScoresHelperBase(this)
    initFieldsHighScoresHelper(this)
end

function newHighScoresHelper()
    this = HighScoresHelper()
    initHighScoresHelper(this)
    this
end


function setHighScoresArray(this::HighScoresHelper, highScoresArrayP)
        AllBinary.setHighScoresArray(this, highScoresArrayP)
        AllBinary.setSize(this.circularIndexUtil, Int32(Base.length(this.highScoresArrayP)))
        nothing
end


function getNextHighScores(this::HighScoresHelper)
        local highScores = this.highScoresArrayP[AllBinary.getIndex(this.circularIndexUtil) + 1]
        local index::Int32 = Int32(0)
        while (AllBinary.getTotal(highScores) < Int32(1) || this.lastIndex == AllBinary.getIndex(this.circularIndexUtil)) && index < Int32(Base.length(this.highScoresArrayP))
            AllBinary.next(this.circularIndexUtil)
            highScores = this.highScoresArrayP[AllBinary.getIndex(this.circularIndexUtil) + 1]
            index += Int32(1)
        end
        this.lastIndex = AllBinary.getIndex(this.circularIndexUtil)
        return highScores
end


function isAnyHighScores(this::HighScoresHelper)
        if Int32(Base.length(this.highScoresArrayP)) < Int32(1)
            return false
        end
        local anyScores::Bool = false
        local highScores = nothing
        let
            local index::Int32 = Int32(Base.length(this.highScoresArrayP)) - Int32(1)
            while index >= Int32(0)
            try
            highScores = this.highScoresArrayP[index + 1]
            if AllBinary.getTotal(highScores) > Int32(0)
                anyScores = true
            end
            finally
                index -= Int32(1)
            end
            end
        end
        return anyScores
end

