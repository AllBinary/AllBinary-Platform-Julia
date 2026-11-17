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
# package org.allbinary.game.input.mapping

#GameInputPersistanceLibrary
mutable struct PersistentInputMapping <: JObject
    logUtil::Any
    commonStrings::Any
    enumerationUtil::Any
    inputMapping::Any
    inputMappingEventListenerInterface::Any
    inputPersistance::Any
    inputMappingEvent::Any
    PersistentInputMapping() = new()
end

const PersistentInputMapping_instanceValue = Ref{Any}(nothing)
const PersistentInputMapping_instanceSet = Ref(false)
function staticGet_instance(::Type{PersistentInputMapping})
    if !PersistentInputMapping_instanceSet[]
        PersistentInputMapping_instanceSet[] = true
        PersistentInputMapping_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    PersistentInputMapping_instanceValue[]
end
function staticSet_instance(::Type{PersistentInputMapping}, value)
    PersistentInputMapping_instanceSet[] = true
    PersistentInputMapping_instanceValue[] = value
end

function initFieldsPersistentInputMapping(this::PersistentInputMapping)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.enumerationUtil = nothing
    this.inputMapping = nothing
    this.inputMappingEventListenerInterface = nothing
    this.inputPersistance = nothing
    this.inputMappingEvent = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.enumerationUtil = AllBinary.getInstance(EnumerationUtil)
    this.inputMapping = newInputToGameKeyMapping()
    this.inputMappingEventListenerInterface = staticGet_NULL_INPUT_MAPPING_EVENT_LISTENER(NullInputMappingEventListener)
    
    this.inputMappingEvent = newInputMappingEvent(this)
    nothing
end


function getNullInstance(::Type{PersistentInputMapping})
        if staticGet_instance(PersistentInputMapping) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(PersistentInputMapping, newPersistentInputMapping(AllBinary.getInstance(GamePersistanceStrings).SAVED_INPUT_CONFIGURATION_RECORD_ID))
        end
        return (staticGet_instance(PersistentInputMapping))
end


function initPersistentInputMapping(this::PersistentInputMapping, name)
        initFieldsPersistentInputMapping(this)
        this.inputPersistance = newInputPersistance(name)
        nothing
end

function newPersistentInputMapping(name)
    this = PersistentInputMapping()
    initPersistentInputMapping(this, name)
    this
end


function getTotalMapped(this::PersistentInputMapping)
        return AllBinary.size(AllBinary.getHashtable(AllBinary.getInputMapping(this)))
end


function isDefaultNew(this::PersistentInputMapping)
        return false
end


function getDefault(this::PersistentInputMapping)
        return AllBinary.getNullInstance(InputToGameKeyMapping)
end


function setDefault(this::PersistentInputMapping, abeClientInformation)
        AllBinary.removeAll(AllBinary.getInputMapping(this))
        AllBinary.addMapping(AllBinary.getInputMapping(this), AllBinary.getDefault(this))
        AllBinary.save(this, abeClientInformation)
        nothing
end


function update(this::PersistentInputMapping, abeClientInformation)
        AllBinary.deleteAll(this.inputPersistance, abeClientInformation)
        AllBinary.save(this, abeClientInformation)
        nothing
end


function save(this::PersistentInputMapping, abeClientInformation)
        AllBinary.save(this.inputPersistance, abeClientInformation, AllBinary.getHashtable(AllBinary.getInputMapping(this)))
        AllBinary.setInputToGameKeyMapping(this.inputMappingEvent, AllBinary.getInputMapping(this))
        if AllBinary.getInputMappingEventListenerInterface(this) !== nothing
            AllBinary.onInputMappingEvent(AllBinary.getInputMappingEventListenerInterface(this), this.inputMappingEvent)
        end
        nothing
end


function init(this::PersistentInputMapping, abeClientInformation)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.INIT)
        try
            AllBinary.loadAll(this.inputPersistance, abeClientInformation)
        catch e
            AllBinary.putOE(PreLogUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, e)
            AllBinary.deleteRecoreStore(this.inputPersistance, abeClientInformation)
            AllBinary.setDefault(this, abeClientInformation)
            AllBinary.loadAll(this.inputPersistance, abeClientInformation)
        end
        local list = AllBinary.getList(this.inputPersistance)
        local totalMappedTo::Int32 = Int32(0)
        local size::Int32 = AllBinary.size(list)
        local hashtable = nothing
        local enumeration = nothing
        local mappedToInput = nothing
        local gameActionInput = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            hashtable = (list.objectArray[index + 1])
            enumeration = AllBinary.keys(hashtable)
            while AllBinary.hasMoreElements(this.enumerationUtil, enumeration)
                mappedToInput = (AllBinary.nextElement(this.enumerationUtil, enumeration))
                gameActionInput = (AllBinary.get(hashtable, mappedToInput))
                totalMappedTo += Int32(1)
                AllBinary.add(AllBinary.getInputMapping(this), gameActionInput, mappedToInput)
            end
            finally
                index += Int32(1)
            end
            end
        end
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "End - Total Loaded Keys Mapped: ")
        AllBinary.appendint(stringBuffer, AllBinary.getTotalMapped(this))
        AllBinary.append(stringBuffer, " to: ")
        AllBinary.appendint(stringBuffer, totalMappedTo)
        AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, this.commonStrings.INIT)
        nothing
end


function setInputMappingEventListenerInterface(this::PersistentInputMapping, inputMappingEventListenerInterface)
        this.inputMappingEventListenerInterface = inputMappingEventListenerInterface
        nothing
end


function getInputMappingEventListenerInterface(this::PersistentInputMapping)
        return this.inputMappingEventListenerInterface
end


function getInputMapping(this::PersistentInputMapping)
        return this.inputMapping
end


function isDelete(this::PersistentInputMapping, input)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
end


function isSystemInput(this::PersistentInputMapping, input)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
end

