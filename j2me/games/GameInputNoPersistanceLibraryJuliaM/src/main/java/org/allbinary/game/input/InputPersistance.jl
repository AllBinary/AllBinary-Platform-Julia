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

#GameInputNoPersistanceLibrary
# extends BasicPersitance: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct InputPersistance <: JObject
    hashtableUtil::Any
    InputPersistance() = new()
end


function initFieldsInputPersistance(this::InputPersistance)
    this.hashtableUtil = nothing
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
        local recordStore = AllBinary.openRecordStore(RecordStore, AllBinary.getRecordId(this, abeClientInformation), true)
        local recordEnum = AllBinary.enumerateRecords(recordStore, staticGet_NULL_RECORD_FILTER(NullRecordFilter), staticGet_NULL_RECORD_COMPARATOR(NullRecordComparator), true)
        local hashtable = nothing
        local stringBuffer = newStringMaker()
        local smallIntegerSingletonFactory = AllBinary.getInstance(SmallIntegerSingletonFactory)
        local id::Int32 = Int32(0)
        while AllBinary.hasNextElement(recordEnum)
            id = AllBinary.nextRecordId(recordEnum)
            AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(stringBuffer, this.persistanceStrings.LOADING_ID), id)), this, this.persistanceStrings.LOAD_ALL)
            hashtable = AllBinary.createHashtable(AllBinary.getInstance(StdUtil))
            AllBinary.add(this.valueList, hashtable)
            AllBinary.add(this.idList, AllBinary.getAt(smallIntegerSingletonFactory, id))
        end
        AllBinary.closeRecordStore(recordStore)
        nothing
end


function save(this::InputPersistance, abeClientInformation, hashtable)
        AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.persistanceStrings.NOT_SAVING), AllBinary.toString(AllBinary.getInstance(StringUtil), hashtable))), this, this.commonStrings.SAVE)
        local recordStore = AllBinary.openRecordStore(RecordStore, AllBinary.getRecordId(this, abeClientInformation), true)
        local gameActionInput = nothing
        local list = nothing
        local input = nothing
        local inputObjectArray = AllBinary.getKeysAsArray(this.hashtableUtil, hashtable)
        local size::Int32 = Int32(Base.length(inputObjectArray))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            gameActionInput = (inputObjectArray[index + 1])
            list = (AllBinary.get(hashtable, inputObjectArray[index + 1]))
            let
                local index2::Int32 = Int32(0)
                while index2 < AllBinary.size(list)
                try
                input = (AllBinary.get(list, index2))
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
        AllBinary.closeRecordStore(recordStore)
        nothing
end

