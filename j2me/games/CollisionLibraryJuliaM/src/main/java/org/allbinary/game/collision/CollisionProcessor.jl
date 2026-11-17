# Generated Code Do Not Modify
# package org.allbinary.game.collision

mutable struct CollisionProcessor <: JObject
    CollisionProcessor() = new()
end


function initFieldsCollisionProcessor(this::CollisionProcessor)
    nothing
end

function initCollisionProcessor(this::CollisionProcessor)
    initFieldsCollisionProcessor(this)
end

function newCollisionProcessor()
    this = CollisionProcessor()
    initCollisionProcessor(this)
    this
end


function isCollision(this::CollisionProcessor, myLayer, myLayer2)
        return false
end

