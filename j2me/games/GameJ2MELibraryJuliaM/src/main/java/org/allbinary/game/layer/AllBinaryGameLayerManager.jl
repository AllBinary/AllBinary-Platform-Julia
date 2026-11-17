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
# package org.allbinary.game.layer

# extends AllBinaryLayerManager: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AllBinaryGameLayerManager <: JObject
    backgroundBasicColor::Any
    foregroundBasicColor::Any
    gameInfo::Any
    playerGameInputCompositeInterface::Any
    AllBinaryGameLayerManager() = new()
end

const AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGERValue = Ref{Any}(nothing)
const AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGERSet = Ref(false)
function staticGet_NULL_ALLBINARY_LAYER_MANAGER(::Type{AllBinaryGameLayerManager})
    if !AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGERSet[]
        AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGERSet[] = true
        AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGERValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGERValue[]
end
function staticSet_NULL_ALLBINARY_LAYER_MANAGER(::Type{AllBinaryGameLayerManager}, value)
    AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGERSet[] = true
    AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGERValue[] = value
end
const AllBinaryGameLayerManager_IDValue = Ref{Any}(nothing)
const AllBinaryGameLayerManager_IDSet = Ref(false)
function staticGet_ID(::Type{AllBinaryGameLayerManager})
    if !AllBinaryGameLayerManager_IDSet[]
        AllBinaryGameLayerManager_IDSet[] = true
        AllBinaryGameLayerManager_IDValue[] = AllBinary.getAt(AllBinary.getInstance(SmallIntegerSingletonFactory), Int32(22))
    end
    AllBinaryGameLayerManager_IDValue[]
end
function staticSet_ID(::Type{AllBinaryGameLayerManager}, value)
    AllBinaryGameLayerManager_IDSet[] = true
    AllBinaryGameLayerManager_IDValue[] = value
end

function initFieldsAllBinaryGameLayerManager(this::AllBinaryGameLayerManager)
    this.backgroundBasicColor = nothing
    this.foregroundBasicColor = nothing
    this.gameInfo = nothing
    this.playerGameInputCompositeInterface = nothing
    
    
    
    this.playerGameInputCompositeInterface = staticGet_NULL_PLAYER_GAME_INPUT_COMPOSITE(NullPlayerGameInputComposite)
    nothing
end


function getNullInstance(::Type{AllBinaryGameLayerManager})
        if staticGet_NULL_ALLBINARY_LAYER_MANAGER(AllBinaryGameLayerManager) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_NULL_ALLBINARY_LAYER_MANAGER(AllBinaryGameLayerManager, newAllBinaryGameLayerManager(AllBinary.getInstance(BasicColorFactory).BLACK, AllBinary.getInstance(BasicColorFactory).WHITE, staticGet_NONE(GameInfo)))
        end
        return (staticGet_NULL_ALLBINARY_LAYER_MANAGER(AllBinaryGameLayerManager))
end


function initAllBinaryGameLayerManager(this::AllBinaryGameLayerManager, backgroundBasicColor, foregroundBasicColor, gameInfo)
        initAllBinaryLayerManager(this)
        initFieldsAllBinaryGameLayerManager(this)
        this.backgroundBasicColor = backgroundBasicColor
        this.foregroundBasicColor = foregroundBasicColor
        local itemColorFactory = AllBinary.getInstance(ItemColorFactory)
        itemColorFactory.INVERT_PAINT = AllBinary.intValue(this.backgroundBasicColor)
        itemColorFactory.PAINT = AllBinary.intValue(this.foregroundBasicColor)
        this.gameInfo = gameInfo
        nothing
end

function newAllBinaryGameLayerManager(backgroundBasicColor, foregroundBasicColor, gameInfo)
    this = AllBinaryGameLayerManager()
    initAllBinaryGameLayerManager(this, backgroundBasicColor, foregroundBasicColor, gameInfo)
    this
end


function getLayerManager(this::AllBinaryGameLayerManager)
        return this
end


function init(this::AllBinaryGameLayerManager)
        nothing
        nothing
end


function getBackgroundBasicColor(this::AllBinaryGameLayerManager)
        return this.backgroundBasicColor
end


function setBackgroundBasicColor(this::AllBinaryGameLayerManager, backgroundBasicColor)
        this.backgroundBasicColor = backgroundBasicColor
        AllBinary.getInstance(ItemColorFactory).INVERT_PAINT = AllBinary.intValue(this.backgroundBasicColor)
        nothing
end


function getForegroundBasicColor(this::AllBinaryGameLayerManager)
        return this.foregroundBasicColor
end


function setForegroundBasicColor(this::AllBinaryGameLayerManager, foregroundBasicColor)
        this.foregroundBasicColor = foregroundBasicColor
        AllBinary.getInstance(ItemColorFactory).PAINT = AllBinary.intValue(this.foregroundBasicColor)
        nothing
end


function getGameInfo(this::AllBinaryGameLayerManager)
        return this.gameInfo
end


function setGameInfo(this::AllBinaryGameLayerManager, gameInfo)
        this.gameInfo = gameInfo
        nothing
end


function setLayerProcessorList(this::AllBinaryGameLayerManager, list)
        local layerProcessorInterfaceArray = jNewArray(Any, AllBinary.size(list), nothing)
        local size::Int32 = Int32(Base.length(layerProcessorInterfaceArray))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            layerProcessorInterfaceArray[index + 1] = (list.objectArray[index + 1])
            finally
                index += Int32(1)
            end
            end
        end
        AllBinary.setLayerProcessorArray(this, layerProcessorInterfaceArray)
        nothing
end


function setPlayerGameInputCompositeInterface(this::AllBinaryGameLayerManager, playerGameInputCompositeInterface)
        this.playerGameInputCompositeInterface = playerGameInputCompositeInterface
        nothing
end


function getPlayerGameInputCompositeInterface(this::AllBinaryGameLayerManager)
        return this.playerGameInputCompositeInterface
end

