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

mutable struct GameConfigurationCentral <: JObject
    logUtil::Any
    SCALE::Any
    ORIENTATION::Any
    SENSOR_UPDATE_RATE::Any
    VIBRATION::Any
    CHALLENGE_LEVEL::Any
    COLLIDE_DAMAGE::Any
    DURABILITY_CHALLENGE_LEVEL::Any
    SPEED_CHALLENGE_LEVEL::Any
    ATTACK_CHALLENGE_LEVEL::Any
    CONTROL_LEVEL::Any
    PLAYER_INPUT_WAIT::Any
    SPEED::Any
    SOUND_VOLUME::Any
    MAX_GAME_OBJECTS::Any
    MAX_LAYERS::Any
    gameControlFidelity::Int32
    GameConfigurationCentral() = new()
end

const GameConfigurationCentral_SINGLETONValue = Ref{Any}(nothing)
const GameConfigurationCentral_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{GameConfigurationCentral})
    if !GameConfigurationCentral_SINGLETONSet[]
        GameConfigurationCentral_SINGLETONSet[] = true
        GameConfigurationCentral_SINGLETONValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    GameConfigurationCentral_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{GameConfigurationCentral}, value)
    GameConfigurationCentral_SINGLETONSet[] = true
    GameConfigurationCentral_SINGLETONValue[] = value
end

function initFieldsGameConfigurationCentral(this::GameConfigurationCentral)
    this.logUtil = nothing
    this.SCALE = nothing
    this.ORIENTATION = nothing
    this.SENSOR_UPDATE_RATE = nothing
    this.VIBRATION = nothing
    this.CHALLENGE_LEVEL = nothing
    this.COLLIDE_DAMAGE = nothing
    this.DURABILITY_CHALLENGE_LEVEL = nothing
    this.SPEED_CHALLENGE_LEVEL = nothing
    this.ATTACK_CHALLENGE_LEVEL = nothing
    this.CONTROL_LEVEL = nothing
    this.PLAYER_INPUT_WAIT = nothing
    this.SPEED = nothing
    this.SOUND_VOLUME = nothing
    this.MAX_GAME_OBJECTS = nothing
    this.MAX_LAYERS = nothing
    this.gameControlFidelity = Int32(0)
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    this.gameControlFidelity = Int32(36)
    nothing
end


function getInstance(::Type{GameConfigurationCentral})
        if staticGet_SINGLETON(GameConfigurationCentral) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_SINGLETON(GameConfigurationCentral, newGameConfigurationCentral())
        end
        return (staticGet_SINGLETON(GameConfigurationCentral))
end


function initGameConfigurationCentral(this::GameConfigurationCentral)
        initFieldsGameConfigurationCentral(this)
        local smallIntegerSingletonFactory = AllBinary.getInstance(SmallIntegerSingletonFactory)
        this.SCALE = newGameConfiguration("Scale", AllBinary.getAt(smallIntegerSingletonFactory, Int32(2)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(2)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(3)))
        this.ORIENTATION = newGameConfiguration("Orientation", AllBinary.getAt(smallIntegerSingletonFactory, Int32(0)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(0)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(8)))
        this.SENSOR_UPDATE_RATE = newGameConfiguration("Sensor Update Rate", AllBinary.getAt(smallIntegerSingletonFactory, Int32(0)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(0)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(3)))
        this.VIBRATION = newGameConfiguration("Vibration", AllBinary.getAt(smallIntegerSingletonFactory, Int32(0)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(0)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(3)))
        this.CHALLENGE_LEVEL = newGameConfiguration("Global Challenge Level", AllBinary.getAt(smallIntegerSingletonFactory, Int32(3)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(1)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(10)))
        this.COLLIDE_DAMAGE = newGameConfiguration("Collide Damage Challenge Level", AllBinary.getAt(smallIntegerSingletonFactory, Int32(3)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(1)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(10)))
        this.DURABILITY_CHALLENGE_LEVEL = newGameConfiguration("Enemy Durability Challenge Level", AllBinary.getAt(smallIntegerSingletonFactory, Int32(3)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(1)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(10)))
        this.SPEED_CHALLENGE_LEVEL = newGameConfiguration("Enemy Speed Challenge Level", AllBinary.getAt(smallIntegerSingletonFactory, Int32(3)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(1)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(10)))
        this.ATTACK_CHALLENGE_LEVEL = newGameConfiguration("Enemy Attack Challenge Level", AllBinary.getAt(smallIntegerSingletonFactory, Int32(3)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(1)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(10)))
        this.CONTROL_LEVEL = newGameConfiguration("Control Fidelity", AllBinary.getAt(smallIntegerSingletonFactory, Int32(5)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(1)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(10)))
        this.PLAYER_INPUT_WAIT = newGameConfiguration("Input Wait", AllBinary.getAt(smallIntegerSingletonFactory, Int32(5)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(1)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(10)))
        this.SPEED = newGameConfiguration("Game Speed (Device Specific)", AllBinary.getAt(smallIntegerSingletonFactory, Int32(5)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(1)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(10)))
        this.SOUND_VOLUME = newGameConfiguration("Sound Volume", AllBinary.getAt(smallIntegerSingletonFactory, Int32(6)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(0)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(10)))
        this.MAX_GAME_OBJECTS = newGameConfiguration("Max Game Objects", AllBinary.getAt(smallIntegerSingletonFactory, Int32(20)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(1)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(50)))
        this.MAX_LAYERS = newGameConfiguration("Max Layers", AllBinary.getAt(smallIntegerSingletonFactory, Int32(20)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(1)), AllBinary.getAt(smallIntegerSingletonFactory, Int32(50)))
        nothing
end

function newGameConfigurationCentral()
    this = GameConfigurationCentral()
    initGameConfigurationCentral(this)
    this
end


function load(this::GameConfigurationCentral, abeClientInformation)
        local commonStrings = AllBinary.getInstance(CommonStrings)
        try
            local smallIntegerSingletonFactory = AllBinary.getInstance(SmallIntegerSingletonFactory)
            local keyValuePersistance = AllBinary.getInstance(GameConfigurationPersistanceSingleton)
            AllBinary.clear(keyValuePersistance)
            AllBinary.loadAll(keyValuePersistance, abeClientInformation)
            local list = AllBinary.getIds(keyValuePersistance)
            if AllBinary.size(list) > Int32(0)
                local hashtable = AllBinary.get(keyValuePersistance, Int32(0))
                local anyType = (AllBinary.getName(this.SCALE))
                local value = (AllBinary.get(hashtable, anyType))
                AllBinary.setValue(this.SCALE, AllBinary.getAt(smallIntegerSingletonFactory, AllBinary.intValue(jstr(value))))
            else
                AllBinary.putF(this.logUtil, "No Game Configuration To Load", this, commonStrings.LOAD)
            end
        catch e
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.LOAD, e)
        end
        nothing
end


function setGameControlFidelity(this::GameConfigurationCentral, gameControlFidelity)
        this.gameControlFidelity = gameControlFidelity
        nothing
end


function getGameControlFidelity(this::GameConfigurationCentral)
        return this.gameControlFidelity
end


function toString(this::GameConfigurationCentral)
        local stringBuffer = newStringMaker()
        local commonStrings = AllBinary.getInstance(CommonSeps)
        AllBinary.append(stringBuffer, commonStrings.COMMA_SEP)
        AllBinary.append(stringBuffer, AllBinary.getName(this.SCALE))
        AllBinary.append(stringBuffer, commonStrings.EQUALS)
        AllBinary.appendint(stringBuffer, ((AllBinary.intValue(AllBinary.getValue(this.SCALE))) % Int32))
        AllBinary.append(stringBuffer, commonStrings.COMMA_SEP)
        AllBinary.append(stringBuffer, AllBinary.getName(this.ORIENTATION))
        AllBinary.append(stringBuffer, commonStrings.EQUALS)
        AllBinary.appendint(stringBuffer, ((AllBinary.intValue(AllBinary.getValue(this.ORIENTATION))) % Int32))
        AllBinary.append(stringBuffer, commonStrings.COMMA_SEP)
        AllBinary.append(stringBuffer, AllBinary.getName(this.SENSOR_UPDATE_RATE))
        AllBinary.append(stringBuffer, commonStrings.EQUALS)
        AllBinary.appendint(stringBuffer, ((AllBinary.intValue(AllBinary.getValue(this.SENSOR_UPDATE_RATE))) % Int32))
        AllBinary.append(stringBuffer, commonStrings.COMMA_SEP)
        AllBinary.append(stringBuffer, AllBinary.getName(this.VIBRATION))
        AllBinary.append(stringBuffer, commonStrings.EQUALS)
        AllBinary.appendint(stringBuffer, ((AllBinary.intValue(AllBinary.getValue(this.VIBRATION))) % Int32))
        AllBinary.append(stringBuffer, commonStrings.COMMA_SEP)
        AllBinary.append(stringBuffer, AllBinary.getName(this.CHALLENGE_LEVEL))
        AllBinary.append(stringBuffer, commonStrings.EQUALS)
        AllBinary.appendint(stringBuffer, ((AllBinary.intValue(AllBinary.getValue(this.CHALLENGE_LEVEL))) % Int32))
        AllBinary.append(stringBuffer, commonStrings.COMMA_SEP)
        AllBinary.append(stringBuffer, AllBinary.getName(this.COLLIDE_DAMAGE))
        AllBinary.append(stringBuffer, commonStrings.EQUALS)
        AllBinary.appendint(stringBuffer, ((AllBinary.intValue(AllBinary.getValue(this.COLLIDE_DAMAGE))) % Int32))
        AllBinary.append(stringBuffer, commonStrings.COMMA_SEP)
        AllBinary.append(stringBuffer, AllBinary.getName(this.DURABILITY_CHALLENGE_LEVEL))
        AllBinary.append(stringBuffer, commonStrings.EQUALS)
        AllBinary.appendint(stringBuffer, ((AllBinary.intValue(AllBinary.getValue(this.DURABILITY_CHALLENGE_LEVEL))) % Int32))
        AllBinary.append(stringBuffer, commonStrings.COMMA_SEP)
        AllBinary.append(stringBuffer, AllBinary.getName(this.SPEED_CHALLENGE_LEVEL))
        AllBinary.append(stringBuffer, commonStrings.EQUALS)
        AllBinary.appendint(stringBuffer, ((AllBinary.intValue(AllBinary.getValue(this.SPEED_CHALLENGE_LEVEL))) % Int32))
        AllBinary.append(stringBuffer, commonStrings.COMMA_SEP)
        AllBinary.append(stringBuffer, AllBinary.getName(this.ATTACK_CHALLENGE_LEVEL))
        AllBinary.append(stringBuffer, commonStrings.EQUALS)
        AllBinary.appendint(stringBuffer, ((AllBinary.intValue(AllBinary.getValue(this.ATTACK_CHALLENGE_LEVEL))) % Int32))
        AllBinary.append(stringBuffer, commonStrings.COMMA_SEP)
        AllBinary.append(stringBuffer, AllBinary.getName(this.CONTROL_LEVEL))
        AllBinary.append(stringBuffer, commonStrings.EQUALS)
        AllBinary.appendint(stringBuffer, ((AllBinary.intValue(AllBinary.getValue(this.CONTROL_LEVEL))) % Int32))
        AllBinary.append(stringBuffer, commonStrings.COMMA_SEP)
        AllBinary.append(stringBuffer, AllBinary.getName(this.SPEED))
        AllBinary.append(stringBuffer, commonStrings.EQUALS)
        AllBinary.appendint(stringBuffer, ((AllBinary.intValue(AllBinary.getValue(this.SPEED))) % Int32))
        AllBinary.append(stringBuffer, commonStrings.COMMA_SEP)
        AllBinary.append(stringBuffer, AllBinary.getName(this.MAX_GAME_OBJECTS))
        AllBinary.append(stringBuffer, commonStrings.EQUALS)
        AllBinary.appendint(stringBuffer, ((AllBinary.intValue(AllBinary.getValue(this.MAX_GAME_OBJECTS))) % Int32))
        AllBinary.append(stringBuffer, commonStrings.COMMA_SEP)
        AllBinary.append(stringBuffer, AllBinary.getName(this.MAX_LAYERS))
        AllBinary.append(stringBuffer, commonStrings.EQUALS)
        AllBinary.appendint(stringBuffer, ((AllBinary.intValue(AllBinary.getValue(this.MAX_LAYERS))) % Int32))
        return AllBinary.toString(stringBuffer)
end

