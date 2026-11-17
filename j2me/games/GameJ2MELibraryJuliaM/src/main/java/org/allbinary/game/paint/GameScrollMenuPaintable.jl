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

# extends BasicGameDemoPaintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameScrollMenuPaintable <: JObject
    GameScrollMenuPaintable() = new()
end


function initFieldsGameScrollMenuPaintable(this::GameScrollMenuPaintable)
    nothing
end


function initGameScrollMenuPaintable(this::GameScrollMenuPaintable, mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface, basicColor)
        initBasicGameDemoPaintable(this, mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface)
        AllBinary.setColor(this, basicColor)
        AllBinary.addListenerInterface(AllBinary.getInstance(ColorChangeEventHandler), this)
        nothing
end

function newGameScrollMenuPaintable(mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface, basicColor)
    this = GameScrollMenuPaintable()
    initGameScrollMenuPaintable(this, mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface, basicColor)
    this
end


function setState(this::GameScrollMenuPaintable, state)
        AllBinary.setCurrentStatePaintable(this, AllBinary.getMainDemoStatePaintable(this))
        nothing
end


function onEvent(this::GameScrollMenuPaintable, eventObject)
        nothing
        nothing
end


function setColor(this::GameScrollMenuPaintable, basicColor)
        local mainGameDemoStatePaintable = (AllBinary.getMainDemoStatePaintable(this))
        local formPaintable = (AllBinary.getMenuPaintableInterface(mainGameDemoStatePaintable))
        local scrollSelectionForm = (AllBinary.getForm(formPaintable))
        AllBinary.setBasicColorP(AllBinary.getOwnershipPaintableInterface(mainGameDemoStatePaintable), basicColor)
        AllBinary.setButtonBasicColor(scrollSelectionForm, basicColor)
        local item = nothing
        local stringComponent = nothing
        let
            local index::Int32 = AllBinary.size(scrollSelectionForm) - Int32(1)
            while index >= Int32(0)
            try
            item = (AllBinary.get(scrollSelectionForm, index))
            stringComponent = AllBinary.getLabelStringComponent(item)
            if stringComponent !== nothing
                AllBinary.setForegroundBasicColor(stringComponent, basicColor)
            end
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end

