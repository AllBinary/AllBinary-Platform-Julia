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

# extends BasicPersitance: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct KeyValuePersistance <: JObject
    tsUtil::Any
    KeyValuePersistance() = new()
end


function initFieldsKeyValuePersistance(this::KeyValuePersistance)
    this.tsUtil = nothing
    this.tsUtil = AllBinary.getInstance(TsUtil)
    nothing
end


function initKeyValuePersistance(this::KeyValuePersistance, recordId)
        initBasicPersitance(this, recordId)
        initFieldsKeyValuePersistance(this)
        nothing
end

function newKeyValuePersistance(recordId)
    this = KeyValuePersistance()
    initKeyValuePersistance(this, recordId)
    this
end


function loadAll(this::KeyValuePersistance, abeClientInformation)
        AllBinary.loadAllSize(this, abeClientInformation, Int32(1))
        nothing
end


function loadAllSize(this::KeyValuePersistance, abeClientInformation, size)
        local recordStore = staticGet_NULL_RECORD_STORE(NullRecordStore)
        try
            recordStore = AllBinary.openRecordStore(RecordStore, AllBinary.getRecordId(this, abeClientInformation), true)
            local recordEnum = AllBinary.enumerateRecords(recordStore, staticGet_NULL_RECORD_FILTER(NullRecordFilter), staticGet_NULL_RECORD_COMPARATOR(NullRecordComparator), true)
            local hashtable = nothing
            local name = nothing
            local value = nothing
            local smallIntegerSingletonFactory = AllBinary.getInstance(SmallIntegerSingletonFactory)
            local stringBuffer = newStringMaker()
            local recordAsBytes = nothing
            local byteArrayInputStream = nothing
            local inputStream = nothing
            while AllBinary.hasNextElement(recordEnum)
                local id::Int32 = AllBinary.nextRecordId(recordEnum)
                AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(stringBuffer, this.persistanceStrings.LOADING_ID), id)), this, this.persistanceStrings.LOAD_ALL)
                recordAsBytes = AllBinary.getRecord(this.tsUtil, recordStore, id)
                if recordAsBytes !== nothing
                    byteArrayInputStream = newByteArrayInputStream(recordAsBytes)
                    inputStream = newDataInputStream(byteArrayInputStream)
                    hashtable = newABHashtable()
                    let
                        local index::Int32 = Int32(0)
                        while index < size
                        try
                        name = AllBinary.readUTF(inputStream)
                        AllBinary.readUTF(inputStream)
                        value = AllBinary.readUTF(inputStream)
                        AllBinary.put(hashtable, name, value)
                        finally
                            index += Int32(1)
                        end
                        end
                    end
                    AllBinary.add(this.valueList, hashtable)
                    AllBinary.add(this.idList, AllBinary.getAt(smallIntegerSingletonFactory, id))
                end
            end
        catch e
            throw(e)
        finally
            if recordStore !== nothing
                AllBinary.put(PreLogUtil, this.persistanceStrings.CLOSING_RECORDSTORE, this, this.persistanceStrings.LOAD_ALL)
                AllBinary.closeRecordStore(recordStore)
            end
        end
        nothing
end


function save(this::KeyValuePersistance, abeClientInformation, hashtable)
        local recordStore = staticGet_NULL_RECORD_STORE(NullRecordStore)
        try
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.persistanceStrings.SAVING), AllBinary.toString(AllBinary.getInstance(StringUtil), hashtable))), this, this.commonStrings.SAVE)
            recordStore = AllBinary.openRecordStore(RecordStore, AllBinary.getRecordId(this, abeClientInformation), true)
            local byteArrayOutputStream = newByteArrayOutputStream()
            local outputStream = newDataOutputStream(byteArrayOutputStream)
            local value = nothing
            local commonSeps = AllBinary.getInstance(CommonSeps)
            local objectArray = AllBinary.getKeysAsArray(AllBinary.getInstance(HashtableUtil), hashtable)
            local anyType = nothing
            local size::Int32 = Int32(Base.length(objectArray))
            let
                local index::Int32 = Int32(0)
                while index < size
                try
                AllBinary.writeUTF(outputStream, (objectArray[index + 1]))
                AllBinary.writeUTF(outputStream, commonSeps.EQUALS)
                anyType = (objectArray[index + 1])
                value = (AllBinary.get(hashtable, anyType))
                AllBinary.writeUTF(outputStream, value)
                finally
                    index += Int32(1)
                end
                end
            end
            local tsUtil = AllBinary.getInstance(TsUtil)
            local savedGameBytes = AllBinary.getByteArray(tsUtil, AllBinary.toString(byteArrayOutputStream))
            AllBinary.addRecord(recordStore, savedGameBytes, Int32(0), Int32(Base.length(savedGameBytes)))
        catch e
            throw(e)
        finally
            if recordStore !== nothing
                AllBinary.put(PreLogUtil, this.persistanceStrings.CLOSING_RECORDSTORE, this, this.commonStrings.SAVE)
                AllBinary.closeRecordStore(recordStore)
            end
        end
        nothing
end


function get(this::KeyValuePersistance, index)
        local hashtable = (this.valueList.objectArray[index + 1])
        return hashtable
end

