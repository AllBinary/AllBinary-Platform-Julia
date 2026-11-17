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

mutable struct BaseMenuBehavior <: JObject
    BaseMenuBehavior() = new()
end

const BaseMenuBehavior_instanceValue = Ref{Any}(nothing)
const BaseMenuBehavior_instanceSet = Ref(false)
function staticGet_instance(::Type{BaseMenuBehavior})
    if !BaseMenuBehavior_instanceSet[]
        BaseMenuBehavior_instanceSet[] = true
        BaseMenuBehavior_instanceValue[] = newBaseMenuBehavior()
    end
    BaseMenuBehavior_instanceValue[]
end
function staticSet_instance(::Type{BaseMenuBehavior}, value)
    BaseMenuBehavior_instanceSet[] = true
    BaseMenuBehavior_instanceValue[] = value
end

function initFieldsBaseMenuBehavior(this::BaseMenuBehavior)
    nothing
end

function initBaseMenuBehavior(this::BaseMenuBehavior)
    initFieldsBaseMenuBehavior(this)
end

function newBaseMenuBehavior()
    this = BaseMenuBehavior()
    initBaseMenuBehavior(this)
    this
end


function getInstance(::Type{BaseMenuBehavior})
        return staticGet_instance(BaseMenuBehavior)
end


function onDisplayChangeEvent(this::BaseMenuBehavior, allBinaryGameCanvas, displayChangeEvent)
        nothing
        nothing
end


function initSpecialPaint(this::BaseMenuBehavior, allBinaryGameCanvas)
        AllBinary.setNonBotPaintableP(allBinaryGameCanvas, AllBinary.getInstance(NullPaintable))
        nothing
end


function initMenu(this::BaseMenuBehavior, allBinaryGameCanvas)
        nothing
        nothing
end


function updateMenu(this::BaseMenuBehavior, allBinaryGameCanvas)
        nothing
        nothing
end


function popupMenu(this::BaseMenuBehavior, allBinaryGameCanvas)
        nothing
        nothing
end


function closeMenu(this::BaseMenuBehavior, allBinaryGameCanvas)
        nothing
        nothing
end

