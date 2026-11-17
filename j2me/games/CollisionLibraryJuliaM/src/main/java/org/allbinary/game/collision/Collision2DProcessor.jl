# Generated Code Do Not Modify
# package org.allbinary.game.collision

# extends CollisionProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct Collision2DProcessor <: JObject
    Collision2DProcessor() = new()
end


function initFieldsCollision2DProcessor(this::Collision2DProcessor)
    nothing
end

function initCollision2DProcessor(this::Collision2DProcessor)
    initCollisionProcessor(this)
    initFieldsCollision2DProcessor(this)
end

function newCollision2DProcessor()
    this = Collision2DProcessor()
    initCollision2DProcessor(this)
    this
end


function isCollision(this::Collision2DProcessor, myLayer, myLayer2)
        if AllBinary.getXP(myLayer2) >= AllBinary.getX2(myLayer) || AllBinary.getYP(myLayer2) >= AllBinary.getY2(myLayer) || AllBinary.getX2(myLayer2) <= AllBinary.getXP(myLayer) || AllBinary.getY2(myLayer2) <= AllBinary.getYP(myLayer)
            return false
        else
            return true
        end
end

