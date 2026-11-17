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

# extends HighScores: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct RecordStoreHighScores <: JObject
    logUtil::Any
    commonStrings::Any
    platformRecordIdUtil::Any
    tsUtil::Any
    RECORD_ID::Any
    MAXHIGHSCORES::Int32
    gameInfo::Any
    abeClientInformation::Any
    recordComparatorInterface::Any
    RecordStoreHighScores() = new()
end

const RecordStoreHighScores_hashTableValue = Ref{Any}(nothing)
const RecordStoreHighScores_hashTableSet = Ref(false)
function staticGet_hashTable(::Type{RecordStoreHighScores})
    if !RecordStoreHighScores_hashTableSet[]
        RecordStoreHighScores_hashTableSet[] = true
        RecordStoreHighScores_hashTableValue[] = AllBinary.createHashtable(AllBinary.getInstance(StdUtil))
    end
    RecordStoreHighScores_hashTableValue[]
end
function staticSet_hashTable(::Type{RecordStoreHighScores}, value)
    RecordStoreHighScores_hashTableSet[] = true
    RecordStoreHighScores_hashTableValue[] = value
end

function initFieldsRecordStoreHighScores(this::RecordStoreHighScores)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.platformRecordIdUtil = nothing
    this.tsUtil = nothing
    this.RECORD_ID = nothing
    this.MAXHIGHSCORES = Int32(0)
    this.gameInfo = nothing
    this.abeClientInformation = nothing
    this.recordComparatorInterface = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.platformRecordIdUtil = AllBinary.getInstance(PlatformRecordIdUtil)
    this.tsUtil = AllBinary.getInstance(TsUtil)
    this.RECORD_ID = "_HS"
    this.MAXHIGHSCORES = Int32(100)
    
    
    
    nothing
end


function initRecordStoreHighScores(this::RecordStoreHighScores, abeClientInformation, gameInfo, name, heading, columnTwoHeading, recordComparatorInterface)
        initHighScores(this, name, heading, columnTwoHeading)
        initFieldsRecordStoreHighScores(this)
        this.abeClientInformation = abeClientInformation
        this.gameInfo = gameInfo
        this.recordComparatorInterface = recordComparatorInterface
        AllBinary.load(this)
        nothing
end

function newRecordStoreHighScores(abeClientInformation, gameInfo, name, heading, columnTwoHeading, recordComparatorInterface)
    this = RecordStoreHighScores()
    initRecordStoreHighScores(this, abeClientInformation, gameInfo, name, heading, columnTwoHeading, recordComparatorInterface)
    this
end


function getInstance(::Type{RecordStoreHighScores}, abeClientInformation, gameInfo, highScoreName, heading, columnTwoHeading, recordComparatorInterface)
        local highScoresCanBeNull = AllBinary.get(staticGet_hashTable(RecordStoreHighScores), (highScoreName))
        if highScoresCanBeNull === nothing
            local highScores = newRecordStoreHighScores(abeClientInformation, gameInfo, highScoreName, heading, columnTwoHeading, recordComparatorInterface)
            AllBinary.put(staticGet_hashTable(RecordStoreHighScores), AllBinary.getName(highScores), highScores)
            return highScores
        end
        return (highScoresCanBeNull)
end


function getRecordId(this::RecordStoreHighScores, abeClientInformation)
        return AllBinary.getRecordId(this.platformRecordIdUtil, abeClientInformation, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonSeps).UNDERSCORE), AllBinary.getName(this)), this.RECORD_ID)))
end


function addHighScore(this::RecordStoreHighScores, newHighScore)
        local recordStore = staticGet_NULL_RECORD_STORE(NullRecordStore)
        try
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendlong(AllBinary.append(newStringMaker(), "Adding HighScore: "), ((AllBinary.getScore(newHighScore)) % Int64))), this, this.commonStrings.ADD)
            if AllBinary.isTooManyHighScores(this)
                AllBinary.putF(this.logUtil, "Removing Lowest Score", this, this.commonStrings.ADD)
                AllBinary.removeLowestHighScore(this)
            end
            recordStore = AllBinary.openRecordStore(RecordStore, AllBinary.getRecordId(this, this.abeClientInformation), true)
            local highScoreBytes = AllBinary.getAsBytes(newHighScore)
            local recordId::Int32 = AllBinary.addRecord(recordStore, highScoreBytes, Int32(0), Int32(Base.length(highScoreBytes)))
            AllBinary.load(this)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e)
        finally
            try
                if recordStore !== nothing
                    AllBinary.put(PreLogUtil, "Closing RecordStore", this, this.commonStrings.ADD)
                    AllBinary.closeRecordStore(recordStore)
                end
            catch e
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e)
            end
        end
        nothing
end


function removeLowestHighScore(this::RecordStoreHighScores)
        local recordStore = staticGet_NULL_RECORD_STORE(NullRecordStore)
        try
            recordStore = AllBinary.openRecordStore(RecordStore, AllBinary.getRecordId(this, this.abeClientInformation), true)
            local recordEnum = AllBinary.enumerateRecords(recordStore, staticGet_NULL_RECORD_FILTER(NullRecordFilter), staticGet_NULL_RECORD_COMPARATOR(NullRecordComparator), true)
            local scoreComparator = ((this.recordComparatorInterface))
            local bestHighScore = newHighScore(-Int32(1), "none", staticGet_NONE(GameInfo), AllBinary.getBestScore(scoreComparator))
            local recordAsBytes = nothing
            local byteArrayInputStream = nothing
            local inputStream = nothing
            while AllBinary.hasNextElement(recordEnum)
                local id::Int32 = AllBinary.nextRecordId(recordEnum)
                recordAsBytes = AllBinary.getRecord(this.tsUtil, recordStore, id)
                if recordAsBytes !== nothing
                    byteArrayInputStream = newByteArrayInputStream(recordAsBytes)
                    inputStream = newDataInputStream(byteArrayInputStream)
                    local name = AllBinary.readUTF(inputStream)
                    local nextScore::Int64 = AllBinary.readLong(inputStream)
                    local nextCurrentHighScore = newHighScore(id, name, staticGet_NONE(GameInfo), nextScore)
                    if AllBinary.compare(this.recordComparatorInterface, AllBinary.getAsBytes(nextCurrentHighScore), AllBinary.getAsBytes(bestHighScore)) == staticGet_FOLLOWS(RecordComparator)
                        bestHighScore = nextCurrentHighScore
                    end
                end
            end
            if AllBinary.getId(bestHighScore) != -Int32(1)
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendlong(AllBinary.append(newStringMaker(), "Removing Lowest HighScore: "), ((AllBinary.getScore(bestHighScore)) % Int64))), this, this.commonStrings.LOAD)
                AllBinary.deleteRecord(recordStore, AllBinary.getId(bestHighScore))
            end
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, "removeLowestHighScore", e)
        finally
            try
                if recordStore !== nothing
                    AllBinary.put(PreLogUtil, "Closing RecordStore", this, "removeLowestHighScore")
                    AllBinary.closeRecordStore(recordStore)
                end
            catch e
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, "removeLowestHighScore", e)
            end
        end
        nothing
end


function load(this::RecordStoreHighScores)
        local recordStore = staticGet_NULL_RECORD_STORE(NullRecordStore)
        try
            recordStore = AllBinary.openRecordStore(RecordStore, AllBinary.getRecordId(this, this.abeClientInformation), true)
            AllBinary.setList(this, newBasicArrayListD())
            local recordEnum = AllBinary.enumerateRecords(recordStore, staticGet_NULL_RECORD_FILTER(NullRecordFilter), staticGet_NULL_RECORD_COMPARATOR(NullRecordComparator), true)
            local recordAsBytes = nothing
            local byteArrayInputStream = nothing
            local inputStream = nothing
            while AllBinary.hasNextElement(recordEnum)
                local id::Int32 = AllBinary.nextRecordId(recordEnum)
                recordAsBytes = AllBinary.getRecord(this.tsUtil, recordStore, id)
                if recordAsBytes !== nothing
                    byteArrayInputStream = newByteArrayInputStream(recordAsBytes)
                    inputStream = newDataInputStream(byteArrayInputStream)
                    try
                        local name = AllBinary.readUTF(inputStream)
                        local score::Int64 = AllBinary.readLong(inputStream)
                        local newHighScore = newHighScore(id, name, staticGet_NONE(GameInfo), score)
                        local list = AllBinary.getList(this)
                        local size::Int32 = AllBinary.size(list)
                        local lastIndex::Int32 = size
                        let
                            local index::Int32 = Int32(0)
                            while index < size
                            try
                            local highScore = (list.objectArray[index + 1])
                            if AllBinary.compare(this.recordComparatorInterface, AllBinary.getAsBytes(newHighScore), AllBinary.getAsBytes(highScore)) == staticGet_PRECEDES(RecordComparator)
                                lastIndex = index
                                break
                            end
                            finally
                                index += Int32(1)
                            end
                            end
                        end
                        AllBinary.addAt(list, lastIndex, newHighScore)
                    catch e
                        AllBinary.put(this.logUtil, "EOF", this, this.commonStrings.LOAD, e)
                        throw(e)
                    end
                end
            end
        catch e
            AllBinary.put(this.logUtil, "No High Scores", this, this.commonStrings.LOAD, e)
        finally
            try
                if recordStore !== nothing
                    AllBinary.put(PreLogUtil, "Closing RecordStore", this, this.commonStrings.LOAD)
                    AllBinary.closeRecordStore(recordStore)
                end
            catch e
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.LOAD, e)
            end
        end
        nothing
end


function isTooManyHighScores(this::RecordStoreHighScores)
        if AllBinary.getList(this) !== nothing && AllBinary.size(AllBinary.getList(this)) < this.MAXHIGHSCORES
            return false
        else
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), "HighScores RecordStore Max Reached: "), this.MAXHIGHSCORES)), this, "isTooManyHighScores")
            return true
        end
end


function isBestScore(this::RecordStoreHighScores, newHighScore)
        try
            if !AllBinary.isTooManyHighScores(this)
                AllBinary.putF(this.logUtil, "Slot Available for a High Score", this, "isBestScore")
                return true
            else
                local list = AllBinary.getList(this)
                local size::Int32 = AllBinary.size(list)
                let
                    local index::Int32 = Int32(0)
                    while index < size
                    try
                    local highScore = (list.objectArray[index + 1])
                    if AllBinary.compare(this.recordComparatorInterface, AllBinary.getAsBytes(newHighScore), AllBinary.getAsBytes(highScore)) == staticGet_FOLLOWS(RecordComparator)
                        AllBinary.putF(this.logUtil, "Obtained a High Score", this, "isBestScore")
                        return true
                    end
                    finally
                        index += Int32(1)
                    end
                    end
                end
            end
            AllBinary.putF(this.logUtil, "Not a High Score", this, "isBestScore")
            return false
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e)
            throw(e)
        end
end


function toString(this::RecordStoreHighScores)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, AllBinary.toString(this))
        local list = AllBinary.getList(this)
        local size::Int32 = AllBinary.size(list)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            local highScore = (list.objectArray[index + 1])
            AllBinary.append(stringBuffer, AllBinary.getScoreString(highScore))
            AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).COMMA_SEP)
            finally
                index += Int32(1)
            end
            end
        end
        return AllBinary.toString(stringBuffer)
end

