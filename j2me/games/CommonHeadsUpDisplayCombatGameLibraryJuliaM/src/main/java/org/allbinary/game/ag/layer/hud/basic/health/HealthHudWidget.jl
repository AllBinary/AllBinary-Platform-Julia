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
# package org.allbinary.game.ag.layer.hud.basic.health

# extends BasicHud: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HealthHudWidget <: JObject
    healthScale::Int32
    animationInterface::Any
    healthInterface::Any
    max::Int32
    xArray::Any
    gameTickTimeDelayHelper::Any
    timeDelayHelper::Any
    slowBeatTimeDelayHelper::Any
    mediumBeatTimeDelayHelper::Any
    fastBeatTimeDelayHelper::Any
    HealthHudWidget() = new()
end


function initFieldsHealthHudWidget(this::HealthHudWidget)
    this.healthScale = Int32(0)
    this.animationInterface = nothing
    this.healthInterface = nothing
    this.max = Int32(0)
    this.xArray = nothing
    this.gameTickTimeDelayHelper = nothing
    this.timeDelayHelper = nothing
    this.slowBeatTimeDelayHelper = nothing
    this.mediumBeatTimeDelayHelper = nothing
    this.fastBeatTimeDelayHelper = nothing
    
    
    
    this.max = Int32(0)
    
    this.gameTickTimeDelayHelper = AllBinary.getInstance(GameTickTimeDelayHelperFactory)
    this.timeDelayHelper = staticGet_SINGLETON(NoTimeDelayHelper)
    this.slowBeatTimeDelayHelper = newTimeDelayHelper(Int32(1280))
    this.mediumBeatTimeDelayHelper = newTimeDelayHelper(Int32(640))
    this.fastBeatTimeDelayHelper = newTimeDelayHelper(Int32(320))
    nothing
end


function initHealthHudWidget(this::HealthHudWidget, animationInterface, healthInterface, location, direction)
        initBasicHud(this, location, direction, Int32(2), AllBinary.getInstance(BasicColorFactory).WHITE)
        initFieldsHealthHudWidget(this)
        this.animationInterface = animationInterface
        this.healthInterface = healthInterface
        AllBinary.addListener(this.healthInterface, this)
        this.healthScale = (AllBinary.getMaxHealth(this.healthInterface) ÷ Int32(6)) + Int32(1)
        AllBinary.onHealthChange(this)
        this.updateMaxWidth = AllBinary.getMaxHealth(healthInterface) * Int32(16)
        this.updateMaxHeight = Int32(16)
        this.xArray = jNewArray(Int32, Int32(30), Int32(0))
        AllBinary.update(this)
        nothing
end

function newHealthHudWidget(animationInterface, healthInterface, location, direction)
    this = HealthHudWidget()
    initHealthHudWidget(this, animationInterface, healthInterface, location, direction)
    this
end


function update(this::HealthHudWidget)
        if this.xArray !== nothing
            let
                local index::Int32 = Int32(0)
                while index < Int32(Base.length(this.xArray))
                try
                this.xArray[index + 1] = AllBinary.getX(this) + (index * Int32(16))
                finally
                    index += Int32(1)
                end
                end
            end
        end
        nothing
end


function setX(this::HealthHudWidget, x)
        AllBinary.setX(this, x)
        AllBinary.update(this)
        nothing
end


function onHealthChange(this::HealthHudWidget)
        this.max = (AllBinary.getHealth(this.healthInterface) ÷ this.healthScale)
        this.timeDelayHelper = staticGet_SINGLETON(NoTimeDelayHelper)
        if this.max <= Int32(1) && AllBinary.isAlive(this.healthInterface)
            this.max = Int32(1)
            if this.healthScale - AllBinary.getHealth(this.healthInterface) > (this.healthScale * Int32(2)) ÷ Int32(3)
                this.timeDelayHelper = this.slowBeatTimeDelayHelper
            elseif this.healthScale - AllBinary.getHealth(this.healthInterface) > this.healthScale ÷ Int32(3)
                this.timeDelayHelper = this.mediumBeatTimeDelayHelper
            else
                this.timeDelayHelper = this.fastBeatTimeDelayHelper
            end
        end
        nothing
end


function paint(this::HealthHudWidget, graphics)
        AllBinary.process(this.myFontProcessor, graphics)
        let
            local index::Int32 = Int32(0)
            while index < this.max
            try
            if AllBinary.isTime(this.timeDelayHelper, this.gameTickTimeDelayHelper.startTime)
                AllBinary.paintXY(this.animationInterface, graphics, this.xArray[index + 1], AllBinary.getY(this))
            end
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function paintThreed(this::HealthHudWidget, graphics)
        nothing
        nothing
end

