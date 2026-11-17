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
# package org.allbinary.game.combat.canvas

# extends AllBinaryGameCanvas: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CombatGameCanvas <: JObject
    CombatGameCanvas() = new()
end

const CombatGameCanvas_basicLayerProcessorValue = Ref{Any}(nothing)
const CombatGameCanvas_basicLayerProcessorSet = Ref(false)
function staticGet_basicLayerProcessor(::Type{CombatGameCanvas})
    if !CombatGameCanvas_basicLayerProcessorSet[]
        CombatGameCanvas_basicLayerProcessorSet[] = true
        CombatGameCanvas_basicLayerProcessorValue[] = jNewArray(Any, Int32(0), nothing)
    end
    CombatGameCanvas_basicLayerProcessorValue[]
end
function staticSet_basicLayerProcessor(::Type{CombatGameCanvas}, value)
    CombatGameCanvas_basicLayerProcessorSet[] = true
    CombatGameCanvas_basicLayerProcessorValue[] = value
end

function initFieldsCombatGameCanvas(this::CombatGameCanvas)
    nothing
end


function initCombatGameCanvas(this::CombatGameCanvas, cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)
        initAllBinaryGameCanvas(this, cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)
        nothing
end

function newCombatGameCanvas(cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)
    this = CombatGameCanvas()
    initCombatGameCanvas(this, cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)
    this
end


function CombatGameCanvas_init(this::CombatGameCanvas)
        AllBinary.init(AllBinary.getInstance(DestroyEventCircularStaticPool), this)
        AllBinary.addNormalPortion(AllBinary.getInstance(ProgressCanvasFactory), Int32(50), "Destroy Events")
        nothing
end


function initApp(this::CombatGameCanvas, abeClientInformation)
        AllBinary.CombatGameCanvas_init(this)
        AllBinary.initApp(this, abeClientInformation)
        nothing
end


function initConfigurablePortion(this::CombatGameCanvas, portion)
        AllBinary.init(DestroyedLayerProcessor)
        AllBinary.addNormalPortion(AllBinary.getInstance(ProgressCanvasFactory), portion, "Basic Processors")
        local features = AllBinary.getInstance(Features)
        local gameFeatureFactory = AllBinary.getInstance(GameFeatureFactory)
        if AllBinary.isFeature(features, gameFeatureFactory.DROPPED_ITEMS) && AllBinary.isFeature(features, gameFeatureFactory.DROPPED_ITEMS_FROM_DEATH)
            staticSet_basicLayerProcessor(CombatGameCanvas, jNewArray(Any, Int32(2), nothing))
            staticGet_basicLayerProcessor(CombatGameCanvas)[Int32(0) + 1] = AllBinary.getInstance(DestroyedLayerProcessor)
            staticGet_basicLayerProcessor(CombatGameCanvas)[Int32(1) + 1] = AllBinary.getInstance(DropLayerProcessor)
        else
            staticSet_basicLayerProcessor(CombatGameCanvas, jNewArray(Any, Int32(1), nothing))
            staticGet_basicLayerProcessor(CombatGameCanvas)[Int32(0) + 1] = AllBinary.getInstance(DestroyedLayerProcessor)
        end
        nothing
end


function processPlayingGame(this::CombatGameCanvas)
        AllBinary.processPlayingGame(this)
        let
            local index::Int32 = Int32(Base.length(staticGet_basicLayerProcessor(CombatGameCanvas)))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.process(staticGet_basicLayerProcessor(CombatGameCanvas)[index + 1], this.gameLayerManager)
            finally
            end
            end
        end
        nothing
end


function cleanupGame(this::CombatGameCanvas)
        AllBinary.cleanupGame(this)
        let
            local index::Int32 = Int32(Base.length(staticGet_basicLayerProcessor(CombatGameCanvas)))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.clear(AllBinary.getList(staticGet_basicLayerProcessor(CombatGameCanvas)[index + 1]))
            finally
            end
            end
        end
        AllBinary.clear(AllBinary.getInstance(GroupLayerManagerListener))
        AllBinary.log(AllBinary.getInstance(GroupLayerManagerListener))
        AllBinary.removeAllListeners(AllBinary.getInstance(DestroyedEventHandler))
        AllBinary.cleanupManager(this)
        nothing
end


function cleanupManager(this::CombatGameCanvas)
        AllBinary.cleanup(this.gameLayerManager)
        nothing
end

