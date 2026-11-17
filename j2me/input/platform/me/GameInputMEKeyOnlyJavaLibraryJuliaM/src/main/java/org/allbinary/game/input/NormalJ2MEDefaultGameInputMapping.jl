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
mutable struct NormalJ2MEDefaultGameInputMapping <: JObject
    NormalJ2MEDefaultGameInputMapping() = new()
end


function initFieldsNormalJ2MEDefaultGameInputMapping(this::NormalJ2MEDefaultGameInputMapping)
    nothing
end


function initNormalJ2MEDefaultGameInputMapping(this::NormalJ2MEDefaultGameInputMapping)
        initPersistentInputMapping(this, AllBinary.getInstance(GamePersistanceStrings).DEFAULT_INPUT_MAPPING_RECORD_ID)
        local inputToGameKeyMapping = AllBinary.getInputMapping(this)
        local gameKeyFactory = AllBinary.getInstance(GameKeyFactory)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.UP, gameKeyFactory.KEY_NUM2)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.LEFT, gameKeyFactory.KEY_NUM4)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.RIGHT, gameKeyFactory.KEY_NUM6)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.DOWN, gameKeyFactory.KEY_NUM8)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM1, gameKeyFactory.GAME_A)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM3, gameKeyFactory.GAME_B)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM7, gameKeyFactory.GAME_C)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM9, gameKeyFactory.GAME_D)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.LEVEL_DOWN, gameKeyFactory.LEVEL_DOWN)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.LEVEL_UP, gameKeyFactory.LEVEL_UP)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.UP, gameKeyFactory.UP)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.DOWN, gameKeyFactory.DOWN)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.LEFT, gameKeyFactory.LEFT)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.RIGHT, gameKeyFactory.RIGHT)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_POUND, gameKeyFactory.KEY_POUND)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_STAR, gameKeyFactory.KEY_STAR)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM1, gameKeyFactory.KEY_NUM1)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM3, gameKeyFactory.KEY_NUM3)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM5, gameKeyFactory.KEY_NUM5)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM7, gameKeyFactory.KEY_NUM7)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM9, gameKeyFactory.KEY_NUM9)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM0, gameKeyFactory.KEY_NUM0)
        AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM1, gameKeyFactory.FIRE)
        nothing
end

function newNormalJ2MEDefaultGameInputMapping()
    this = NormalJ2MEDefaultGameInputMapping()
    initNormalJ2MEDefaultGameInputMapping(this)
    this
end

