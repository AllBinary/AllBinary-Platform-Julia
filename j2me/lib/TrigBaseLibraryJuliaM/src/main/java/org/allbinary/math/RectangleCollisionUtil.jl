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

mutable struct RectangleCollisionUtil <: JObject
    RectangleCollisionUtil() = new()
end

const RectangleCollisionUtil_instanceValue = Ref{Any}(nothing)
const RectangleCollisionUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{RectangleCollisionUtil})
    if !RectangleCollisionUtil_instanceSet[]
        RectangleCollisionUtil_instanceSet[] = true
        RectangleCollisionUtil_instanceValue[] = newRectangleCollisionUtil()
    end
    RectangleCollisionUtil_instanceValue[]
end
function staticSet_instance(::Type{RectangleCollisionUtil}, value)
    RectangleCollisionUtil_instanceSet[] = true
    RectangleCollisionUtil_instanceValue[] = value
end

function initFieldsRectangleCollisionUtil(this::RectangleCollisionUtil)
    nothing
end


function getInstance(::Type{RectangleCollisionUtil})
        return staticGet_instance(RectangleCollisionUtil)
end


function initRectangleCollisionUtil(this::RectangleCollisionUtil)
        initFieldsRectangleCollisionUtil(this)
        nothing
        nothing
end

function newRectangleCollisionUtil()
    this = RectangleCollisionUtil()
    initRectangleCollisionUtil(this)
    this
end


function isCollision(this::RectangleCollisionUtil, rectX1, rectY1, rectX2, rectY2, rect2X1, rect2Y1, rect2X2, rect2Y2)
        if rect2X1 >= rectX2 || rect2Y1 >= rectY2 || rect2X2 <= rectX1 || rect2Y2 <= rectY1
            return false
        else
            return true
        end
end


function isInside(this::RectangleCollisionUtil, rectX1, rectY1, rectX2, rectY2, x, y)
        if x >= rectX2 || y >= rectY2 || x <= rectX1 || y <= rectY1
            return false
        else
            return true
        end
end

