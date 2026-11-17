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
# package org.allbinary.game.input

# extends PersistentInputMapping: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DesktopDefaultGameInputMapping <: JObject
    DesktopDefaultGameInputMapping() = new()
end


function initFieldsDesktopDefaultGameInputMapping(this::DesktopDefaultGameInputMapping)
    nothing
end


function initDesktopDefaultGameInputMapping(this::DesktopDefaultGameInputMapping)
        initPersistentInputMapping(this, AllBinary.getInstance(GamePersistanceStrings).DEFAULT_INPUT_MAPPING_RECORD_ID)
        local pcKeyFactory = AllBinary.getInstance(PCKeyFactory)
        local inputToGameKeyMapping = AllBinary.getInputMapping(this)
        local gameKeyFactory = AllBinary.getInstance(GameKeyFactory)
        local touchMotionGestureFactory = AllBinary.getInstance(TouchMotionGestureFactory)
        local basicTouchInputFactory = AllBinary.getInstance(BasicTouchInputFactory)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.FIRE, pcKeyFactory.ENTER)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM1, pcKeyFactory.FOUR)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM1, pcKeyFactory._P)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM1, pcKeyFactory.p)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.UP, pcKeyFactory.DPAD_UP)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.DOWN, pcKeyFactory.DPAD_DOWN)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.LEFT, pcKeyFactory.DPAD_LEFT)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.RIGHT, pcKeyFactory.DPAD_RIGHT)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM7, pcKeyFactory._Y)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM9, pcKeyFactory._I)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.UP, pcKeyFactory._U)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.LEFT, pcKeyFactory._H)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.RIGHT, pcKeyFactory._J)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.DOWN, pcKeyFactory._N)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM5, pcKeyFactory._M)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM7, pcKeyFactory.y)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM9, pcKeyFactory.i)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.UP, pcKeyFactory.u)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.LEFT, pcKeyFactory.h)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.RIGHT, pcKeyFactory.j)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.DOWN, pcKeyFactory.n)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM5, pcKeyFactory.m)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM7, pcKeyFactory._Q)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM9, pcKeyFactory._E)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.UP, pcKeyFactory._W)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.LEFT, pcKeyFactory._A)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.RIGHT, pcKeyFactory._D)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.DOWN, pcKeyFactory._S)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM5, pcKeyFactory._X)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM7, pcKeyFactory.q)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM9, pcKeyFactory.e)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.UP, pcKeyFactory.w)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.LEFT, pcKeyFactory.a)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.RIGHT, pcKeyFactory.d)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.DOWN, pcKeyFactory.s)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM5, pcKeyFactory.x)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.UP, touchMotionGestureFactory.UP)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.DOWN, touchMotionGestureFactory.DOWN)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.LEFT, touchMotionGestureFactory.LEFT)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.RIGHT, touchMotionGestureFactory.RIGHT)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.UP, basicTouchInputFactory.UP)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.LEFT, basicTouchInputFactory.LEFT)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.RIGHT, basicTouchInputFactory.RIGHT)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.DOWN, basicTouchInputFactory.DOWN)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM0, basicTouchInputFactory.SPECIAL_BUTTON_FIVE)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM7, basicTouchInputFactory.SPECIAL_BUTTON_FOUR)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM9, basicTouchInputFactory.SPECIAL_BUTTON_THREE)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM1, basicTouchInputFactory.SPECIAL_BUTTON_TWO)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM3, basicTouchInputFactory.SPECIAL_BUTTON_ONE)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM2, basicTouchInputFactory.SPECIAL_BUTTON_SIX)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM3, pcKeyFactory.THREE)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM0, pcKeyFactory.ZERO)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM0, pcKeyFactory.ONE)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM0, pcKeyFactory.SPACE)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_POUND, pcKeyFactory.DEL)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_POUND, pcKeyFactory.TWO)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_STAR, pcKeyFactory.ESCAPE)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_STAR, pcKeyFactory.STAR)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.LEVEL_DOWN, pcKeyFactory.COMMA)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.LEVEL_UP, pcKeyFactory.PERIOD)
        nothing
end

function newDesktopDefaultGameInputMapping()
    this = DesktopDefaultGameInputMapping()
    initDesktopDefaultGameInputMapping(this)
    this
end

