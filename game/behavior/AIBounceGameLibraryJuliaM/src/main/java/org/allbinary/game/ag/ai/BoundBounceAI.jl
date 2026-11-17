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

# extends BasicAI: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BoundBounceAI <: JObject
    currentRelativeAngle::Int32
    layerBounds::Any
    boundsVisitorInterface::Any
    BoundBounceAI() = new()
end


function initFieldsBoundBounceAI(this::BoundBounceAI)
    this.currentRelativeAngle = Int32(0)
    this.layerBounds = nothing
    this.boundsVisitorInterface = nothing
    this.currentRelativeAngle = Int32(0)
    
    
    nothing
end


function initBoundBounceAI(this::BoundBounceAI, ownerLayerInterface, gameInput, layerBounds, boundsVisitorInterface)
        initBasicAI(this, ownerLayerInterface, gameInput)
        initFieldsBoundBounceAI(this)
        this.layerBounds = layerBounds
        this.boundsVisitorInterface = boundsVisitorInterface
        nothing
end

function newBoundBounceAI(ownerLayerInterface, gameInput, layerBounds, boundsVisitorInterface)
    this = BoundBounceAI()
    initBoundBounceAI(this, ownerLayerInterface, gameInput, layerBounds, boundsVisitorInterface)
    this
end


function paint(this::BoundBounceAI, graphics)
        local rectange = AllBinary.getRectangleP(this.layerBounds)
        AllBinary.drawRect(graphics, AllBinary.getX(AllBinary.getPoint(rectange)), AllBinary.getY(AllBinary.getPoint(rectange)), AllBinary.getWidth(rectange), AllBinary.getHeight(rectange))
        nothing
end


function processAI(this::BoundBounceAI, allBinaryLayerManager)
        AllBinary.visit(this.layerBounds, this.boundsVisitorInterface)
        nothing
end

