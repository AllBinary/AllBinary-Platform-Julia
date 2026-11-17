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
# package org.allbinary.game.configuration

mutable struct GameConfigurationTextInput <: JObject
    label::Any
    text::Any
    GameConfigurationTextInput() = new()
end

const GameConfigurationTextInput_hashtableValue = Ref{Any}(nothing)
const GameConfigurationTextInput_hashtableSet = Ref(false)
function staticGet_hashtable(::Type{GameConfigurationTextInput})
    if !GameConfigurationTextInput_hashtableSet[]
        GameConfigurationTextInput_hashtableSet[] = true
        GameConfigurationTextInput_hashtableValue[] = AllBinary.createHashtable(AllBinary.getInstance(StdUtil))
    end
    GameConfigurationTextInput_hashtableValue[]
end
function staticSet_hashtable(::Type{GameConfigurationTextInput}, value)
    GameConfigurationTextInput_hashtableSet[] = true
    GameConfigurationTextInput_hashtableValue[] = value
end
const GameConfigurationTextInput_SIMULATOR_IPValue = Ref{Any}(nothing)
const GameConfigurationTextInput_SIMULATOR_IPSet = Ref(false)
function staticGet_SIMULATOR_IP(::Type{GameConfigurationTextInput})
    if !GameConfigurationTextInput_SIMULATOR_IPSet[]
        GameConfigurationTextInput_SIMULATOR_IPSet[] = true
        GameConfigurationTextInput_SIMULATOR_IPValue[] = newGameConfigurationTextInput("IP: ", "192.168.1.3")
    end
    GameConfigurationTextInput_SIMULATOR_IPValue[]
end
function staticSet_SIMULATOR_IP(::Type{GameConfigurationTextInput}, value)
    GameConfigurationTextInput_SIMULATOR_IPSet[] = true
    GameConfigurationTextInput_SIMULATOR_IPValue[] = value
end
const GameConfigurationTextInput_SIMULATOR_PORTValue = Ref{Any}(nothing)
const GameConfigurationTextInput_SIMULATOR_PORTSet = Ref(false)
function staticGet_SIMULATOR_PORT(::Type{GameConfigurationTextInput})
    if !GameConfigurationTextInput_SIMULATOR_PORTSet[]
        GameConfigurationTextInput_SIMULATOR_PORTSet[] = true
        GameConfigurationTextInput_SIMULATOR_PORTValue[] = newGameConfigurationTextInput("Port: ", "8010")
    end
    GameConfigurationTextInput_SIMULATOR_PORTValue[]
end
function staticSet_SIMULATOR_PORT(::Type{GameConfigurationTextInput}, value)
    GameConfigurationTextInput_SIMULATOR_PORTSet[] = true
    GameConfigurationTextInput_SIMULATOR_PORTValue[] = value
end

function initFieldsGameConfigurationTextInput(this::GameConfigurationTextInput)
    this.label = nothing
    this.text = nothing
    this.label = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.text = AllBinary.getInstance(StringUtil).EMPTY_STRING
    nothing
end


function initGameConfigurationTextInput(this::GameConfigurationTextInput, label, text)
        initFieldsGameConfigurationTextInput(this)
        AllBinary.setText(this, text)
        AllBinary.setLabel(this, label)
        AllBinary.put(staticGet_hashtable(GameConfigurationTextInput), AllBinary.getLabel(this), this)
        nothing
end

function newGameConfigurationTextInput(label, text)
    this = GameConfigurationTextInput()
    initGameConfigurationTextInput(this, label, text)
    this
end


function update(::Type{GameConfigurationTextInput}, textField)
        local anyType = (AllBinary.getLabel(textField))
        local gameConfigurationTextInput = (AllBinary.get(staticGet_hashtable(GameConfigurationTextInput), anyType))
        AllBinary.setText(gameConfigurationTextInput, AllBinary.getString(textField))
        nothing
end


function setText(this::GameConfigurationTextInput, text)
        this.text = text
        nothing
end


function getText(this::GameConfigurationTextInput)
        return this.text
end


function setLabel(this::GameConfigurationTextInput, label)
        this.label = label
        nothing
end


function getLabel(this::GameConfigurationTextInput)
        return this.label
end


function getHashtable(::Type{GameConfigurationTextInput})
        return staticGet_hashtable(GameConfigurationTextInput)
end

