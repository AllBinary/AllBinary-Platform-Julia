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
# package org.allbinary.math

mutable struct RectangleCollisionPointUtil <: JObject
    RectangleCollisionPointUtil() = new()
end


function initFieldsRectangleCollisionPointUtil(this::RectangleCollisionPointUtil)
    nothing
end


function initRectangleCollisionPointUtil(this::RectangleCollisionPointUtil)
        initFieldsRectangleCollisionPointUtil(this)
        nothing
        nothing
end

function newRectangleCollisionPointUtil()
    this = RectangleCollisionPointUtil()
    initRectangleCollisionPointUtil(this)
    this
end


function allPointsInside(::Type{RectangleCollisionPointUtil}, rectX1, rectY1, rectX2, rectY2, list)
        local rectangleCollisionUtil = AllBinary.getInstance(RectangleCollisionUtil)
        local point = nothing
        let
            local index::Int32 = AllBinary.size(list)
            while (index -= Int32(1)) >= Int32(0)
            try
            point = (list.objectArray[index + 1])
            if !AllBinary.isInside(rectangleCollisionUtil, rectX1, rectY1, rectX2, rectY2, AllBinary.getX(point), AllBinary.getY(point))
                return false
            end
            finally
            end
            end
        end
        return true
end


function allPointsInsideCell(::Type{RectangleCollisionPointUtil}, rectX1, rectY1, rectX2, rectY2, list, xCellSize, yCellSize)
        local rectangleCollisionUtil = AllBinary.getInstance(RectangleCollisionUtil)
        local point = nothing
        let
            local index::Int32 = AllBinary.size(list)
            while (index -= Int32(1)) >= Int32(0)
            try
            point = (list.objectArray[index + 1])
            if !AllBinary.isInside(rectangleCollisionUtil, rectX1, rectY1, rectX2, rectY2, AllBinary.getX(point) * xCellSize, AllBinary.getY(point) * yCellSize)
                return false
            end
            finally
            end
            end
        end
        return true
end

