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

mutable struct GameConfiguration <: JObject
    name::Any
    defaultValue::Any
    value::Any
    minValue::Any
    maxValue::Any
    modifiable::Any
    GameConfiguration() = new()
end

const GameConfiguration_MIN_VALUEValue = Ref{Any}(nothing)
const GameConfiguration_MIN_VALUESet = Ref(false)
function staticGet_MIN_VALUE(::Type{GameConfiguration})
    if !GameConfiguration_MIN_VALUESet[]
        GameConfiguration_MIN_VALUESet[] = true
        GameConfiguration_MIN_VALUEValue[] = staticGet_MIN_VALUE(Integer)
    end
    GameConfiguration_MIN_VALUEValue[]
end
function staticSet_MIN_VALUE(::Type{GameConfiguration}, value)
    GameConfiguration_MIN_VALUESet[] = true
    GameConfiguration_MIN_VALUEValue[] = value
end

function initFieldsGameConfiguration(this::GameConfiguration)
    this.name = nothing
    this.defaultValue = nothing
    this.value = nothing
    this.minValue = nothing
    this.maxValue = nothing
    this.modifiable = nothing
    this.name = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.defaultValue = AllBinary.getAt(AllBinary.getInstance(SmallIntegerSingletonFactory), Int32(0))
    this.value = staticGet_MIN_VALUE(GameConfiguration)
    this.minValue = this.defaultValue
    this.maxValue = this.defaultValue
    this.modifiable = AllBinary.getInstance(BooleanFactory).TRUE
    nothing
end


function initGameConfiguration(this::GameConfiguration, name, defaultValue, minValue, maxValue)
        initFieldsGameConfiguration(this)
        AllBinary.setName(this, name)
        AllBinary.setDefaultValue(this, defaultValue)
        this.value = AllBinary.getDefaultValue(this)
        AllBinary.setMinValue(this, minValue)
        AllBinary.setMaxValue(this, maxValue)
        AllBinary.put(AllBinary.getHashtable(AllBinary.getInstance(GameConfigurationSingleton)), AllBinary.getName(this), this)
        nothing
end

function newGameConfiguration(name, defaultValue, minValue, maxValue)
    this = GameConfiguration()
    initGameConfiguration(this, name, defaultValue, minValue, maxValue)
    this
end


function setValue(this::GameConfiguration, value)
        if this.value !== value
            local oldValue = this.value
            this.value = value
            AllBinary.fireEvent(AllBinary.getInstance(GameFeatureEventHandler), newGameFeatureEvent(this, AllBinary.toString(AllBinary.appendint(AllBinary.append(AllBinary.appendint(AllBinary.append(AllBinary.append(newStringMaker(), this.name), " value: from: "), ((AllBinary.intValue(oldValue)) % Int32)), " to "), ((AllBinary.intValue(this.value)) % Int32)))))
        end
        nothing
end


function getValue(this::GameConfiguration)
        return this.value
end


function setMaxValue(this::GameConfiguration, maxValue)
        this.maxValue = maxValue
        nothing
end


function getMaxValue(this::GameConfiguration)
        return this.maxValue
end


function setMinValue(this::GameConfiguration, minValue)
        this.minValue = minValue
        nothing
end


function getMinValue(this::GameConfiguration)
        return this.minValue
end


function setName(this::GameConfiguration, name)
        this.name = name
        nothing
end


function getName(this::GameConfiguration)
        return this.name
end


function setDefaultValue(this::GameConfiguration, defaultValue)
        this.defaultValue = defaultValue
        nothing
end


function getDefaultValue(this::GameConfiguration)
        return this.defaultValue
end


function setDefault(this::GameConfiguration)
        AllBinary.setValue(this, AllBinary.getDefaultValue(this))
        nothing
end


function toString(this::GameConfiguration)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "Name: ")
        AllBinary.append(stringBuffer, this.name)
        AllBinary.append(stringBuffer, " Min: ")
        AllBinary.appendint(stringBuffer, ((AllBinary.intValue(AllBinary.getMinValue(this))) % Int32))
        AllBinary.append(stringBuffer, " Max: ")
        AllBinary.appendint(stringBuffer, ((AllBinary.intValue(AllBinary.getMaxValue(this))) % Int32))
        AllBinary.append(stringBuffer, " Value: ")
        AllBinary.appendint(stringBuffer, ((AllBinary.intValue(AllBinary.getValue(this))) % Int32))
        AllBinary.append(stringBuffer, " Default: ")
        AllBinary.appendint(stringBuffer, ((AllBinary.intValue(AllBinary.getDefaultValue(this))) % Int32))
        AllBinary.append(stringBuffer, " Modifiable: ")
        AllBinary.appendboolean(stringBuffer, AllBinary.booleanValue(AllBinary.isModifiable(this)))
        return AllBinary.toString(stringBuffer)
end


function setModifiable(this::GameConfiguration, modifiable)
        this.modifiable = modifiable
        nothing
end


function isModifiable(this::GameConfiguration)
        return this.modifiable
end

