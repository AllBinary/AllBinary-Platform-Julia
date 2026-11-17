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
# package org.allbinary.game.part

mutable struct CountedLayerInterfaceFactoryPart <: JObject
    updateMyFontProcessor::Any
    myFontProcessor::Any
    animationInterface::Any
    total::Int32
    totalString::Any
    xOffset::Int32
    countedPickedUpLayerInterfaceFactory::Any
    primitiveLongUtil::Any
    CountedLayerInterfaceFactoryPart() = new()
end

const CountedLayerInterfaceFactoryPart_NULL_COUNTED_LAYER_INTERFACE_FACTORYValue = Ref{Any}(nothing)
const CountedLayerInterfaceFactoryPart_NULL_COUNTED_LAYER_INTERFACE_FACTORYSet = Ref(false)
function staticGet_NULL_COUNTED_LAYER_INTERFACE_FACTORY(::Type{CountedLayerInterfaceFactoryPart})
    if !CountedLayerInterfaceFactoryPart_NULL_COUNTED_LAYER_INTERFACE_FACTORYSet[]
        CountedLayerInterfaceFactoryPart_NULL_COUNTED_LAYER_INTERFACE_FACTORYSet[] = true
        CountedLayerInterfaceFactoryPart_NULL_COUNTED_LAYER_INTERFACE_FACTORYValue[] = newCountedLayerInterfaceFactoryPart(Int32(0), staticGet_NULL_COUNTED_PICKUP_LAYER_FACTORY(CountedPickedUpLayerInterfaceFactory))
    end
    CountedLayerInterfaceFactoryPart_NULL_COUNTED_LAYER_INTERFACE_FACTORYValue[]
end
function staticSet_NULL_COUNTED_LAYER_INTERFACE_FACTORY(::Type{CountedLayerInterfaceFactoryPart}, value)
    CountedLayerInterfaceFactoryPart_NULL_COUNTED_LAYER_INTERFACE_FACTORYSet[] = true
    CountedLayerInterfaceFactoryPart_NULL_COUNTED_LAYER_INTERFACE_FACTORYValue[] = value
end

function initFieldsCountedLayerInterfaceFactoryPart(this::CountedLayerInterfaceFactoryPart)
    this.updateMyFontProcessor = nothing
    this.myFontProcessor = nothing
    this.animationInterface = nothing
    this.total = Int32(0)
    this.totalString = nothing
    this.xOffset = Int32(0)
    this.countedPickedUpLayerInterfaceFactory = nothing
    this.primitiveLongUtil = nothing
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    this.animationInterface = AllBinary.getInstance(AllBinary.getFactoryInstance(NullAnimationFactory), Int32(0))
    this.total = Int32(0)
    this.totalString = AllBinary.getInstance(NullUtil).NULL_CHAR_ARRAY
    this.xOffset = Int32(0)
    this.countedPickedUpLayerInterfaceFactory = staticGet_NULL_COUNTED_PICKUP_LAYER_FACTORY(CountedPickedUpLayerInterfaceFactory)
    
    nothing
end


function initCountedLayerInterfaceFactoryPart(this::CountedLayerInterfaceFactoryPart, total, countedPickedUpLayerInterfaceFactory)
        initFieldsCountedLayerInterfaceFactoryPart(this)
        this.primitiveLongUtil = AllBinary.createPowerOfTen(PrimitiveLongUtil, Int32(1000))
        AllBinary.init(this, total, countedPickedUpLayerInterfaceFactory)
        nothing
end

function newCountedLayerInterfaceFactoryPart(total, countedPickedUpLayerInterfaceFactory)
    this = CountedLayerInterfaceFactoryPart()
    initCountedLayerInterfaceFactoryPart(this, total, countedPickedUpLayerInterfaceFactory)
    this
end


function updateMeasurement(this::CountedLayerInterfaceFactoryPart, graphics)
        local font = AllBinary.getFont(graphics)
        AllBinary.setXOffset(this, AllBinary.charsWidth(font, this.totalString, Int32(0), AllBinary.getCurrentTotalDigits(this.primitiveLongUtil)) + (AllBinary.getSize(font) >> Int32(1)))
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function init(this::CountedLayerInterfaceFactoryPart, total, countedPickedUpLayerInterfaceFactory)
        AllBinary.setCountedPickedUpLayerInterfaceFactory(this, countedPickedUpLayerInterfaceFactory)
        this.total = total
        nothing
end


function getInstance(this::CountedLayerInterfaceFactoryPart, hashtable, x, y, z)
        if this.total > Int32(0)
            AllBinary.setTotal(this, this.total - Int32(1))
            return AllBinary.getNextInstance(AllBinary.getCountedPickedUpLayerInterfaceFactory(this), hashtable, x, y, z)
        else
            throw(jNewException("Exception", "No more left. Could use a listener to automatically remove"))
        end
end


function getTotal(this::CountedLayerInterfaceFactoryPart)
        return this.total
end


function setTotal(this::CountedLayerInterfaceFactoryPart, total)
        this.total = total
        this.totalString = AllBinary.getCharArray(this.primitiveLongUtil, total)
        this.myFontProcessor = this.updateMyFontProcessor
        nothing
end


function paint(this::CountedLayerInterfaceFactoryPart, graphics)
        AllBinary.process(this.myFontProcessor, graphics)
        nothing
end


function paintThreed(this::CountedLayerInterfaceFactoryPart, graphics)
        nothing
        nothing
end


function getAnimationInterface(this::CountedLayerInterfaceFactoryPart)
        return this.animationInterface
end


function setAnimationInterface(this::CountedLayerInterfaceFactoryPart, animationInterface)
        this.animationInterface = animationInterface
        nothing
end


function getXOffset(this::CountedLayerInterfaceFactoryPart)
        return this.xOffset
end


function setXOffset(this::CountedLayerInterfaceFactoryPart, totalStringWidth)
        this.xOffset = totalStringWidth
        nothing
end


function getTotalString(this::CountedLayerInterfaceFactoryPart)
        return this.totalString
end


function getCountedPickedUpLayerInterfaceFactory(this::CountedLayerInterfaceFactoryPart)
        return this.countedPickedUpLayerInterfaceFactory
end


function setCountedPickedUpLayerInterfaceFactory(this::CountedLayerInterfaceFactoryPart, countedPickedUpLayerInterfaceFactory)
        this.countedPickedUpLayerInterfaceFactory = countedPickedUpLayerInterfaceFactory
        nothing
end

