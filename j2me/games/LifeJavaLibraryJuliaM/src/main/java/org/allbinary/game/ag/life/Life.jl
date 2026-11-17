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
# package org.allbinary.game.ag.life

mutable struct Life <: JObject
    lives::Int16
    startLives::Int16
    maxlives::Int16
    Life() = new()
end

const Life_NO_LIFEValue = Ref{Any}(nothing)
const Life_NO_LIFESet = Ref(false)
function staticGet_NO_LIFE(::Type{Life})
    if !Life_NO_LIFESet[]
        Life_NO_LIFESet[] = true
        Life_NO_LIFEValue[] = AllBinary.createLife(Life)
    end
    Life_NO_LIFEValue[]
end
function staticSet_NO_LIFE(::Type{Life}, value)
    Life_NO_LIFESet[] = true
    Life_NO_LIFEValue[] = value
end

function initFieldsLife(this::Life)
    this.lives = Int16(0)
    this.startLives = Int16(0)
    this.maxlives = Int16(0)
    
    
    
    nothing
end


function createLife(::Type{Life})
        try
            return newLife(((Int32(0)) % Int16), ((Int32(0)) % Int16))
        catch e
            throw(jNewException("RuntimeException", ""))
        end
end


function initLife(this::Life, lives, maxlives)
        initFieldsLife(this)
        this.maxlives = maxlives
        if lives > this.maxlives
            throw(jNewException("Exception", "To Many Lives"))
        end
        this.lives = lives
        this.startLives = lives
        nothing
end

function newLife(lives, maxlives)
    this = Life()
    initLife(this, lives, maxlives)
    this
end


function get(this::Life)
        return this.lives
end


function set(this::Life, lives)
        this.lives = lives
        nothing
end


function reset(this::Life)
        this.lives = this.startLives
        nothing
end


function add(this::Life, lives)
        if !AllBinary.reachedLimit(this)
            if this.lives + lives <= ((AllBinary.getMaxlives(this)) % Int32)
                this.lives = (((this.lives + lives)) % Int16)
            else
                this.lives = AllBinary.getMaxlives(this)
            end
        end
        nothing
end


function isAlive(this::Life)
        if ((this.lives) % Int32) <= Int32(0)
            return false
        else
            return true
        end
end


function getMaxlives(this::Life)
        return this.maxlives
end


function reachedLimit(this::Life)
        if this.lives > this.maxlives || ((this.lives) % Int32) < Int32(0)
            return true
        else
            return false
        end
end


function deaths(this::Life, lives)
        if !AllBinary.reachedLimit(this)
            if this.lives - lives >= Int32(0)
                this.lives = (((this.lives - lives)) % Int16)
            else
                this.lives = Int32(0)
            end
        end
        nothing
end


function getStartLives(this::Life)
        return this.startLives
end


function setStartLives(this::Life, startLives)
        this.startLives = startLives
        nothing
end

