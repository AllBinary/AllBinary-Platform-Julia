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
# package org.allbinary.animation.caption

# extends Animation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CaptionAnimationHelperBase <: JObject
    CaptionAnimationHelperBase() = new()
end

const CaptionAnimationHelperBase_INSTANCEValue = Ref{Any}(nothing)
const CaptionAnimationHelperBase_INSTANCESet = Ref(false)
function staticGet_INSTANCE(::Type{CaptionAnimationHelperBase})
    if !CaptionAnimationHelperBase_INSTANCESet[]
        CaptionAnimationHelperBase_INSTANCESet[] = true
        CaptionAnimationHelperBase_INSTANCEValue[] = newCaptionAnimationHelperBase()
    end
    CaptionAnimationHelperBase_INSTANCEValue[]
end
function staticSet_INSTANCE(::Type{CaptionAnimationHelperBase}, value)
    CaptionAnimationHelperBase_INSTANCESet[] = true
    CaptionAnimationHelperBase_INSTANCEValue[] = value
end

function initFieldsCaptionAnimationHelperBase(this::CaptionAnimationHelperBase)
    nothing
end

function initCaptionAnimationHelperBase(this::CaptionAnimationHelperBase)
    initAnimation(this)
    initFieldsCaptionAnimationHelperBase(this)
end

function newCaptionAnimationHelperBase()
    this = CaptionAnimationHelperBase()
    initCaptionAnimationHelperBase(this)
    this
end


function isShowing(this::CaptionAnimationHelperBase)
        return false
end


function tick(this::CaptionAnimationHelperBase)
        nothing
        nothing
end


function update(this::CaptionAnimationHelperBase, message, basicColor)
        nothing
        nothing
end


function paintXY(this::CaptionAnimationHelperBase, graphics, x, y)
        nothing
        nothing
end

