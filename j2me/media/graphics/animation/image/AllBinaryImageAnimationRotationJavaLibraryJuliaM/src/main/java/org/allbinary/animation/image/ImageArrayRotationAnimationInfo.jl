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
# package org.allbinary.animation.image

mutable struct ImageArrayRotationAnimationInfo <: JObject
    imageArray::Any
    angleIncrement::Int32
    totalAngle::Int32
    dx::Int32
    dy::Int32
    ImageArrayRotationAnimationInfo() = new()
end


function initFieldsImageArrayRotationAnimationInfo(this::ImageArrayRotationAnimationInfo)
    this.imageArray = nothing
    this.angleIncrement = Int32(0)
    this.totalAngle = Int32(0)
    this.dx = Int32(0)
    this.dy = Int32(0)
    
    
    
    
    
    nothing
end


function initImageArrayRotationAnimationInfo(this::ImageArrayRotationAnimationInfo, imageArray, angleIncrement, totalAngle, dx, dy)
        initFieldsImageArrayRotationAnimationInfo(this)
        this.imageArray = imageArray
        this.angleIncrement = angleIncrement
        this.totalAngle = totalAngle
        this.dx = dx
        this.dy = dy
        nothing
end

function newImageArrayRotationAnimationInfo(imageArray, angleIncrement, totalAngle, dx, dy)
    this = ImageArrayRotationAnimationInfo()
    initImageArrayRotationAnimationInfo(this, imageArray, angleIncrement, totalAngle, dx, dy)
    this
end


function setImageArray(this::ImageArrayRotationAnimationInfo, imageArray)
        this.imageArray = imageArray
        nothing
end


function getImageArray(this::ImageArrayRotationAnimationInfo)
        return this.imageArray
end


function getAngleInfoP(this::ImageArrayRotationAnimationInfo)
        return AllBinary.getInstance(AngleInfo, ((this.angleIncrement) % Int16))
end


function setTotalAngle(this::ImageArrayRotationAnimationInfo, totalAngle)
        this.totalAngle = totalAngle
        nothing
end


function getTotalAngle(this::ImageArrayRotationAnimationInfo)
        return this.totalAngle
end


function setDx(this::ImageArrayRotationAnimationInfo, dx)
        this.dx = dx
        nothing
end


function getDx(this::ImageArrayRotationAnimationInfo)
        return this.dx
end


function setDy(this::ImageArrayRotationAnimationInfo, dy)
        this.dy = dy
        nothing
end


function getDy(this::ImageArrayRotationAnimationInfo)
        return this.dy
end

