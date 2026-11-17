# Generated Code Do Not Modify
# package org.allbinary.animation.vector

# extends RectangleFilledAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ARectangleFilledAnimation <: JObject
    x::Int32
    y::Int32
    ARectangleFilledAnimation() = new()
end


function initFieldsARectangleFilledAnimation(this::ARectangleFilledAnimation)
    this.x = Int32(0)
    this.y = Int32(0)
    this.x = Int32(0)
    this.y = Int32(0)
    nothing
end


function initARectangleFilledAnimation(this::ARectangleFilledAnimation)
        initRectangleFilledAnimation(this, Int32(0), Int32(0), AllBinary.getInstance(BasicColorFactory).BLACK)
        initFieldsARectangleFilledAnimation(this)
        nothing
end

function newARectangleFilledAnimation()
    this = ARectangleFilledAnimation()
    initARectangleFilledAnimation(this)
    this
end


function nextFrame(this::ARectangleFilledAnimation)
        nothing
        nothing
end


function paintXY(this::ARectangleFilledAnimation, graphics, unusedX, unusedY)
        AllBinary.paintXY(this, graphics, this.x, this.y)
        nothing
end

