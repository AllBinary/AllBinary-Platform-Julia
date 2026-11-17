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

mutable struct ScoreComparator <: JObject
    logUtil::Any
    isHighestBest::Bool
    ScoreComparator() = new()
end


function initFieldsScoreComparator(this::ScoreComparator)
    this.logUtil = nothing
    this.isHighestBest = false
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    nothing
end


function initScoreComparator(this::ScoreComparator, isHighestBest)
        initFieldsScoreComparator(this)
        this.isHighestBest = isHighestBest
        nothing
end

function newScoreComparator(isHighestBest)
    this = ScoreComparator()
    initScoreComparator(this, isHighestBest)
    this
end


function getBestScore(this::ScoreComparator)
        return (this.isHighestBest ? staticGet_MAX_VALUE(Long) : Int32(0))
end


function compare(this::ScoreComparator, recordOne, recordTwo)
        local byteArrayInputStreamOne = newByteArrayInputStream(recordOne)
        local inputStreamOne = newDataInputStream(byteArrayInputStreamOne)
        local byteArrayInputStreamTwo = newByteArrayInputStream(recordTwo)
        local inputStreamTwo = newDataInputStream(byteArrayInputStreamTwo)
        local scoreOne::Int64 = Int64(0)
        local scoreTwo::Int64 = Int64(0)
        try
            AllBinary.readUTF(inputStreamOne)
            AllBinary.readUTF(inputStreamTwo)
            scoreOne = AllBinary.readLong(inputStreamOne)
            scoreTwo = AllBinary.readLong(inputStreamTwo)
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, "compare", e)
        end
        if this.isHighestBest
            return AllBinary.getHighTooLow(this, scoreOne, scoreTwo)
        else
            return AllBinary.getLowTooHigh(this, scoreOne, scoreTwo)
        end
end


function getHighTooLow(this::ScoreComparator, scoreOne, scoreTwo)
        if scoreOne > scoreTwo
            return staticGet_PRECEDES(RecordComparator)
        elseif scoreOne < scoreTwo
            return staticGet_FOLLOWS(RecordComparator)
        else
            return staticGet_EQUIVALENT(RecordComparator)
        end
end


function getLowTooHigh(this::ScoreComparator, scoreOne, scoreTwo)
        if scoreOne < scoreTwo
            return staticGet_PRECEDES(RecordComparator)
        elseif scoreOne > scoreTwo
            return staticGet_FOLLOWS(RecordComparator)
        else
            return staticGet_EQUIVALENT(RecordComparator)
        end
end

