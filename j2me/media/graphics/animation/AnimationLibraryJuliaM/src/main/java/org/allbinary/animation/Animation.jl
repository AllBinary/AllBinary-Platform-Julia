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
# package org.allbinary.animation

mutable struct Animation <: JObject
    basicSetColorUtil::Any
    basicColor::Any
    colorP::Int32
    changeBasicColorP::Any
    changeColorP::Int32
    alphaP::Int32
    Animation() = new()
end


function initFieldsAnimation(this::Animation)
    this.basicSetColorUtil = nothing
    this.basicColor = nothing
    this.colorP = Int32(0)
    this.changeBasicColorP = nothing
    this.changeColorP = Int32(0)
    this.alphaP = Int32(0)
    this.basicSetColorUtil = AllBinary.getInstance(BasicColorSetUtil)
    this.basicColor = AllBinary.getInstance(BasicColorFactory).WHITE
    this.colorP = Int32(0)
    this.changeBasicColorP = AllBinary.getInstance(BasicColorFactory).NULL_COLOR
    this.changeColorP = Int32(0)
    this.alphaP = Int32(0)
    nothing
end


function initAnimation(this::Animation)
        initFieldsAnimation(this)
        nothing
        nothing
end

function newAnimation()
    this = Animation()
    initAnimation(this)
    this
end


function setAlpha(this::Animation, alpha)
        this.alphaP = alpha
        nothing
end


function nextFrame(this::Animation)
        nothing
        nothing
end


function paintXY(this::Animation, graphics, x, y)
        AllBinary.setBasicColorP3(this.basicSetColorUtil, graphics, AllBinary.getBasicColorP(this), AllBinary.getColor(this))
        nothing
end


function paintThreedXYZ(this::Animation, graphics, x, y, z)
        nothing
        nothing
end


function isThreed(this::Animation)
        return false
end


function getBasicColorP(this::Animation)
        return this.basicColor
end


function setBasicColorP(this::Animation, basicColor)
        this.basicColor = basicColor
        this.colorP = AllBinary.intValue(this.basicColor)
        nothing
end


function setBackgroundBasicColorP(this::Animation, basicColor)
        nothing
        nothing
end


function getChangeBasicColor(this::Animation)
        return this.changeBasicColorP
end


function changeBasicColor(this::Animation, basicColor)
        this.changeBasicColorP = basicColor
        this.changeColorP = AllBinary.intValue(this.changeBasicColorP)
        nothing
end


function getChangeColor(this::Animation)
        return this.changeColorP
end


function getColor(this::Animation)
        return this.colorP
end


function setScale(this::Animation, scaleX, scaleY)
        nothing
        nothing
end


function setMaxScale(this::Animation, maxScaleX, maxScaleY)
        nothing
        nothing
end


function set(this::Animation, gl)
        nothing
        nothing
end


function setDx(this::Animation, dx)
        nothing
        nothing
end


function getDx(this::Animation)
        return Int32(0)
end


function setDy(this::Animation, dy)
        nothing
        nothing
end


function getDy(this::Animation)
        return Int32(0)
end

