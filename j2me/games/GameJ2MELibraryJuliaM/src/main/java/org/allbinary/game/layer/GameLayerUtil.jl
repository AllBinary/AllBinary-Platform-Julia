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

mutable struct GameLayerUtil <: JObject
    GameLayerUtil() = new()
end


function initFieldsGameLayerUtil(this::GameLayerUtil)
    nothing
end


function initGameLayerUtil(this::GameLayerUtil)
        initFieldsGameLayerUtil(this)
        nothing
        nothing
end

function newGameLayerUtil()
    this = GameLayerUtil()
    initGameLayerUtil(this)
    this
end


function isOnScreen(::Type{GameLayerUtil}, layer)
        local displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
        local viewPosition = AllBinary.getViewPosition(layer)
        return AllBinary.isInside(GameLayerUtil, AllBinary.getX(viewPosition), AllBinary.getY(viewPosition), AllBinary.getX2(viewPosition), AllBinary.getY2(viewPosition), Int32(0), Int32(0), AllBinary.getLastWidth(displayInfo), AllBinary.getLastHeight(displayInfo))
end


function isInside(::Type{GameLayerUtil}, rectX1, rectY1, rectX2, rectY2, rect2X1, rect2Y1, rect2X2, rect2Y2)
        if rectX1 > rect2X1 && rectX2 < rect2X2 && rectY1 > rect2Y1 && rectY2 < rect2Y2
            return true
        else
            return false
        end
end

