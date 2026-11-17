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

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct MainGameDemoStatePaintable <: JObject
    ownershipPaintableInterface::Any
    menuPaintableInterface::Any
    MainGameDemoStatePaintable() = new()
end


function initFieldsMainGameDemoStatePaintable(this::MainGameDemoStatePaintable)
    this.ownershipPaintableInterface = nothing
    this.menuPaintableInterface = nothing
    
    
    nothing
end


function initMainGameDemoStatePaintable(this::MainGameDemoStatePaintable, ownershipPaintableInterface, menuPaintableInterface)
        initPaintable(this)
        initFieldsMainGameDemoStatePaintable(this)
        this.ownershipPaintableInterface = ownershipPaintableInterface
        this.menuPaintableInterface = menuPaintableInterface
        nothing
end

function newMainGameDemoStatePaintable(ownershipPaintableInterface, menuPaintableInterface)
    this = MainGameDemoStatePaintable()
    initMainGameDemoStatePaintable(this, ownershipPaintableInterface, menuPaintableInterface)
    this
end


function paint(this::MainGameDemoStatePaintable, graphics)
        AllBinary.paint(this.menuPaintableInterface, graphics)
        AllBinary.paint(this.ownershipPaintableInterface, graphics)
        nothing
end


function getOwnershipPaintableInterface(this::MainGameDemoStatePaintable)
        return this.ownershipPaintableInterface
end


function getMenuPaintableInterface(this::MainGameDemoStatePaintable)
        return this.menuPaintableInterface
end

