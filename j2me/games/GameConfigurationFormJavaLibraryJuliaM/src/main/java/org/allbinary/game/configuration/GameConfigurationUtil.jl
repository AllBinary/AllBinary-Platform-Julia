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

mutable struct GameConfigurationUtil <: JObject
    logUtil::Any
    commonStrings::Any
    GAUGE_UPDATE::Any
    FROM::Any
    TO::Any
    COMPETITION_VALUE::Int32
    GameConfigurationUtil() = new()
end

const GameConfigurationUtil_instanceValue = Ref{Any}(nothing)
const GameConfigurationUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{GameConfigurationUtil})
    if !GameConfigurationUtil_instanceSet[]
        GameConfigurationUtil_instanceSet[] = true
        GameConfigurationUtil_instanceValue[] = newGameConfigurationUtil()
    end
    GameConfigurationUtil_instanceValue[]
end
function staticSet_instance(::Type{GameConfigurationUtil}, value)
    GameConfigurationUtil_instanceSet[] = true
    GameConfigurationUtil_instanceValue[] = value
end

function initFieldsGameConfigurationUtil(this::GameConfigurationUtil)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.GAUGE_UPDATE = nothing
    this.FROM = nothing
    this.TO = nothing
    this.COMPETITION_VALUE = Int32(0)
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.GAUGE_UPDATE = "Gauge Update: "
    this.FROM = " from: "
    this.TO = " to: "
    this.COMPETITION_VALUE = Int32(1)
    nothing
end

function initGameConfigurationUtil(this::GameConfigurationUtil)
    initFieldsGameConfigurationUtil(this)
end

function newGameConfigurationUtil()
    this = GameConfigurationUtil()
    initGameConfigurationUtil(this)
    this
end


function getInstance(::Type{GameConfigurationUtil})
        return staticGet_instance(GameConfigurationUtil)
end


function change(this::GameConfigurationUtil, gameOptionsForm, gauge)
        AllBinary.update(this, gauge)
        local gameConfigurationSingleton = AllBinary.getInstance(GameConfigurationSingleton)
        local gameConfiguration = AllBinary.getInstanceByName(gameConfigurationSingleton, AllBinary.getLabel(gauge))
        AllBinary.updateChallange(this, gameOptionsForm, gameConfiguration)
        nothing
end


function update(this::GameConfigurationUtil, gauge)
        local gameConfigurationSingleton = AllBinary.getInstance(GameConfigurationSingleton)
        local gameConfiguration = AllBinary.getInstanceByName(gameConfigurationSingleton, AllBinary.getLabel(gauge))
        local smallIntegerSingletonFactory = AllBinary.getInstance(SmallIntegerSingletonFactory)
        local value = AllBinary.getAt(smallIntegerSingletonFactory, AllBinary.getValue(gauge) + AllBinary.intValue(AllBinary.getMinValue(gameConfiguration)))
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, this.GAUGE_UPDATE)
        AllBinary.append(stringBuffer, AllBinary.getName(gameConfiguration))
        AllBinary.append(stringBuffer, this.FROM)
        AllBinary.appendint(stringBuffer, ((AllBinary.intValue(AllBinary.getValue(gameConfiguration))) % Int32))
        AllBinary.append(stringBuffer, this.TO)
        AllBinary.appendint(stringBuffer, ((AllBinary.intValue(value)) % Int32))
        AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, this.commonStrings.UPDATE)
        AllBinary.setValue(gameConfiguration, value)
        nothing
end


function setDefault(this::GameConfigurationUtil, gauge)
        local gameConfigurationSingleton = AllBinary.getInstance(GameConfigurationSingleton)
        local gameConfiguration = AllBinary.getInstanceByName(gameConfigurationSingleton, AllBinary.getLabel(gauge))
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "Gauge Default: ")
        AllBinary.append(stringBuffer, AllBinary.getName(gameConfiguration))
        AllBinary.append(stringBuffer, this.TO)
        AllBinary.appendint(stringBuffer, ((AllBinary.intValue(AllBinary.getDefaultValue(gameConfiguration))) % Int32))
        AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, "setDefault")
        AllBinary.setValue(gauge, AllBinary.intValue(AllBinary.getDefaultValue(gameConfiguration)) - AllBinary.intValue(AllBinary.getMinValue(gameConfiguration)))
        AllBinary.setValue(gameConfiguration, AllBinary.getDefaultValue(gameConfiguration))
        nothing
end


function updateChallange(this::GameConfigurationUtil, gameOptionsForm, gameConfiguration)
        local gameConfigurationSingleton = AllBinary.getInstance(GameConfigurationSingleton)
        local gameConfigurationCentral = AllBinary.getInstance(GameConfigurationCentral)
        if gameConfiguration === gameConfigurationCentral.CHALLENGE_LEVEL
            AllBinary.putF(this.logUtil, this.commonStrings.START, this, "updateChallange")
            AllBinary.setValue(gameConfigurationCentral.COLLIDE_DAMAGE, AllBinary.getValue(gameConfiguration))
            AllBinary.setValue(gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL, AllBinary.getValue(gameConfiguration))
            AllBinary.setValue(gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL, AllBinary.getValue(gameConfiguration))
            AllBinary.setValue(gameConfigurationCentral.SPEED_CHALLENGE_LEVEL, AllBinary.getValue(gameConfiguration))
            local size::Int32 = AllBinary.size(gameOptionsForm)
            let
                local index::Int32 = Int32(0)
                while index < size
                try
                local item = AllBinary.get(gameOptionsForm, index)
                if Base.isa(item, GameConfigurationGauge)
                    local gauge = (item)
                    local name = AllBinary.getLabel(item)
                    local nextGameConfiguration = AllBinary.getInstanceByName(gameConfigurationSingleton, name)
                    if nextGameConfiguration === gameConfigurationCentral.COLLIDE_DAMAGE
                        AllBinary.setValue(gauge, AllBinary.intValue(AllBinary.getValue(gameConfigurationCentral.COLLIDE_DAMAGE)) - AllBinary.intValue(AllBinary.getMinValue(gameConfiguration)))
                    elseif nextGameConfiguration === gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL
                        AllBinary.setValue(gauge, AllBinary.intValue(AllBinary.getValue(gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL)) - AllBinary.intValue(AllBinary.getMinValue(gameConfiguration)))
                    elseif nextGameConfiguration === gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL
                        AllBinary.setValue(gauge, AllBinary.intValue(AllBinary.getValue(gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL)) - AllBinary.intValue(AllBinary.getMinValue(gameConfiguration)))
                    elseif nextGameConfiguration === gameConfigurationCentral.SPEED_CHALLENGE_LEVEL
                        AllBinary.setValue(gauge, AllBinary.intValue(AllBinary.getValue(gameConfigurationCentral.SPEED_CHALLENGE_LEVEL)) - AllBinary.intValue(AllBinary.getMinValue(gameConfiguration)))
                    end
                end
                finally
                    index += Int32(1)
                end
                end
            end
        end
        nothing
end


function updateCompetitionValue(this::GameConfigurationUtil)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, "updateCompetitionValue")
        local gameConfigurationCentral = AllBinary.getInstance(GameConfigurationCentral)
        this.COMPETITION_VALUE = AllBinary.intValue(AllBinary.getValue(gameConfigurationCentral.COLLIDE_DAMAGE)) + AllBinary.intValue(AllBinary.getValue(gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL)) + AllBinary.intValue(AllBinary.getValue(gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL)) + AllBinary.intValue(AllBinary.getValue(gameConfigurationCentral.SPEED_CHALLENGE_LEVEL))
        this.COMPETITION_VALUE = (this.COMPETITION_VALUE >> Int32(2))
        nothing
end


function getCompetitionValue(this::GameConfigurationUtil)
        return this.COMPETITION_VALUE
end

