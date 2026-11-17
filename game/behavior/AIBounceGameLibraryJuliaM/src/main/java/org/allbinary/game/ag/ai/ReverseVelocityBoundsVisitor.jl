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

mutable struct ReverseVelocityBoundsVisitor <: JObject
    logUtil::Any
    velocityInterface::Any
    layerInterface::Any
    ReverseVelocityBoundsVisitor() = new()
end


function initFieldsReverseVelocityBoundsVisitor(this::ReverseVelocityBoundsVisitor)
    this.logUtil = nothing
    this.velocityInterface = nothing
    this.layerInterface = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    
    nothing
end


function initReverseVelocityBoundsVisitor(this::ReverseVelocityBoundsVisitor, layerInterface)
        initFieldsReverseVelocityBoundsVisitor(this)
        this.layerInterface = layerInterface
        local velocityInterfaceCompositeInterface = (layerInterface)
        this.velocityInterface = (AllBinary.getVelocityProperties(velocityInterfaceCompositeInterface))
        nothing
end

function newReverseVelocityBoundsVisitor(layerInterface)
    this = ReverseVelocityBoundsVisitor()
    initReverseVelocityBoundsVisitor(this, layerInterface)
    this
end


function getX(this::ReverseVelocityBoundsVisitor)
        return AllBinary.getXP(this.layerInterface)
end


function getY(this::ReverseVelocityBoundsVisitor)
        return AllBinary.getYP(this.layerInterface)
end


function minX(this::ReverseVelocityBoundsVisitor)
        if AllBinary.getUnscaled(AllBinary.getVelocityXBasicDecimalP(this.velocityInterface)) < Int32(0)
            AllBinary.multiplyint(AllBinary.getVelocityXBasicDecimalP(this.velocityInterface), -Int32(1))
        end
        nothing
end


function maxX(this::ReverseVelocityBoundsVisitor)
        if AllBinary.getUnscaled(AllBinary.getVelocityXBasicDecimalP(this.velocityInterface)) > Int32(0)
            AllBinary.multiplyint(AllBinary.getVelocityXBasicDecimalP(this.velocityInterface), -Int32(1))
        end
        nothing
end


function minY(this::ReverseVelocityBoundsVisitor)
        if AllBinary.getUnscaled(AllBinary.getVelocityYBasicDecimalP(this.velocityInterface)) < Int32(0)
            AllBinary.multiplyint(AllBinary.getVelocityYBasicDecimalP(this.velocityInterface), -Int32(1))
        end
        nothing
end


function maxY(this::ReverseVelocityBoundsVisitor)
        if AllBinary.getUnscaled(AllBinary.getVelocityYBasicDecimalP(this.velocityInterface)) > Int32(0)
            AllBinary.multiplyint(AllBinary.getVelocityYBasicDecimalP(this.velocityInterface), -Int32(1))
        end
        nothing
end

