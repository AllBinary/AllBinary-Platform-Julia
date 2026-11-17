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
# package org.allbinary.graphics.pipeline

mutable struct BasicGraphicsPipeline <: JObject
    pointBasicArrayList::Any
    noDecimalTrigTable::Any
    BasicGraphicsPipeline() = new()
end


function initFieldsBasicGraphicsPipeline(this::BasicGraphicsPipeline)
    this.pointBasicArrayList = nothing
    this.noDecimalTrigTable = nothing
    
    this.noDecimalTrigTable = AllBinary.getInstance(NoDecimalTrigTable)
    nothing
end


function initBasicGraphicsPipeline(this::BasicGraphicsPipeline, points)
        initFieldsBasicGraphicsPipeline(this)
        this.pointBasicArrayList = points
        nothing
end

function newBasicGraphicsPipeline(points)
    this = BasicGraphicsPipeline()
    initBasicGraphicsPipeline(this, points)
    this
end


function setInitMatrix(this::BasicGraphicsPipeline, points)
        this.pointBasicArrayList = points
        nothing
end


function createMatrix(this::BasicGraphicsPipeline)
        nothing
        nothing
end


function translate(this::BasicGraphicsPipeline, x, y)
        local newBasicArrayList = newBasicArrayListD()
        local size::Int32 = AllBinary.size(this.pointBasicArrayList)
        local pointFactory = AllBinary.getInstance(PointFactory)
        local secondPoint = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            secondPoint = (this.pointBasicArrayList.objectArray[index + 1])
            if AllBinary.getX(secondPoint) != Int32(1000)
                AllBinary.add(newBasicArrayList, AllBinary.createXY(pointFactory, AllBinary.getX(secondPoint) + x, AllBinary.getY(secondPoint) + y))
            else
                AllBinary.add(newBasicArrayList, secondPoint)
            end
            finally
                index += Int32(1)
            end
            end
        end
        this.pointBasicArrayList = newBasicArrayList
        nothing
end


function rotateToAngle(this::BasicGraphicsPipeline, angle)
        AllBinary.rotate(this, ((AllBinary.getValue(angle)) % Int32))
        nothing
end


function rotate(this::BasicGraphicsPipeline, angle)
        local newBasicArrayList = newBasicArrayListD()
        local secondPoint = nothing
        local y::Int64 = Int64(0)
        local secondX::Int64 = Int64(0)
        local secondY::Int64 = Int64(0)
        local point = nothing
        local pointFactory = AllBinary.getInstance(PointFactory)
        local size::Int32 = AllBinary.size(this.pointBasicArrayList)
        local sin::Int64 = Int64(0)
        local cos::Int64 = Int64(0)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            secondPoint = (this.pointBasicArrayList.objectArray[index + 1])
            if AllBinary.getX(secondPoint) != Int32(1000)
                sin = AllBinary.sin(this.noDecimalTrigTable, angle)
                cos = AllBinary.cos(this.noDecimalTrigTable, angle)
                y = AllBinary.getY(secondPoint) * sin
                secondX = (AllBinary.getX(secondPoint) * cos) - y
                secondY = (AllBinary.getX(secondPoint) * sin) + (AllBinary.getY(secondPoint) * cos)
                point = AllBinary.createXY(pointFactory, ((secondX) % Int32) ÷ Int32(10000), ((secondY) % Int32) ÷ Int32(10000))
                AllBinary.add(newBasicArrayList, point)
            else
                AllBinary.add(newBasicArrayList, secondPoint)
            end
            finally
                index += Int32(1)
            end
            end
        end
        this.pointBasicArrayList = newBasicArrayList
        nothing
end


function mirror(this::BasicGraphicsPipeline, width)
        local pointFactory = AllBinary.getInstance(PointFactory)
        local halfWidth::Int32 = (width >> Int32(1))
        local newBasicArrayList = newBasicArrayListD()
        local secondPoint = nothing
        local newX::Int32 = Int32(0)
        local point = nothing
        local size::Int32 = AllBinary.size(this.pointBasicArrayList)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            secondPoint = (this.pointBasicArrayList.objectArray[index + 1])
            if AllBinary.getX(secondPoint) != Int32(1000)
                newX = Int32(0)
                if AllBinary.getX(secondPoint) > halfWidth
                    newX = halfWidth - (AllBinary.getX(secondPoint) - halfWidth)
                else
                    newX = halfWidth + (halfWidth - AllBinary.getX(secondPoint))
                end
                point = AllBinary.createXY(pointFactory, newX, AllBinary.getY(secondPoint))
                AllBinary.add(newBasicArrayList, point)
            else
                AllBinary.add(newBasicArrayList, secondPoint)
            end
            finally
                index += Int32(1)
            end
            end
        end
        this.pointBasicArrayList = newBasicArrayList
        nothing
end


function getMatrix(this::BasicGraphicsPipeline)
        return this.pointBasicArrayList
end

