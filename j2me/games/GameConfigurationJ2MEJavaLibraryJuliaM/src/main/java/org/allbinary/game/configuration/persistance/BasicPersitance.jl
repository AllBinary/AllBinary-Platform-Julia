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
# package org.allbinary.game.configuration.persistance

mutable struct BasicPersitance <: JObject
    logUtil::Any
    commonStrings::Any
    persistanceStrings::Any
    platformRecordIdUtil::Any
    recordId::Any
    valueList::Any
    idList::Any
    BasicPersitance() = new()
end


function initFieldsBasicPersitance(this::BasicPersitance)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.persistanceStrings = nothing
    this.platformRecordIdUtil = nothing
    this.recordId = nothing
    this.valueList = nothing
    this.idList = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.persistanceStrings = AllBinary.getInstance(PersistanceStrings)
    this.platformRecordIdUtil = AllBinary.getInstance(PlatformRecordIdUtil)
    
    this.valueList = newBasicArrayListD()
    this.idList = newBasicArrayListD()
    nothing
end


function initBasicPersitance(this::BasicPersitance, recordId)
        initFieldsBasicPersitance(this)
        this.recordId = recordId
        nothing
end

function newBasicPersitance(recordId)
    this = BasicPersitance()
    initBasicPersitance(this, recordId)
    this
end


function deleteRecoreStore(this::BasicPersitance, abeClientInformation)
        AllBinary.deleteRecordStore(RecordStore, AllBinary.getRecordId(this, abeClientInformation))
        nothing
end


function deleteAll(this::BasicPersitance, abeClientInformation)
        local size::Int32 = AllBinary.size(this.idList)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            local integer = (this.idList.objectArray[index + 1])
            AllBinary.delete(this, abeClientInformation, AllBinary.intValue(integer))
            finally
                index += Int32(1)
            end
            end
        end
        AllBinary.clear(this)
        nothing
end


function delete(this::BasicPersitance, abeClientInformation, deleteId)
        local recordStore = staticGet_NULL_RECORD_STORE(NullRecordStore)
        try
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), this.persistanceStrings.DELETING_WITH_ID), deleteId)), this, this.commonStrings.delete)
            recordStore = AllBinary.openRecordStore(RecordStore, AllBinary.getRecordId(this, abeClientInformation), true)
            AllBinary.deleteRecord(recordStore, deleteId)
        catch e
            throw(e)
        finally
            if recordStore !== nothing
                AllBinary.put(PreLogUtil, this.persistanceStrings.CLOSING_RECORDSTORE, this, this.commonStrings.delete)
                AllBinary.closeRecordStore(recordStore)
            end
        end
        nothing
end


function getRecordId(this::BasicPersitance, abeClientInformation)
        return AllBinary.getRecordId(this.platformRecordIdUtil, abeClientInformation, this.recordId)
end


function getList(this::BasicPersitance)
        return this.valueList
end


function getIds(this::BasicPersitance)
        return this.idList
end


function clear(this::BasicPersitance)
        AllBinary.clear(this.valueList)
        AllBinary.clear(this.idList)
        nothing
end

