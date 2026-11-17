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

mutable struct J2MEKeyFactory <: JObject
    gameKeyFactory::Any
    J2MEKeyFactory() = new()
end

const J2MEKeyFactory_instanceValue = Ref{Any}(nothing)
const J2MEKeyFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{J2MEKeyFactory})
    if !J2MEKeyFactory_instanceSet[]
        J2MEKeyFactory_instanceSet[] = true
        J2MEKeyFactory_instanceValue[] = newJ2MEKeyFactory()
    end
    J2MEKeyFactory_instanceValue[]
end
function staticSet_instance(::Type{J2MEKeyFactory}, value)
    J2MEKeyFactory_instanceSet[] = true
    J2MEKeyFactory_instanceValue[] = value
end

function initFieldsJ2MEKeyFactory(this::J2MEKeyFactory)
    this.gameKeyFactory = nothing
    this.gameKeyFactory = AllBinary.getInstance(GameKeyFactory)
    nothing
end


function getInstance(::Type{J2MEKeyFactory})
        return staticGet_instance(J2MEKeyFactory)
end


function initJ2MEKeyFactory(this::J2MEKeyFactory)
        initFieldsJ2MEKeyFactory(this)
        nothing
        nothing
end

function newJ2MEKeyFactory()
    this = J2MEKeyFactory()
    initJ2MEKeyFactory(this)
    this
end


function init(this::J2MEKeyFactory)
        local gameKeyArray = Any[this.gameKeyFactory.DOWN, this.gameKeyFactory.FIRE, this.gameKeyFactory.GAME_A, this.gameKeyFactory.GAME_B, this.gameKeyFactory.GAME_C, this.gameKeyFactory.GAME_D, this.gameKeyFactory.KEY_NUM0, this.gameKeyFactory.KEY_NUM1, this.gameKeyFactory.KEY_NUM2, this.gameKeyFactory.KEY_NUM3, this.gameKeyFactory.KEY_NUM4, this.gameKeyFactory.KEY_NUM5, this.gameKeyFactory.KEY_NUM6, this.gameKeyFactory.KEY_NUM7, this.gameKeyFactory.KEY_NUM8, this.gameKeyFactory.KEY_NUM9, this.gameKeyFactory.KEY_POUND, this.gameKeyFactory.KEY_STAR, this.gameKeyFactory.LEFT, this.gameKeyFactory.LEVEL_DOWN, this.gameKeyFactory.LEVEL_UP, this.gameKeyFactory.NONE, this.gameKeyFactory.RIGHT, this.gameKeyFactory.UP]
        local inputFactory = AllBinary.getInstance(InputFactory)
        let
            local index::Int32 = Int32(Base.length(gameKeyArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.add(inputFactory, AllBinary.getId(gameKeyArray[index + 1]), gameKeyArray[index + 1])
            finally
            end
            end
        end
        nothing
end


function isSubmission(this::J2MEKeyFactory, input)
        if input === this.gameKeyFactory.FIRE
            return true
        end
        return false
end


function isDelete(this::J2MEKeyFactory, input)
        if input === this.gameKeyFactory.GAME_D
            return true
        end
        return false
end


function isBackSpace(this::J2MEKeyFactory, input)
        return false
end


function isUp(this::J2MEKeyFactory, input)
        if input === this.gameKeyFactory.UP
            return true
        end
        return false
end


function isDown(this::J2MEKeyFactory, input)
        if input === this.gameKeyFactory.DOWN
            return true
        end
        return false
end


function isLeft(this::J2MEKeyFactory, input)
        if input === this.gameKeyFactory.LEFT
            return true
        end
        return false
end


function isRight(this::J2MEKeyFactory, input)
        if input === this.gameKeyFactory.RIGHT
            return true
        end
        return false
end


function isEnter(this::J2MEKeyFactory, input)
        if input === this.gameKeyFactory.FIRE
            return true
        end
        return false
end

