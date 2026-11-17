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
# package org.allbinary.animation.vector

# extends Animation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct LineAnimation <: JObject
    newLine::Any
    tempLine::Any
    line::Any
    LineAnimation() = new()
end


function initFieldsLineAnimation(this::LineAnimation)
    this.newLine = nothing
    this.tempLine = nothing
    this.line = nothing
    this.newLine = jNewArrayOf(Vector{Int32}, Int32(2), () -> jNewArray(Int32, Int32(2), Int32(0)))
    this.tempLine = AllBinary.getInstance(NullUtil).NULL_INT_ARRAY_ARRAY
    this.line = jNewArrayOf(Vector{Int32}, Int32(2), () -> jNewArray(Int32, Int32(2), Int32(0)))
    nothing
end


function initLineAnimation(this::LineAnimation, basicColor)
        initAnimation(this)
        initFieldsLineAnimation(this)
        AllBinary.setBasicColorP(this, basicColor)
        nothing
end

function newLineAnimation(basicColor)
    this = LineAnimation()
    initLineAnimation(this, basicColor)
    this
end


function init(this::LineAnimation, x, y)
        this.newLine[Int32(0) + 1][Int32(0) + 1] = x
        this.newLine[Int32(0) + 1][Int32(1) + 1] = y
        this.newLine[Int32(1) + 1][Int32(0) + 1] = x
        this.newLine[Int32(1) + 1][Int32(1) + 1] = y
        this.tempLine = this.line
        this.line = this.newLine
        this.newLine = this.tempLine
        nothing
end


function setPosition(this::LineAnimation, x, y, z)
        this.newLine[Int32(0) + 1][Int32(0) + 1] = this.line[Int32(1) + 1][Int32(0) + 1]
        this.newLine[Int32(0) + 1][Int32(1) + 1] = this.line[Int32(1) + 1][Int32(1) + 1]
        this.newLine[Int32(1) + 1][Int32(0) + 1] = x
        this.newLine[Int32(1) + 1][Int32(1) + 1] = y
        this.tempLine = this.line
        this.line = this.newLine
        this.newLine = this.tempLine
        nothing
end


function paintXY(this::LineAnimation, graphics, x, y)
        local currentLine = this.line
        AllBinary.setBasicColorP3(this.basicSetColorUtil, graphics, AllBinary.getBasicColorP(this), AllBinary.getColor(this))
        AllBinary.drawLine(graphics, currentLine[Int32(0) + 1][Int32(0) + 1], currentLine[Int32(0) + 1][Int32(1) + 1], currentLine[Int32(1) + 1][Int32(0) + 1], currentLine[Int32(1) + 1][Int32(1) + 1])
        nothing
end


function nextFrame(this::LineAnimation)
        nothing
        nothing
end


function getBasicColorP(this::LineAnimation)
        return AllBinary.getBasicColorP(this)
end


function setBasicColorP(this::LineAnimation, basicColor)
        AllBinary.setBasicColorP(this, basicColor)
        nothing
end

