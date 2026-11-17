# Generated Code Do Not Modify
# package org.allbinary.graph

mutable struct V <: JObject
    V() = new()
end


function initFieldsV(this::V)
    nothing
end

function initV(this::V)
    initFieldsV(this)
end

function newV()
    this = V()
    initV(this)
    this
end


function getId(this::V)
        return Int32(0)
end

