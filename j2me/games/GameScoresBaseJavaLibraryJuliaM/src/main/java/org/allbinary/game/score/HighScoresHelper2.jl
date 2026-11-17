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
mutable struct HighScoresHelper2 <: JObject
    circularIndexUtil::Any
    selectedHighScores::Any
    HighScoresHelper2() = new()
end


function initFieldsHighScoresHelper2(this::HighScoresHelper2)
    this.circularIndexUtil = nothing
    this.selectedHighScores = nothing
    this.circularIndexUtil = AllBinary.createInstanceAt(CircularIndexUtil, Int32(0), Int32(0))
    this.selectedHighScores = AllBinary.getInstance(NullHighScoresSingletonFactory)
    nothing
end

function initHighScoresHelper2(this::HighScoresHelper2)
    initHighScoresHelperBase(this)
    initFieldsHighScoresHelper2(this)
end

function newHighScoresHelper2()
    this = HighScoresHelper2()
    initHighScoresHelper2(this)
    this
end


function setSelectedHighScores(this::HighScoresHelper2, selectedHighScores)
        this.selectedHighScores = selectedHighScores
        nothing
end


function getSelectedHighScores(this::HighScoresHelper2)
        return this.selectedHighScores
end


function setHighScoresArray(this::HighScoresHelper2, highScoresArrayP)
        AllBinary.setHighScoresArray(this, highScoresArrayP)
        AllBinary.setSize(this.circularIndexUtil, Int32(Base.length(this.highScoresArrayP)))
        AllBinary.selectHighScores(this)
        nothing
end


function selectHighScores(this::HighScoresHelper2)
        if Int32(Base.length(this.highScoresArrayP)) == Int32(0)
            AllBinary.setSelectedHighScores(this, AllBinary.getInstance(NullHighScoresSingletonFactory))
            return
        end
        AllBinary.next(this.circularIndexUtil)
        local highScores = this.highScoresArrayP[AllBinary.getIndex(this.circularIndexUtil) + 1]
        local index::Int32 = Int32(0)
        while AllBinary.getTotal(highScores) < Int32(1) && index < Int32(Base.length(this.highScoresArrayP))
            highScores = this.highScoresArrayP[AllBinary.next(this.circularIndexUtil) + 1]
            index += Int32(1)
        end
        AllBinary.setSelectedHighScores(this, highScores)
        nothing
end

