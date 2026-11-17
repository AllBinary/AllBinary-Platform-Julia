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

mutable struct HighScoreNamePersistanceSingleton <: JObject
    logUtil::Any
    tsUtil::Any
    commonStrings::Any
    platformRecordIdUtil::Any
    RECORD_ID::Any
    name::Any
    nameBasicArrayList::Any
    HighScoreNamePersistanceSingleton() = new()
end

const HighScoreNamePersistanceSingleton_SINGLETONValue = Ref{Any}(nothing)
const HighScoreNamePersistanceSingleton_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{HighScoreNamePersistanceSingleton})
    if !HighScoreNamePersistanceSingleton_SINGLETONSet[]
        HighScoreNamePersistanceSingleton_SINGLETONSet[] = true
        HighScoreNamePersistanceSingleton_SINGLETONValue[] = newHighScoreNamePersistanceSingleton()
    end
    HighScoreNamePersistanceSingleton_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{HighScoreNamePersistanceSingleton}, value)
    HighScoreNamePersistanceSingleton_SINGLETONSet[] = true
    HighScoreNamePersistanceSingleton_SINGLETONValue[] = value
end

function initFieldsHighScoreNamePersistanceSingleton(this::HighScoreNamePersistanceSingleton)
    this.logUtil = nothing
    this.tsUtil = nothing
    this.commonStrings = nothing
    this.platformRecordIdUtil = nothing
    this.RECORD_ID = nothing
    this.name = nothing
    this.nameBasicArrayList = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.tsUtil = AllBinary.getInstance(TsUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.platformRecordIdUtil = AllBinary.getInstance(PlatformRecordIdUtil)
    this.RECORD_ID = "_SN"
    this.name = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.nameBasicArrayList = newBasicArrayListD()
    nothing
end

function initHighScoreNamePersistanceSingleton(this::HighScoreNamePersistanceSingleton)
    initFieldsHighScoreNamePersistanceSingleton(this)
end

function newHighScoreNamePersistanceSingleton()
    this = HighScoreNamePersistanceSingleton()
    initHighScoreNamePersistanceSingleton(this)
    this
end


function getInstance(::Type{HighScoreNamePersistanceSingleton})
        return staticGet_SINGLETON(HighScoreNamePersistanceSingleton)
end


function clear(this::HighScoreNamePersistanceSingleton)
        this.name = AllBinary.getInstance(StringUtil).EMPTY_STRING
        nothing
end


function deleteAll(this::HighScoreNamePersistanceSingleton, abeClientInformation, gameInfo)
        local size::Int32 = AllBinary.size(this.nameBasicArrayList)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            local integer = (this.nameBasicArrayList.objectArray[index + 1])
            AllBinary.delete(this, abeClientInformation, gameInfo, AllBinary.intValue(integer))
            finally
                index += Int32(1)
            end
            end
        end
        AllBinary.clear(this)
        nothing
end


function getRecordId(this::HighScoreNamePersistanceSingleton, abeClientInformation)
        return AllBinary.getRecordId(this.platformRecordIdUtil, abeClientInformation, this.RECORD_ID)
end


function delete(this::HighScoreNamePersistanceSingleton, abeClientInformation, gameInfo, deleteId)
        local recordStore = staticGet_NULL_RECORD_STORE(NullRecordStore)
        try
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), "Deleting: "), deleteId)), this, this.commonStrings.delete)
            recordStore = AllBinary.openRecordStore(RecordStore, AllBinary.getRecordId(this, abeClientInformation), true)
            AllBinary.deleteRecord(recordStore, deleteId)
        catch e
            throw(e)
        finally
            if recordStore !== nothing
                AllBinary.put(PreLogUtil, "Closing RecordStore", this, this.commonStrings.delete)
                AllBinary.closeRecordStore(recordStore)
            end
        end
        nothing
end


function getIds(this::HighScoreNamePersistanceSingleton)
        return this.nameBasicArrayList
end


function load(this::HighScoreNamePersistanceSingleton, abeClientInformation, gameInfo)
        local recordStore = staticGet_NULL_RECORD_STORE(NullRecordStore)
        try
            if this.name == AllBinary.getInstance(StringUtil).EMPTY_STRING
                local LOADING_ID = "Loading id: "
                recordStore = AllBinary.openRecordStore(RecordStore, AllBinary.getRecordId(this, abeClientInformation), true)
                local recordEnum = AllBinary.enumerateRecords(recordStore, staticGet_NULL_RECORD_FILTER(NullRecordFilter), staticGet_NULL_RECORD_COMPARATOR(NullRecordComparator), true)
                local smallIntegerSingletonFactory = AllBinary.getInstance(SmallIntegerSingletonFactory)
                local recordAsBytes = nothing
                local byteArrayInputStream = nothing
                local inputStream = nothing
                while AllBinary.hasNextElement(recordEnum)
                    local id::Int32 = AllBinary.nextRecordId(recordEnum)
                    AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), LOADING_ID), id)), this, this.commonStrings.LOAD)
                    recordAsBytes = AllBinary.getRecord(this.tsUtil, recordStore, id)
                    byteArrayInputStream = newByteArrayInputStream(recordAsBytes)
                    inputStream = newDataInputStream(byteArrayInputStream)
                    while AllBinary.available(inputStream) > Int32(0)
                        this.name = AllBinary.readUTF(inputStream)
                    end
                    AllBinary.add(this.nameBasicArrayList, AllBinary.getAt(smallIntegerSingletonFactory, id))
                end
            end
        catch e
            AllBinary.save(this, abeClientInformation, gameInfo, this.name)
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.commonStrings.EXCEPTION_LABEL), AllBinary.getStackTrace(AllBinary.getInstance(ExceptionUtil), e))), this, this.commonStrings.LOAD)
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
        return this.name
end


function save(this::HighScoreNamePersistanceSingleton, abeClientInformation, gameInfo, name)
        local recordStore = staticGet_NULL_RECORD_STORE(NullRecordStore)
        try
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Saving: "), name)), this, this.commonStrings.SAVE)
            recordStore = AllBinary.openRecordStore(RecordStore, AllBinary.getRecordId(this, abeClientInformation), true)
            local byteArrayOutputStream = newByteArrayOutputStream()
            local outputStream = newDataOutputStream(byteArrayOutputStream)
            AllBinary.writeUTF(outputStream, name)
            local savedGameBytes = AllBinary.toByteArray(byteArrayOutputStream)
            AllBinary.addRecord(recordStore, savedGameBytes, Int32(0), Int32(Base.length(savedGameBytes)))
            this.name = name
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.SAVE, e)
        finally
            try
                if recordStore !== nothing
                    AllBinary.put(PreLogUtil, "Closing RecordStore", this, this.commonStrings.SAVE)
                    AllBinary.closeRecordStore(recordStore)
                end
            catch e
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.SAVE, e)
            end
        end
        nothing
end

