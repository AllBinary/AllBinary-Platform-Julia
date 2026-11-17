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

mutable struct GameKeyFactory <: JObject
    NONE::Any
    UP::Any
    DOWN::Any
    LEFT::Any
    RIGHT::Any
    KEY_POUND::Any
    KEY_STAR::Any
    KEY_NUM0::Any
    KEY_NUM1::Any
    KEY_NUM2::Any
    KEY_NUM3::Any
    KEY_NUM4::Any
    KEY_NUM5::Any
    KEY_NUM6::Any
    KEY_NUM7::Any
    KEY_NUM8::Any
    KEY_NUM9::Any
    GAME_A::Any
    GAME_B::Any
    GAME_C::Any
    GAME_D::Any
    FIRE::Any
    LEVEL_DOWN::Any
    LEVEL_UP::Any
    GameKeyFactory() = new()
end

const GameKeyFactory_instanceValue = Ref{Any}(nothing)
const GameKeyFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{GameKeyFactory})
    if !GameKeyFactory_instanceSet[]
        GameKeyFactory_instanceSet[] = true
        GameKeyFactory_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    GameKeyFactory_instanceValue[]
end
function staticSet_instance(::Type{GameKeyFactory}, value)
    GameKeyFactory_instanceSet[] = true
    GameKeyFactory_instanceValue[] = value
end

function initFieldsGameKeyFactory(this::GameKeyFactory)
    this.NONE = nothing
    this.UP = nothing
    this.DOWN = nothing
    this.LEFT = nothing
    this.RIGHT = nothing
    this.KEY_POUND = nothing
    this.KEY_STAR = nothing
    this.KEY_NUM0 = nothing
    this.KEY_NUM1 = nothing
    this.KEY_NUM2 = nothing
    this.KEY_NUM3 = nothing
    this.KEY_NUM4 = nothing
    this.KEY_NUM5 = nothing
    this.KEY_NUM6 = nothing
    this.KEY_NUM7 = nothing
    this.KEY_NUM8 = nothing
    this.KEY_NUM9 = nothing
    this.GAME_A = nothing
    this.GAME_B = nothing
    this.GAME_C = nothing
    this.GAME_D = nothing
    this.FIRE = nothing
    this.LEVEL_DOWN = nothing
    this.LEVEL_UP = nothing
    this.NONE = newGameKey(AllBinary.getInstance(InputFactory).MAX - Int32(1), "None")
    this.UP = newGameKey(staticGet_UP(Canvas), AllBinary.getInstance(CommonPhoneStrings).UP)
    this.DOWN = newGameKey(staticGet_DOWN(Canvas), AllBinary.getInstance(CommonPhoneStrings).DOWN)
    this.LEFT = newGameKey(staticGet_LEFT(Canvas), AllBinary.getInstance(CommonPhoneStrings).LEFT)
    this.RIGHT = newGameKey(staticGet_RIGHT(Canvas), AllBinary.getInstance(CommonPhoneStrings).RIGHT)
    this.KEY_POUND = newGameKey(staticGet_KEY_POUND(Canvas), "POUND")
    this.KEY_STAR = newGameKey(staticGet_KEY_STAR(Canvas), "STAR")
    this.KEY_NUM0 = newGameKey(staticGet_KEY_NUM0(Canvas), AllBinary.getInstance(CommonPhoneStrings).ZERO)
    this.KEY_NUM1 = newGameKey(staticGet_KEY_NUM1(Canvas), AllBinary.getInstance(CommonPhoneStrings).ONE)
    this.KEY_NUM2 = newGameKey(staticGet_KEY_NUM2(Canvas), AllBinary.getInstance(CommonPhoneStrings).TWO)
    this.KEY_NUM3 = newGameKey(staticGet_KEY_NUM3(Canvas), AllBinary.getInstance(CommonPhoneStrings).THREE)
    this.KEY_NUM4 = newGameKey(staticGet_KEY_NUM4(Canvas), AllBinary.getInstance(CommonPhoneStrings).FOUR)
    this.KEY_NUM5 = newGameKey(staticGet_KEY_NUM5(Canvas), AllBinary.getInstance(CommonPhoneStrings).FIVE)
    this.KEY_NUM6 = newGameKey(staticGet_KEY_NUM6(Canvas), AllBinary.getInstance(CommonPhoneStrings).SIX)
    this.KEY_NUM7 = newGameKey(staticGet_KEY_NUM7(Canvas), AllBinary.getInstance(CommonPhoneStrings).SEVEN)
    this.KEY_NUM8 = newGameKey(staticGet_KEY_NUM8(Canvas), AllBinary.getInstance(CommonPhoneStrings).EIGHT)
    this.KEY_NUM9 = newGameKey(staticGet_KEY_NUM9(Canvas), AllBinary.getInstance(CommonPhoneStrings).NINE)
    this.GAME_A = newGameKey(staticGet_GAME_A(Canvas), "Game A")
    this.GAME_B = newGameKey(staticGet_GAME_B(Canvas), "Game B")
    this.GAME_C = newGameKey(staticGet_GAME_C(Canvas), "Game C")
    this.GAME_D = newGameKey(staticGet_GAME_D(Canvas), "Game D")
    this.FIRE = newGameKey(staticGet_FIRE(Canvas), AllBinary.getInstance(CommonPhoneStrings).FIRE)
    this.LEVEL_DOWN = newGameKey(staticGet_KEY_NUM9(Canvas) + Int32(1), "Cheat Level Up")
    this.LEVEL_UP = newGameKey(staticGet_KEY_NUM9(Canvas) + Int32(2), "Cheat Level Down")
    nothing
end

function initGameKeyFactory(this::GameKeyFactory)
    initFieldsGameKeyFactory(this)
end

function newGameKeyFactory()
    this = GameKeyFactory()
    initGameKeyFactory(this)
    this
end


function getInstance(::Type{GameKeyFactory})
        if staticGet_instance(GameKeyFactory) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(GameKeyFactory, newGameKeyFactory())
        end
        return (staticGet_instance(GameKeyFactory))
end

