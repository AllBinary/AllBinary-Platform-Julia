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
# package org.allbinary.game.input

# extends PlayerGameInput: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameInputProcessorComposite <: JObject
    name::Any
    gameInputProcessorInterface::Any
    NAME_LABEL::Any
    GameInputProcessorComposite() = new()
end


function initFieldsGameInputProcessorComposite(this::GameInputProcessorComposite)
    this.name = nothing
    this.gameInputProcessorInterface = nothing
    this.NAME_LABEL = nothing
    
    
    this.NAME_LABEL = " GameInputProcessorInterface: "
    nothing
end


function initGameInputProcessorComposite(this::GameInputProcessorComposite, name, gameInputProcessorInterface)
        initPlayerGameInput(this, newBasicArrayListD(), newBasicArrayListD(), -Int32(1))
        initFieldsGameInputProcessorComposite(this)
        this.name = name
        this.gameInputProcessorInterface = gameInputProcessorInterface
        nothing
end

function newGameInputProcessorComposite(name, gameInputProcessorInterface)
    this = GameInputProcessorComposite()
    initGameInputProcessorComposite(this, name, gameInputProcessorInterface)
    this
end


function update(this::GameInputProcessorComposite)
        try
            local list = AllBinary.getGameKeyEventList(this)
            AllBinary.onInput(this.gameInputProcessorInterface, list)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e)
        end
        nothing
end


function toString(this::GameInputProcessorComposite)
        return AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.toString(this)), this.NAME_LABEL), this.name))
end

