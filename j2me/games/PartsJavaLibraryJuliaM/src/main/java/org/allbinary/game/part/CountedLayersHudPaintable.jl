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

mutable struct CountedLayersHudPaintable <: JObject
    displayInfoSingleton::Any
    partInterfaceArray::Any
    countedTotalStringColor::Int32
    countedPartsBorder::Int32
    startIndex::Int32
    dropSize::Int32
    myFontProcessor::Any
    height::Int32
    CountedLayersHudPaintable() = new()
end

const CountedLayersHudPaintable_XXStringWidthValue = Ref{Any}(nothing)
const CountedLayersHudPaintable_XXStringWidthSet = Ref(false)
function staticGet_XXStringWidth(::Type{CountedLayersHudPaintable})
    if !CountedLayersHudPaintable_XXStringWidthSet[]
        CountedLayersHudPaintable_XXStringWidthSet[] = true
        CountedLayersHudPaintable_XXStringWidthValue[] = Int32(0)
    end
    CountedLayersHudPaintable_XXStringWidthValue[]
end
function staticSet_XXStringWidth(::Type{CountedLayersHudPaintable}, value)
    CountedLayersHudPaintable_XXStringWidthSet[] = true
    CountedLayersHudPaintable_XXStringWidthValue[] = value
end

function initFieldsCountedLayersHudPaintable(this::CountedLayersHudPaintable)
    this.displayInfoSingleton = nothing
    this.partInterfaceArray = nothing
    this.countedTotalStringColor = Int32(0)
    this.countedPartsBorder = Int32(0)
    this.startIndex = Int32(0)
    this.dropSize = Int32(0)
    this.myFontProcessor = nothing
    this.height = Int32(0)
    this.displayInfoSingleton = AllBinary.getInstance(DisplayInfoSingleton)
    
    
    
    
    
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    this.height = Int32(0)
    nothing
end


function initCountedLayersHudPaintable(this::CountedLayersHudPaintable, partInterfaceArray, dropSize, startIndex, countedTotalStringColor, countedPartsBorder)
        initFieldsCountedLayersHudPaintable(this)
        this.partInterfaceArray = partInterfaceArray
        this.startIndex = startIndex
        this.countedTotalStringColor = countedTotalStringColor
        this.countedPartsBorder = countedPartsBorder
        this.dropSize = dropSize
        nothing
end

function newCountedLayersHudPaintable(partInterfaceArray, dropSize, startIndex, countedTotalStringColor, countedPartsBorder)
    this = CountedLayersHudPaintable()
    initCountedLayersHudPaintable(this, partInterfaceArray, dropSize, startIndex, countedTotalStringColor, countedPartsBorder)
    this
end


function updateMeasurement(this::CountedLayersHudPaintable, graphics)
        local font = AllBinary.getFont(graphics)
        this.height = AllBinary.getHeight(font)
        if this.dropSize > AllBinary.getHeight(font)
            this.height = this.dropSize
        end
        if staticGet_XXStringWidth(CountedLayersHudPaintable) == Int32(0)
            local XXString = "XX"
            staticSet_XXStringWidth(CountedLayersHudPaintable, AllBinary.stringWidth(font, XXString))
        end
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function paint(this::CountedLayersHudPaintable, graphics)
        AllBinary.process(this.myFontProcessor, graphics)
        local lastWidth::Int32 = AllBinary.getLastWidth(this.displayInfoSingleton)
        local widthEdge::Int32 = lastWidth - this.dropSize
        local size::Int32 = Int32(Base.length(this.partInterfaceArray))
        local count::Int32 = Int32(0)
        local y::Int32 = Int32(0)
        local countedLayerInterfaceFactory = nothing
        local pickedUpLayerInterfaceFactoryInterface = nothing
        local layerInterface = nothing
        local charArray = nothing
        let
            local index::Int32 = this.startIndex
            while index < size
            try
            countedLayerInterfaceFactory = (this.partInterfaceArray[index + 1])
            if AllBinary.getTotal(countedLayerInterfaceFactory) > Int32(0)
                pickedUpLayerInterfaceFactoryInterface = AllBinary.getCountedPickedUpLayerInterfaceFactory(countedLayerInterfaceFactory)
                layerInterface = AllBinary.getIconLayer(pickedUpLayerInterfaceFactoryInterface)
                y = Int32(40) + (count * this.height)
                AllBinary.setPosition(layerInterface, widthEdge, y, AllBinary.getZP(layerInterface))
                AllBinary.paint(layerInterface, graphics)
                AllBinary.setColor(graphics, this.countedTotalStringColor)
                AllBinary.paint(countedLayerInterfaceFactory, graphics)
                charArray = AllBinary.getTotalString(countedLayerInterfaceFactory)
                AllBinary.drawChars(graphics, charArray, Int32(0), Int32(Base.length(charArray)), widthEdge - AllBinary.getXOffset(countedLayerInterfaceFactory), y, Int32(0))
                count += Int32(1)
            end
            finally
                index += Int32(1)
            end
            end
        end
        if count > Int32(0)
            AllBinary.setColor(graphics, this.countedPartsBorder)
            AllBinary.drawRect(graphics, lastWidth - (staticGet_XXStringWidth(CountedLayersHudPaintable) + this.dropSize), Int32(40), staticGet_XXStringWidth(CountedLayersHudPaintable) + this.dropSize, (count * this.height) + Int32(3))
        end
        nothing
end


function paintThreed(this::CountedLayersHudPaintable, graphics)
        nothing
        nothing
end

