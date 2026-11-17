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
# package org.allbinary.game.displayable.canvas

# extends PlayerGameInput: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CheatGameInputProcessor <: JObject
    PROCESS_GAME::Any
    gameCanvas::Any
    gameKeyFactory::Any
    CheatGameInputProcessor() = new()
end

const CheatGameInputProcessor_inputProcessorValue = Ref{Any}(nothing)
const CheatGameInputProcessor_inputProcessorSet = Ref(false)
function staticGet_inputProcessor(::Type{CheatGameInputProcessor})
    if !CheatGameInputProcessor_inputProcessorSet[]
        CheatGameInputProcessor_inputProcessorSet[] = true
        CheatGameInputProcessor_inputProcessorValue[] = staticGet_NO_SPECIAL_GAME_INPUT(SpecialGameInputFactory)
    end
    CheatGameInputProcessor_inputProcessorValue[]
end
function staticSet_inputProcessor(::Type{CheatGameInputProcessor}, value)
    CheatGameInputProcessor_inputProcessorSet[] = true
    CheatGameInputProcessor_inputProcessorValue[] = value
end

function initFieldsCheatGameInputProcessor(this::CheatGameInputProcessor)
    this.PROCESS_GAME = nothing
    this.gameCanvas = nothing
    this.gameKeyFactory = nothing
    this.PROCESS_GAME = "processGame"
    
    this.gameKeyFactory = AllBinary.getInstance(GameKeyFactory)
    nothing
end


function initCheatGameInputProcessor(this::CheatGameInputProcessor, gameCanvas)
        initPlayerGameInput(this, newBasicArrayListD(), newBasicArrayListD(), -Int32(1))
        initFieldsCheatGameInputProcessor(this)
        this.gameCanvas = gameCanvas
        nothing
end

function newCheatGameInputProcessor(gameCanvas)
    this = CheatGameInputProcessor()
    initCheatGameInputProcessor(this, gameCanvas)
    this
end


function update(this::CheatGameInputProcessor)
        try
            local gameLayerManager = AllBinary.getLayerManager(this.gameCanvas)
            local list = AllBinary.getGameKeyEventList(this)
            local size::Int32 = AllBinary.size(list)
            let
                local index::Int32 = Int32(0)
                while index < size
                try
                local anyType = list.objectArray[index + 1]
                local key::Int32 = AllBinary.getKey(GameKeyEventUtil, anyType)
                if key == AllBinary.getId(this.gameKeyFactory.LEVEL_DOWN)
                    AllBinary.strafeLeft(staticGet_inputProcessor(CheatGameInputProcessor))
                    break
                elseif key == AllBinary.getId(this.gameKeyFactory.LEVEL_UP)
                    AllBinary.strafeRight(staticGet_inputProcessor(CheatGameInputProcessor))
                    break
                end
                if key == AllBinary.getId(this.gameKeyFactory.LEFT)
                    AllBinary.left(staticGet_inputProcessor(CheatGameInputProcessor))
                    break
                elseif key == AllBinary.getId(this.gameKeyFactory.RIGHT)
                    AllBinary.right(staticGet_inputProcessor(CheatGameInputProcessor))
                    break
                elseif key == AllBinary.getId(this.gameKeyFactory.UP)
                    AllBinary.up(staticGet_inputProcessor(CheatGameInputProcessor))
                    break
                elseif key == AllBinary.getId(this.gameKeyFactory.DOWN)
                    AllBinary.down(staticGet_inputProcessor(CheatGameInputProcessor))
                    break
                elseif key == AllBinary.getId(this.gameKeyFactory.KEY_NUM1)
                    AllBinary.special1(staticGet_inputProcessor(CheatGameInputProcessor), gameLayerManager, staticGet_NONE(GameKeyEvent))
                    break
                elseif key == AllBinary.getId(this.gameKeyFactory.KEY_NUM3)
                    AllBinary.special2(staticGet_inputProcessor(CheatGameInputProcessor), gameLayerManager, staticGet_NONE(GameKeyEvent))
                    break
                end
                finally
                    index += Int32(1)
                end
                end
            end
            AllBinary.clear(list)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e)
        end
        nothing
end

