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
# package org.allbinary.game.paint

# extends StatePaintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BasicGameDemoPaintable <: JObject
    mainDemoStatePaintable::Any
    ownershipPaintable::Any
    helpPaintableInterface::Any
    currentStatePaintable::Any
    BasicGameDemoPaintable() = new()
end


function initFieldsBasicGameDemoPaintable(this::BasicGameDemoPaintable)
    this.mainDemoStatePaintable = nothing
    this.ownershipPaintable = nothing
    this.helpPaintableInterface = nothing
    this.currentStatePaintable = nothing
    
    
    
    this.currentStatePaintable = AllBinary.getInstance(NullPaintable)
    nothing
end


function initBasicGameDemoPaintable(this::BasicGameDemoPaintable, mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface)
        initStatePaintable(this)
        initFieldsBasicGameDemoPaintable(this)
        this.mainDemoStatePaintable = mainDemoStatePaintable
        AllBinary.setCurrentStatePaintable(this, AllBinary.getInstance(NullPaintable))
        this.ownershipPaintable = ownershipPaintable
        this.helpPaintableInterface = helpPaintableInterface
        nothing
end

function newBasicGameDemoPaintable(mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface)
    this = BasicGameDemoPaintable()
    initBasicGameDemoPaintable(this, mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface)
    this
end


function setState(this::BasicGameDemoPaintable, state)
        if state == Int32(0)
            AllBinary.setCurrentStatePaintable(this, AllBinary.getMainDemoStatePaintable(this))
        elseif state == Int32(1)
            AllBinary.setCurrentStatePaintable(this, this.helpPaintableInterface)
        else
            AllBinary.setCurrentStatePaintable(this, this.ownershipPaintable)
        end
        nothing
end


function paint(this::BasicGameDemoPaintable, graphics)
        AllBinary.paint(AllBinary.getCurrentStatePaintable(this), graphics)
        nothing
end


function getHelpPaintableInterface(this::BasicGameDemoPaintable)
        return this.helpPaintableInterface
end


function setCurrentStatePaintable(this::BasicGameDemoPaintable, currentStatePaintable)
        this.currentStatePaintable = currentStatePaintable
        nothing
end


function getCurrentStatePaintable(this::BasicGameDemoPaintable)
        return this.currentStatePaintable
end


function getMainDemoStatePaintable(this::BasicGameDemoPaintable)
        return this.mainDemoStatePaintable
end

