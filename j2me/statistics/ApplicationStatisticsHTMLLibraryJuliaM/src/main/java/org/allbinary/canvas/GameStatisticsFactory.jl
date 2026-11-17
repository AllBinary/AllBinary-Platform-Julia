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
# package org.allbinary.canvas

#ActualPlatform
# extends BaseGameStatistics: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameStatisticsFactory <: JObject
    stringBuffer::Any
    GameStatisticsFactory() = new()
end

const GameStatisticsFactory_instanceValue = Ref{Any}(nothing)
const GameStatisticsFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{GameStatisticsFactory})
    if !GameStatisticsFactory_instanceSet[]
        GameStatisticsFactory_instanceSet[] = true
        GameStatisticsFactory_instanceValue[] = newGameStatisticsFactory()
    end
    GameStatisticsFactory_instanceValue[]
end
function staticSet_instance(::Type{GameStatisticsFactory}, value)
    GameStatisticsFactory_instanceSet[] = true
    GameStatisticsFactory_instanceValue[] = value
end

function initFieldsGameStatisticsFactory(this::GameStatisticsFactory)
    this.stringBuffer = nothing
    this.stringBuffer = newStringMaker()
    nothing
end

function initGameStatisticsFactory(this::GameStatisticsFactory)
    initBaseGameStatistics(this)
    initFieldsGameStatisticsFactory(this)
end

function newGameStatisticsFactory()
    this = GameStatisticsFactory()
    initGameStatisticsFactory(this)
    this
end


function getInstance(::Type{GameStatisticsFactory})
        return staticGet_instance(GameStatisticsFactory)
end


function add(this::GameStatisticsFactory, string)
        if AllBinary.length(this.stringBuffer) > Int32(12000)
            AllBinary.delete(this.stringBuffer, Int32(0), AllBinary.length(this.stringBuffer))
            AllBinary.append(this.stringBuffer, "Old Stats Cleared")
        end
        AllBinary.append(this.stringBuffer, string)
        nothing
end


function toString(this::GameStatisticsFactory)
        return AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.toString(this)), AllBinary.toString(this.stringBuffer)))
end

