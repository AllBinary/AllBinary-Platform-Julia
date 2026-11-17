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
# package org.allbinary.game.ag.ai

mutable struct TopUBoundBounceAIFactory <: JObject
    TopUBoundBounceAIFactory() = new()
end


function initFieldsTopUBoundBounceAIFactory(this::TopUBoundBounceAIFactory)
    nothing
end

function initTopUBoundBounceAIFactory(this::TopUBoundBounceAIFactory)
    initFieldsTopUBoundBounceAIFactory(this)
end

function newTopUBoundBounceAIFactory()
    this = TopUBoundBounceAIFactory()
    initTopUBoundBounceAIFactory(this)
    this
end


function getInstance(this::TopUBoundBounceAIFactory, hashtable, ownerLayerInterface, gameInput)
        local velocityInterfaceCompositeInterface = (ownerLayerInterface)
        local velocityInterface = (AllBinary.getVelocityProperties(velocityInterfaceCompositeInterface))
        local maxDistancePerTick::Int32 = (AllBinary.getMaxForwardVelocity(velocityInterface) >> AllBinary.getScaledFactor(AllBinary.getVelocityXBasicDecimalP(velocityInterface)))
        local halfWidth::Int32 = AllBinary.getWidth(ownerLayerInterface) * Int32(2) + maxDistancePerTick + Int32(1)
        local halfHeight::Int32 = AllBinary.getHeight(ownerLayerInterface) * Int32(2) + maxDistancePerTick + Int32(1)
        local point = AllBinary.createXY(AllBinary.getInstance(PointFactory), halfWidth, halfHeight + Int32(60))
        local displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
        local rectangle = newRectangle(point, (AllBinary.getLastWidth(displayInfo) - halfWidth - AllBinary.getX(point)), (AllBinary.getLastHeight(displayInfo) - halfHeight - AllBinary.getY(point)))
        return newBoundBounceAI(ownerLayerInterface, gameInput, newTopULayerBounds(rectangle), newReverseVelocityBoundsVisitor(ownerLayerInterface))
end

