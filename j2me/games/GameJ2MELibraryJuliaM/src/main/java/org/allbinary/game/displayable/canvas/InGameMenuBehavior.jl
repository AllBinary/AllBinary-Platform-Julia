#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

# extends BaseMenuBehavior: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct InGameMenuBehavior <: JObject
    InGameMenuBehavior() = new()
end

const InGameMenuBehavior_instanceCValue = Ref{Any}(nothing)
const InGameMenuBehavior_instanceCSet = Ref(false)
function staticGet_instanceC(::Type{InGameMenuBehavior})
    if !InGameMenuBehavior_instanceCSet[]
        InGameMenuBehavior_instanceCSet[] = true
        InGameMenuBehavior_instanceCValue[] = newInGameMenuBehavior()
    end
    InGameMenuBehavior_instanceCValue[]
end
function staticSet_instanceC(::Type{InGameMenuBehavior}, value)
    InGameMenuBehavior_instanceCSet[] = true
    InGameMenuBehavior_instanceCValue[] = value
end

function initFieldsInGameMenuBehavior(this::InGameMenuBehavior)
    nothing
end

function initInGameMenuBehavior(this::InGameMenuBehavior)
    initBaseMenuBehavior(this)
    initFieldsInGameMenuBehavior(this)
end

function newInGameMenuBehavior()
    this = InGameMenuBehavior()
    initInGameMenuBehavior(this)
    this
end


function getInstance(::Type{InGameMenuBehavior})
        return staticGet_instanceC(InGameMenuBehavior)
end


function onDisplayChangeEvent(this::InGameMenuBehavior, allBinaryGameCanvas, displayChangeEvent)
        AllBinary.updateMenuFromEvent(allBinaryGameCanvas, displayChangeEvent)
        nothing
end


function initSpecialPaint(this::InGameMenuBehavior, allBinaryGameCanvas)
        AllBinary.setNonBotPaintableP(allBinaryGameCanvas, newGameCanvasNonBotPaintable(allBinaryGameCanvas))
        nothing
end


function initMenu(this::InGameMenuBehavior, allBinaryGameCanvas)
        AllBinary.initMenu2(allBinaryGameCanvas)
        nothing
end


function updateMenu(this::InGameMenuBehavior, allBinaryGameCanvas)
        AllBinary.initMenu2(allBinaryGameCanvas)
        nothing
end


function popupMenu(this::InGameMenuBehavior, allBinaryGameCanvas)
        AllBinary.popupMenu2(allBinaryGameCanvas)
        nothing
end


function closeMenu(this::InGameMenuBehavior, allBinaryGameCanvas)
        AllBinary.closeMenu2(allBinaryGameCanvas)
        nothing
end

