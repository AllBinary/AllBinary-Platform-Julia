# Generated Code Do Not Modify
# package org.allbinary.game.collision

# extends CollisionProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CollisionThreedProcessor <: JObject
    CollisionThreedProcessor() = new()
end


function initFieldsCollisionThreedProcessor(this::CollisionThreedProcessor)
    nothing
end

function initCollisionThreedProcessor(this::CollisionThreedProcessor)
    initCollisionProcessor(this)
    initFieldsCollisionThreedProcessor(this)
end

function newCollisionThreedProcessor()
    this = CollisionThreedProcessor()
    initCollisionThreedProcessor(this)
    this
end


function isCollision(this::CollisionThreedProcessor, myLayer, myLayer2)
        if AllBinary.getXP(myLayer2) >= AllBinary.getX2(myLayer) || AllBinary.getYP(myLayer2) >= AllBinary.getY2(myLayer) || AllBinary.getX2(myLayer2) <= AllBinary.getXP(myLayer) || AllBinary.getY2(myLayer2) <= AllBinary.getYP(myLayer) || AllBinary.getZP(myLayer2) < AllBinary.getZ2(myLayer) || AllBinary.getZ2(myLayer2) > AllBinary.getZP(myLayer)
            return false
        else
            return true
        end
end

