#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.game.configuration.persistance

mutable struct PersistanceStrings <: JObject
    SAVING::Any
    NUMBER_OF_RECORDS::Any
    LOADING_ID::Any
    LOAD_ALL::Any
    DELETING_WITH_ID::Any
    CLOSING_RECORDSTORE::Any
    NOT_SAVING::Any
    ERROR_LOADING::Any
    ERROR_LOADING_ID::Any
    ID::Any
    GAME_ACTION_INPUT::Any
    PersistanceStrings() = new()
end

const PersistanceStrings_instanceValue = Ref{Any}(nothing)
const PersistanceStrings_instanceSet = Ref(false)
function staticGet_instance(::Type{PersistanceStrings})
    if !PersistanceStrings_instanceSet[]
        PersistanceStrings_instanceSet[] = true
        PersistanceStrings_instanceValue[] = newPersistanceStrings()
    end
    PersistanceStrings_instanceValue[]
end
function staticSet_instance(::Type{PersistanceStrings}, value)
    PersistanceStrings_instanceSet[] = true
    PersistanceStrings_instanceValue[] = value
end

function initFieldsPersistanceStrings(this::PersistanceStrings)
    this.SAVING = nothing
    this.NUMBER_OF_RECORDS = nothing
    this.LOADING_ID = nothing
    this.LOAD_ALL = nothing
    this.DELETING_WITH_ID = nothing
    this.CLOSING_RECORDSTORE = nothing
    this.NOT_SAVING = nothing
    this.ERROR_LOADING = nothing
    this.ERROR_LOADING_ID = nothing
    this.ID = nothing
    this.GAME_ACTION_INPUT = nothing
    this.SAVING = "Saving: "
    this.NUMBER_OF_RECORDS = "Number of records: "
    this.LOADING_ID = "Loading data with id: "
    this.LOAD_ALL = "loadAll"
    this.DELETING_WITH_ID = "Deleting data with id: "
    this.CLOSING_RECORDSTORE = "Closing RecordStore"
    this.NOT_SAVING = "Not Saving: "
    this.ERROR_LOADING = "Error Loading gameActionInput: "
    this.ERROR_LOADING_ID = "Error Loading id: "
    this.ID = " id: "
    this.GAME_ACTION_INPUT = " GameActionInput: "
    nothing
end

function initPersistanceStrings(this::PersistanceStrings)
    initFieldsPersistanceStrings(this)
end

function newPersistanceStrings()
    this = PersistanceStrings()
    initPersistanceStrings(this)
    this
end


function getInstance(::Type{PersistanceStrings})
        return staticGet_instance(PersistanceStrings)
end

