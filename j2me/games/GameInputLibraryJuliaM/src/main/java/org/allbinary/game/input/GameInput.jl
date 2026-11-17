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

mutable struct GameInput <: JObject
    logUtil::Any
    commonStrings::Any
    gameKeyEventList::Any
    removalGameKeyEventList::Any
    isRemoveDuplicateKeyPresses::Bool
    GameInput() = new()
end


function initFieldsGameInput(this::GameInput)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.gameKeyEventList = nothing
    this.removalGameKeyEventList = nothing
    this.isRemoveDuplicateKeyPresses = false
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    
    
    
    nothing
end


function initGameInput(this::GameInput, gameKeyEventList, removalGameKeyEventList)
        initFieldsGameInput(this)
        this.gameKeyEventList = gameKeyEventList
        this.removalGameKeyEventList = removalGameKeyEventList
        this.isRemoveDuplicateKeyPresses = AllBinary.isFeature(AllBinary.getInstance(Features), AllBinary.getInstance(InputFeatureFactory).REMOVE_DUPLICATE_KEY_PRESSES)
        nothing
end

function newGameInput(gameKeyEventList, removalGameKeyEventList)
    this = GameInput()
    initGameInput(this, gameKeyEventList, removalGameKeyEventList)
    this
end


function add(this::GameInput, gameKeyEvent)
        if this.isRemoveDuplicateKeyPresses && AllBinary.contains(this.gameKeyEventList, gameKeyEvent)
            return
        end
        if gameKeyEvent !== nothing
            AllBinary.add(this.gameKeyEventList, gameKeyEvent)
        else
            AllBinary.putF(this.logUtil, "Danger Passed Null GameKeyEvent", this, this.commonStrings.ADD)
        end
        nothing
end


function addForRemoval(this::GameInput, gameKeyEvent)
        AllBinary.add(this.removalGameKeyEventList, gameKeyEvent)
        nothing
end


function isForRemoval(this::GameInput, gameKeyEvent)
        return AllBinary.contains(this.removalGameKeyEventList, gameKeyEvent)
end


function clear(this::GameInput)
        AllBinary.clear(this.gameKeyEventList)
        nothing
end


function removeNonAIInputGameKeyEvents(this::GameInput)
        local list = this.gameKeyEventList
        local gameKeyEvent = nothing
        let
            local index::Int32 = AllBinary.size(list)
            while (index -= Int32(1)) >= Int32(0)
            try
            gameKeyEvent = (list.objectArray[index + 1])
            if AllBinary.getSourceId(gameKeyEvent) != Int32(1)
                AllBinary.removeAt(list, index)
            end
            finally
            end
            end
        end
        nothing
end


function update(this::GameInput)
        local removeList = this.removalGameKeyEventList
        local list = this.gameKeyEventList
        local size::Int32 = AllBinary.size(removeList)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            local anyType = removeList.objectArray[index + 1]
            let
                local index2::Int32 = AllBinary.size(list)
                while (index2 -= Int32(1)) >= Int32(0)
                try
                if list.objectArray[index2 + 1] == anyType
                    AllBinary.removeAt(list, index2)
                end
                finally
                end
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        AllBinary.clear(removeList)
        nothing
end


function getRemovalGameKeyEventList(this::GameInput)
        return this.removalGameKeyEventList
end


function getGameKeyEventList(this::GameInput)
        return this.gameKeyEventList
end

