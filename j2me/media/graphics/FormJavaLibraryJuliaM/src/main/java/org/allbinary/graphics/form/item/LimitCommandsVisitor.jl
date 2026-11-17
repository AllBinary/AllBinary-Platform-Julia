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
# package org.allbinary.graphics.form.item

# extends Visitor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct LimitCommandsVisitor <: JObject
    isNotSmallDisplay::Bool
    LimitCommandsVisitor() = new()
end


function initFieldsLimitCommandsVisitor(this::LimitCommandsVisitor)
    this.isNotSmallDisplay = false
    
    nothing
end


function initLimitCommandsVisitor(this::LimitCommandsVisitor)
        initVisitor(this)
        initFieldsLimitCommandsVisitor(this)
        local displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
        this.isNotSmallDisplay = (AllBinary.isPortrait(displayInfo) && AllBinary.getLastHeight(displayInfo) > AllBinary.getInstance(ScreenInfo).SMALL_WIDTH) || (!AllBinary.isPortrait(displayInfo) && AllBinary.getLastHeight(displayInfo) > AllBinary.getInstance(ScreenInfo).SMALL_HEIGHT)
        nothing
end

function newLimitCommandsVisitor()
    this = LimitCommandsVisitor()
    initLimitCommandsVisitor(this)
    this
end


function visit(this::LimitCommandsVisitor, anyType)
        local command = (anyType)
        local booleanFactory = AllBinary.getInstance(BooleanFactory)
        if this.isNotSmallDisplay || AllBinary.getPriority(command) == Int32(1) || command === AllBinary.getInstance(GameCommandsFactory).EXIT_COMMAND || command === AllBinary.getInstance(GameCommandsFactory).EXIT_WITHOUT_PROGRESS_COMMAND
            return booleanFactory.TRUE
        else
            return booleanFactory.FALSE
        end
end

