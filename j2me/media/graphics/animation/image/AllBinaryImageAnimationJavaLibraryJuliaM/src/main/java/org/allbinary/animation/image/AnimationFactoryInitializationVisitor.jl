#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.animation.image

mutable struct AnimationFactoryInitializationVisitor <: JObject
    width::Int32
    height::Int32
    dx::Int32
    dy::Int32
    originalDx::Int32
    originalDy::Int32
    AnimationFactoryInitializationVisitor() = new()
end


function initFieldsAnimationFactoryInitializationVisitor(this::AnimationFactoryInitializationVisitor)
    this.width = Int32(0)
    this.height = Int32(0)
    this.dx = Int32(0)
    this.dy = Int32(0)
    this.originalDx = Int32(0)
    this.originalDy = Int32(0)
    this.width = Int32(0)
    this.height = Int32(0)
    this.dx = Int32(0)
    this.dy = Int32(0)
    this.originalDx = Int32(0)
    this.originalDy = Int32(0)
    nothing
end

function initAnimationFactoryInitializationVisitor(this::AnimationFactoryInitializationVisitor)
    initFieldsAnimationFactoryInitializationVisitor(this)
end

function newAnimationFactoryInitializationVisitor()
    this = AnimationFactoryInitializationVisitor()
    initAnimationFactoryInitializationVisitor(this)
    this
end


function visit(this::AnimationFactoryInitializationVisitor)
        nothing
        nothing
end


function toString(this::AnimationFactoryInitializationVisitor)
        local commonSeps = AllBinary.getInstance(CommonSeps)
        local commonLabels = AllBinary.getInstance(CommonLabels)
        local stringBuffer = newStringMaker()
        AllBinary.appendfloat(AllBinary.append(stringBuffer, AllBinary.getInstance(PositionStrings).DX_LABEL), Float32(this.dx))
        AllBinary.appendfloat(AllBinary.append(stringBuffer, AllBinary.getInstance(PositionStrings).DY_LABEL), Float32(this.dy))
        AllBinary.append(stringBuffer, commonLabels.WIDTH_LABEL)
        AllBinary.appendint(stringBuffer, this.width)
        AllBinary.append(stringBuffer, commonSeps.SPACE)
        AllBinary.append(stringBuffer, commonLabels.HEIGHT_LABEL)
        AllBinary.appendint(stringBuffer, this.height)
        return AllBinary.toString(stringBuffer)
end

