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
# package org.allbinary.game.input

#GameInputPersistanceLibrary
# extends BasicPersitance: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct InputPersistance <: JObject
    tsUtil::Any
    hashtableUtil::Any
    InputPersistance() = new()
end


function initFieldsInputPersistance(this::InputPersistance)
    this.tsUtil = nothing
    this.hashtableUtil = nothing
    this.tsUtil = AllBinary.getInstance(TsUtil)
    this.hashtableUtil = AllBinary.getInstance(HashtableUtil)
    nothing
end


function initInputPersistance(this::InputPersistance, name)
        initBasicPersitance(this, name)
        initFieldsInputPersistance(this)
        nothing
end

function newInputPersistance(name)
    this = InputPersistance()
    initInputPersistance(this, name)
    this
end


function loadAll(this::InputPersistance, abeClientInformation)
        local recordStore = staticGet_NULL_RECORD_STORE(NullRecordStore)
        try
            recordStore = AllBinary.openRecordStore(RecordStore, AllBinary.getRecordId(this, abeClientInformation), true)
            local recordEnum = AllBinary.enumerateRecords(recordStore, staticGet_NULL_RECORD_FILTER(NullRecordFilter), staticGet_NULL_RECORD_COMPARATOR(NullRecordComparator), true)
            local gameActionInputId::Int64 = Int64(0)
            local inputId::Int64 = Int64(0)
            local gameActionInput = nothing
            local input = nothing
            local hashtable = nothing
            local gameKeyFactory = AllBinary.getInstance(GameKeyMappingFactory)
            local stringBuffer = newStringMaker()
            local inputFactory = AllBinary.getInstance(InputFactory)
            local smallIntegerSingletonFactory = AllBinary.getInstance(SmallIntegerSingletonFactory)
            local stdUtil = AllBinary.getInstance(StdUtil)
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
                    hashtable = AllBinary.createHashtable(stdUtil)
                    local value::Int32 = Int32(0)
                    while AllBinary.available(inputStream) > Int32(0)
                        local gameActionInputIdAsString = AllBinary.readUTF(inputStream)
                        value = Base.parse(Int32, gameActionInputIdAsString)
                        gameActionInputId = ((value) % Int64)
                        AllBinary.readUTF(inputStream)
                        value = Base.parse(Int32, AllBinary.readUTF(inputStream))
                        inputId = ((value) % Int64)
                        gameActionInput = AllBinary.getGameKey(gameKeyFactory, ((gameActionInputId) % Int32))
                        input = AllBinary.getInstanceById(inputFactory, ((inputId) % Int32))
                        if input === inputFactory.NO_INPUT || gameActionInput === nothing
                            AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
                            if input === inputFactory.NO_INPUT
                                AllBinary.append(stringBuffer, this.persistanceStrings.ERROR_LOADING_ID)
                                AllBinary.appendlong(stringBuffer, inputId)
                                AllBinary.append(stringBuffer, this.persistanceStrings.GAME_ACTION_INPUT)
                                AllBinary.appendlong(stringBuffer, gameActionInputId)
                                AllBinary.put(PreLogUtil, AllBinary.toString(stringBuffer), this, this.persistanceStrings.LOAD_ALL)
                            end
                            if gameActionInput === nothing
                                AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
                                AllBinary.append(stringBuffer, this.persistanceStrings.ERROR_LOADING)
                                AllBinary.appendlong(stringBuffer, gameActionInputId)
                                AllBinary.append(stringBuffer, this.persistanceStrings.ID)
                                AllBinary.appendlong(stringBuffer, inputId)
                                AllBinary.put(PreLogUtil, AllBinary.toString(stringBuffer), this, this.persistanceStrings.LOAD_ALL)
                            end
                        else
                            nothing
                        end
                        AllBinary.put(hashtable, input, gameActionInput)
                    end
                    AllBinary.add(this.valueList, hashtable)
                    AllBinary.add(this.idList, AllBinary.getAt(smallIntegerSingletonFactory, id))
                else
                    nothing
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


function save(this::InputPersistance, abeClientInformation, hashtable)
        local recordStore = staticGet_NULL_RECORD_STORE(NullRecordStore)
        try
            local stringBuffer = newStringMaker()
            AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(stringBuffer, this.persistanceStrings.SAVING), AllBinary.toString(AllBinary.getInstance(StringUtil), hashtable))), this, this.commonStrings.SAVE)
            recordStore = AllBinary.openRecordStore(RecordStore, AllBinary.getRecordId(this, abeClientInformation), true)
            local byteArrayOutputStream = newByteArrayOutputStream()
            local outputStream = newDataOutputStream(byteArrayOutputStream)
            local gameActionInput = nothing
            local list = nothing
            local input = nothing
            local savedGameBytes = nothing
            local commonSeps = AllBinary.getInstance(CommonSeps)
            local smallIntegerSingletonFactory = AllBinary.getInstance(SmallIntegerSingletonFactory)
            local inputObjectArray = AllBinary.getKeysAsArray(this.hashtableUtil, hashtable)
            local size::Int32 = Int32(Base.length(inputObjectArray))
            let
                local index::Int32 = Int32(0)
                while index < size
                try
                gameActionInput = (inputObjectArray[index + 1])
                list = (AllBinary.get(hashtable, (inputObjectArray[index + 1])))
                let
                    local index2::Int32 = Int32(0)
                    while index2 < AllBinary.size(list)
                    try
                    local gameActionInputIdAsString = AllBinary.toString(AllBinary.getAt(smallIntegerSingletonFactory, AllBinary.getId(gameActionInput)))
                    AllBinary.writeUTF(outputStream, gameActionInputIdAsString)
                    AllBinary.writeUTF(outputStream, commonSeps.EQUALS)
                    input = (list.objectArray[index2 + 1])
                    local inputIdAsString = AllBinary.toString(AllBinary.getAt(smallIntegerSingletonFactory, AllBinary.getId(input)))
                    AllBinary.writeUTF(outputStream, inputIdAsString)
                    finally
                        index2 += Int32(1)
                    end
                    end
                end
                finally
                    index += Int32(1)
                end
                end
            end
            savedGameBytes = AllBinary.toByteArray(byteArrayOutputStream)
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

