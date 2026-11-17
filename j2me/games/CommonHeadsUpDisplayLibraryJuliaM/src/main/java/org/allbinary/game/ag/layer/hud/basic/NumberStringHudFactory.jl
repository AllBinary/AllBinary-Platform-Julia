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
# package org.allbinary.game.ag.layer.hud.basic

mutable struct NumberStringHudFactory <: JObject
    NULL_NUMBER_STRING_HUD::Any
    NumberStringHudFactory() = new()
end

const NumberStringHudFactory_instanceValue = Ref{Any}(nothing)
const NumberStringHudFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{NumberStringHudFactory})
    if !NumberStringHudFactory_instanceSet[]
        NumberStringHudFactory_instanceSet[] = true
        NumberStringHudFactory_instanceValue[] = AllBinary.getInstance(NullUtil)
    end
    NumberStringHudFactory_instanceValue[]
end
function staticSet_instance(::Type{NumberStringHudFactory}, value)
    NumberStringHudFactory_instanceSet[] = true
    NumberStringHudFactory_instanceValue[] = value
end

function initFieldsNumberStringHudFactory(this::NumberStringHudFactory)
    this.NULL_NUMBER_STRING_HUD = nothing
    this.NULL_NUMBER_STRING_HUD = AllBinary.createHud(this)
    nothing
end

function initNumberStringHudFactory(this::NumberStringHudFactory)
    initFieldsNumberStringHudFactory(this)
end

function newNumberStringHudFactory()
    this = NumberStringHudFactory()
    initNumberStringHudFactory(this)
    this
end


function getInstance(::Type{NumberStringHudFactory})
        if staticGet_instance(NumberStringHudFactory) === AllBinary.getInstance(NullUtil)
            staticSet_instance(NumberStringHudFactory, newNumberStringHudFactory())
        end
        return (staticGet_instance(NumberStringHudFactory))
end


function createHud(this::NumberStringHudFactory)
        try
            return newNumberStringHud(AllBinary.getInstance(StringUtil).EMPTY_STRING, Int32(9), AllBinary.getInstance(BasicHudFactory).ABSOLUTE, Int32(1), Int32(0), AllBinary.getInstance(BasicColorFactory).NULL_COLOR)
        catch e
            local logUtil = AllBinary.getInstance(LogUtil)
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(logUtil, commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)
            throw(jNewException("RuntimeException", ""))
        end
end

