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
# package org.allbinary.game.displayable.canvas

# extends CommandFormInputProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PopupCommandFormInputProcessor <: JObject
    PopupCommandFormInputProcessor() = new()
end


function initFieldsPopupCommandFormInputProcessor(this::PopupCommandFormInputProcessor)
    nothing
end


function initPopupCommandFormInputProcessor(this::PopupCommandFormInputProcessor, gameKeyEventList, playerInputId, gameCanvas, form, popupMenuInputProcessor)
        initCommandFormInputProcessor(this, gameKeyEventList, playerInputId, gameCanvas, form)
        nothing
end

function newPopupCommandFormInputProcessor(gameKeyEventList, playerInputId, gameCanvas, form, popupMenuInputProcessor)
    this = PopupCommandFormInputProcessor()
    initPopupCommandFormInputProcessor(this, gameKeyEventList, playerInputId, gameCanvas, form, popupMenuInputProcessor)
    this
end


function processInput(this::PopupCommandFormInputProcessor, key)
        return AllBinary.processInput(this, key)
end


function processMotionInput(this::PopupCommandFormInputProcessor, motionGestureEvent)
        AllBinary.processMotionInput(this, motionGestureEvent)
        nothing
end

