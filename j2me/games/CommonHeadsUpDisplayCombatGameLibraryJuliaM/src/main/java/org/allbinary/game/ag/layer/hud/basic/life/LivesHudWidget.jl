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
# package org.allbinary.game.ag.layer.hud.basic.life

# extends BasicHud: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct LivesHudWidget <: JObject
    lifeInterface::Any
    xArray::Any
    animationInterface::Any
    LivesHudWidget() = new()
end


function initFieldsLivesHudWidget(this::LivesHudWidget)
    this.lifeInterface = nothing
    this.xArray = nothing
    this.animationInterface = nothing
    
    
    
    nothing
end


function initLivesHudWidget(this::LivesHudWidget, animationInterface, lifeInterface, location, direction)
        initBasicHud(this, location, direction, Int32(2), AllBinary.getInstance(BasicColorFactory).WHITE)
        initFieldsLivesHudWidget(this)
        this.lifeInterface = lifeInterface
        local size::Int32 = ((AllBinary.getMaxlives(AllBinary.getLifeInterface(this))) % Int32)
        this.xArray = jNewArray(Int32, size, Int32(0))
        this.animationInterface = animationInterface
        this.updateMaxWidth = AllBinary.getMaxlives(this.lifeInterface) * Int32(16)
        this.updateMaxHeight = Int32(16)
        nothing
end

function newLivesHudWidget(animationInterface, lifeInterface, location, direction)
    this = LivesHudWidget()
    initLivesHudWidget(this, animationInterface, lifeInterface, location, direction)
    this
end


function updateMeasurement(this::LivesHudWidget, graphics)
        AllBinary.updateMeasurement(this, graphics)
        local maxLives::Int32 = ((AllBinary.getMaxlives(AllBinary.getLifeInterface(this))) % Int32)
        let
            local index::Int32 = Int32(0)
            while index < maxLives
            try
            this.xArray[index + 1] = AllBinary.getX(this) + (index * Int32(16))
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function onDisplayChangeEvent(this::LivesHudWidget, displayChangeEvent)
        AllBinary.onDisplayChangeEvent(this, displayChangeEvent)
        this.myFontProcessor = this.updateMyFontProcessor
        nothing
end


function setX(this::LivesHudWidget, x)
        AllBinary.setX(this, x)
        this.myFontProcessor = this.updateMyFontProcessor
        nothing
end


function paint(this::LivesHudWidget, graphics)
        AllBinary.process(this.myFontProcessor, graphics)
        let
            local index::Int32 = ((AllBinary.get(AllBinary.getLifeInterface(this))) % Int32)
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.paintXY(this.animationInterface, graphics, this.xArray[index + 1], AllBinary.getY(this))
            finally
            end
            end
        end
        nothing
end


function paintThreed(this::LivesHudWidget, graphics)
        nothing
        nothing
end


function getLifeInterface(this::LivesHudWidget)
        return this.lifeInterface
end

