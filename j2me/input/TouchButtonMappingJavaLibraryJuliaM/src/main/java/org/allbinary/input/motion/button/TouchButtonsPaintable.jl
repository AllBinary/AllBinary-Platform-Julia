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
# package org.allbinary.input.motion.button

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TouchButtonsPaintable <: JObject
    foregroundBasicColor::Any
    foregroundColor::Int32
    basicSetColorUtil::Any
    touchButtonFactory::Any
    TouchButtonsPaintable() = new()
end


function initFieldsTouchButtonsPaintable(this::TouchButtonsPaintable)
    this.foregroundBasicColor = nothing
    this.foregroundColor = Int32(0)
    this.basicSetColorUtil = nothing
    this.touchButtonFactory = nothing
    
    
    this.basicSetColorUtil = AllBinary.getInstance(BasicColorSetUtil)
    this.touchButtonFactory = AllBinary.getInstance(TouchButtonFactory)
    nothing
end


function initTouchButtonsPaintable(this::TouchButtonsPaintable, basicColor)
        initPaintable(this)
        initFieldsTouchButtonsPaintable(this)
        this.foregroundBasicColor = basicColor
        this.foregroundColor = AllBinary.intValue(basicColor)
        nothing
end

function newTouchButtonsPaintable(basicColor)
    this = TouchButtonsPaintable()
    initTouchButtonsPaintable(this, basicColor)
    this
end


function paint(this::TouchButtonsPaintable, graphics)
        local list = AllBinary.getList(this.touchButtonFactory)
        AllBinary.setBasicColorP3(this.basicSetColorUtil, graphics, this.foregroundBasicColor, this.foregroundColor)
        local touchButton = nothing
        let
            local index::Int32 = AllBinary.size(list)
            while (index -= Int32(1)) >= Int32(0)
            try
            touchButton = (list.objectArray[index + 1])
            AllBinary.paint(touchButton, graphics)
            finally
            end
            end
        end
        let
            index = AllBinary.size(list)
            while (index -= Int32(1)) >= Int32(0)
            try
            touchButton = (list.objectArray[index + 1])
            AllBinary.paintHint(touchButton, graphics)
            finally
            end
            end
        end
        nothing
end

