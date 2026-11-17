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
# package org.allbinary.game.ai

# extends ArtificialIntelligence: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BasicAI <: JObject
    logUtil::Any
    commonStrings::Any
    gameKeyEventFactory::Any
    ownerLayerInterface::Any
    gameInput::Any
    lastKey::Int32
    BasicAI() = new()
end

const BasicAI_AI_VISITORValue = Ref{Any}(nothing)
const BasicAI_AI_VISITORSet = Ref(false)
function staticGet_AI_VISITOR(::Type{BasicAI})
    if !BasicAI_AI_VISITORSet[]
        BasicAI_AI_VISITORSet[] = true
        BasicAI_AI_VISITORValue[] = AllBinary.getAt(AllBinary.getInstance(SmallIntegerSingletonFactory), Int32(2))
    end
    BasicAI_AI_VISITORValue[]
end
function staticSet_AI_VISITOR(::Type{BasicAI}, value)
    BasicAI_AI_VISITORSet[] = true
    BasicAI_AI_VISITORValue[] = value
end
const BasicAI_IDValue = Ref{Any}(nothing)
const BasicAI_IDSet = Ref(false)
function staticGet_ID(::Type{BasicAI})
    if !BasicAI_IDSet[]
        BasicAI_IDSet[] = true
        BasicAI_IDValue[] = AllBinary.getAt(AllBinary.getInstance(SmallIntegerSingletonFactory), Int32(1))
    end
    BasicAI_IDValue[]
end
function staticSet_ID(::Type{BasicAI}, value)
    BasicAI_IDSet[] = true
    BasicAI_IDValue[] = value
end

function initFieldsBasicAI(this::BasicAI)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.gameKeyEventFactory = nothing
    this.ownerLayerInterface = nothing
    this.gameInput = nothing
    this.lastKey = Int32(0)
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.gameKeyEventFactory = AllBinary.getInstance(GameKeyEventFactory)
    
    
    this.lastKey = -Int32(1)
    nothing
end


function initBasicAI(this::BasicAI, ownerLayerInterface, gameInput)
        initArtificialIntelligence(this)
        initFieldsBasicAI(this)
        this.ownerLayerInterface = ownerLayerInterface
        this.gameInput = gameInput
        nothing
end

function newBasicAI(ownerLayerInterface, gameInput)
    this = BasicAI()
    initBasicAI(this, ownerLayerInterface, gameInput)
    this
end


function processAI(this::BasicAI, allBinaryLayerManager)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
        nothing
end


function processKeyAI(this::BasicAI, key)
        if key != -Int32(1)
            AllBinary.add(this.gameInput, AllBinary.getInstanceForKey(this.gameKeyEventFactory, this, key))
        end
        nothing
end


function setLastKey(this::BasicAI, lastKey)
        this.lastKey = lastKey
        nothing
end


function getLastKey(this::BasicAI)
        return this.lastKey
end


function getOwnerLayerInterface(this::BasicAI)
        return this.ownerLayerInterface
end


function getGameInput(this::BasicAI)
        return this.gameInput
end


function getName(this::BasicAI)
        return jClassName(this)
end


function toString(this::BasicAI)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).NEW_LINE)
        AllBinary.append(stringBuffer, AllBinary.getName(this))
        AllBinary.append(stringBuffer, " LastKey: ")
        AllBinary.append(stringBuffer, AllBinary.getKeyName(CanvasUtil, AllBinary.getLastKey(this)))
        return AllBinary.toString(stringBuffer)
end


function getSourceId(this::BasicAI)
        return Int32(1)
end

