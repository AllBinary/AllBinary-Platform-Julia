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

mutable struct GameOptionsFormFactory <: JObject
    logUtil::Any
    GameOptionsFormFactory() = new()
end

const GameOptionsFormFactory_instanceValue = Ref{Any}(nothing)
const GameOptionsFormFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{GameOptionsFormFactory})
    if !GameOptionsFormFactory_instanceSet[]
        GameOptionsFormFactory_instanceSet[] = true
        GameOptionsFormFactory_instanceValue[] = newGameOptionsFormFactory()
    end
    GameOptionsFormFactory_instanceValue[]
end
function staticSet_instance(::Type{GameOptionsFormFactory}, value)
    GameOptionsFormFactory_instanceSet[] = true
    GameOptionsFormFactory_instanceValue[] = value
end

function initFieldsGameOptionsFormFactory(this::GameOptionsFormFactory)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end


function initGameOptionsFormFactory(this::GameOptionsFormFactory)
        initFieldsGameOptionsFormFactory(this)
        nothing
        nothing
end

function newGameOptionsFormFactory()
    this = GameOptionsFormFactory()
    initGameOptionsFormFactory(this)
    this
end


function getInstance(::Type{GameOptionsFormFactory})
        return staticGet_instance(GameOptionsFormFactory)
end


function init(this::GameOptionsFormFactory, commandListener, title, backgrounBasicColor, foregroundBasicColor)
        try
            return newGameOptionsForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.INIT, e)
            return AllBinary.getNullCommandForm(CommandForm)
        end
end

