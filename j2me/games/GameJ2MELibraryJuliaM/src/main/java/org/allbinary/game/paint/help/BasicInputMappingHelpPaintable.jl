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
# package org.allbinary.game.paint.help

# extends HelpPaintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BasicInputMappingHelpPaintable <: JObject
    gameInputMappingArray::Any
    NONE::Any
    BasicInputMappingHelpPaintable() = new()
end


function initFieldsBasicInputMappingHelpPaintable(this::BasicInputMappingHelpPaintable)
    this.gameInputMappingArray = nothing
    this.NONE = nothing
    
    this.NONE = AllBinary.getInstance(GameKeyFactory).NONE
    nothing
end


function initBasicInputMappingHelpPaintable(this::BasicInputMappingHelpPaintable, gameInputMappingArray, basicColor)
        initHelpPaintable(this, "Help Screen", AllBinary.getInstance(BasicColorFactory).BLACK, basicColor)
        initFieldsBasicInputMappingHelpPaintable(this)
        this.gameInputMappingArray = gameInputMappingArray
        AllBinary.update(this, this.NONE, this.NONE)
        nothing
end

function newBasicInputMappingHelpPaintable(gameInputMappingArray, basicColor)
    this = BasicInputMappingHelpPaintable()
    initBasicInputMappingHelpPaintable(this, gameInputMappingArray, basicColor)
    this
end


function update(this::BasicInputMappingHelpPaintable, selectedGameKey, selectedInput)
        local gameKeyMapping = AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))
        local EQUAL = " = "
        local stringMaker = newStringMaker()
        local size::Int32 = Int32(Base.length(this.gameInputMappingArray))
        local keyInfo = jNewArray(Any, size, nothing)
        local gameInputMapping = nothing
        local gameKey = nothing
        local list = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            gameInputMapping = this.gameInputMappingArray[index + 1]
            gameKey = AllBinary.getGameKey(gameInputMapping)
            list = AllBinary.getMappedInput(AllBinary.getInputMapping(gameKeyMapping), gameKey)
            AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
            keyInfo[index + 1] = AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(stringMaker, AllBinary.getName(gameInputMapping)), EQUAL), AllBinary.get(this, list)))
            finally
                index += Int32(1)
            end
            end
        end
        AllBinary.setInputInfoP(this, keyInfo)
        nothing
end


function get(this::BasicInputMappingHelpPaintable, keyList)
        local commonSeps = AllBinary.getInstance(CommonSeps)
        local stringBuffer = newStringMaker()
        local AND = "and "
        local key = nothing
        local size::Int32 = AllBinary.size(keyList)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            key = (keyList.objectArray[index + 1])
            AllBinary.append(stringBuffer, AllBinary.getName(key))
            if index + Int32(1) < AllBinary.size(keyList)
                if AllBinary.size(keyList) == Int32(2)
                    AllBinary.append(AllBinary.append(stringBuffer, commonSeps.SPACE), AND)
                else
                    if index + Int32(2) == AllBinary.size(keyList)
                        AllBinary.append(stringBuffer, commonSeps.COMMA_SEP)
                        AllBinary.append(stringBuffer, AND)
                    else
                        AllBinary.append(stringBuffer, commonSeps.COMMA_SEP)
                    end
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        return AllBinary.toString(stringBuffer)
end

