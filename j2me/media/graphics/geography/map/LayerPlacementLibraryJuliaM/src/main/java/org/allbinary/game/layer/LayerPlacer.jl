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

mutable struct LayerPlacer <: JObject
    enumerationUtil::Any
    layerInterfaceVisitor::Any
    dimension::Any
    LayerPlacer() = new()
end


function initFieldsLayerPlacer(this::LayerPlacer)
    this.enumerationUtil = nothing
    this.layerInterfaceVisitor = nothing
    this.dimension = nothing
    this.enumerationUtil = AllBinary.getInstance(EnumerationUtil)
    
    
    nothing
end


function initLayerPlacer(this::LayerPlacer, layerInterfaceVisitor, dimension)
        initFieldsLayerPlacer(this)
        this.layerInterfaceVisitor = layerInterfaceVisitor
        this.dimension = dimension
        nothing
end

function newLayerPlacer(layerInterfaceVisitor, dimension)
    this = LayerPlacer()
    initLayerPlacer(this, layerInterfaceVisitor, dimension)
    this
end


function processList(this::LayerPlacer, list)
        local size::Int32 = AllBinary.size(list)
        local layerPlacementInterface = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            layerPlacementInterface = (list.objectArray[index + 1])
            AllBinary.process(this, layerPlacementInterface)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function process(this::LayerPlacer, layerPlacementInterface)
        local relativePoint = AllBinary.getPoint(this, layerPlacementInterface)
        local layerInterfaceFactory = AllBinary.getInstance(LayerInterfaceFactory)
        local hashtable = AllBinary.getInstance(layerPlacementInterface)
        local enumeration = AllBinary.keys(hashtable)
        local point = nothing
        local layerHashtable = nothing
        local x::Int32 = Int32(0)
        local y::Int32 = Int32(0)
        local z::Int32 = Int32(0)
        local layerInterface = nothing
        while AllBinary.hasMoreElements(this.enumerationUtil, enumeration)
            point = (AllBinary.nextElement(this.enumerationUtil, enumeration))
            layerHashtable = (AllBinary.get(hashtable, point))
            x = AllBinary.getX(point) + AllBinary.getX(relativePoint)
            y = AllBinary.getY(point) + AllBinary.getY(relativePoint)
            z = AllBinary.getZ(point) + AllBinary.getZ(relativePoint)
            layerInterface = AllBinary.getNexInstance(layerInterfaceFactory, layerHashtable, x, y, z)
            AllBinary.visit(this.layerInterfaceVisitor, layerInterface)
        end
        nothing
end


function getPoint(this::LayerPlacer, layerPlacementInterface)
        local pointFactory = AllBinary.getInstance(PointFactory)
        local layerPlacementType = AllBinary.getLayerType(layerPlacementInterface)
        if layerPlacementType === AllBinary.getInstance(LayerPlacementTypeFactory).MAP
            width = AllBinary.getWidth(layerPlacementInterface)
            height = AllBinary.getHeight(layerPlacementInterface)
            x = ((AllBinary.getX(this.dimension) - width) ÷ Int32(2))
            y = ((AllBinary.getY(this.dimension) - height) ÷ Int32(2))
            return AllBinary.createXY(pointFactory, x, y)
        elseif layerPlacementType === AllBinary.getInstance(LayerPlacementTypeFactory).UP
            local width::Int32 = AllBinary.getWidth(layerPlacementInterface)
            local height::Int32 = AllBinary.getHeight(layerPlacementInterface)
            local x::Int32 = ((AllBinary.getX(this.dimension) - width) ÷ Int32(2))
            local y::Int32 = -height
            return AllBinary.createXY(pointFactory, x, y)
        else
            throw(jNewException("Exception", "PlacementType Not Recognized"))
        end
end

