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

# extends NullRotationAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NullRotationAnimation2 <: JObject
    NullRotationAnimation2() = new()
end


function initFieldsNullRotationAnimation2(this::NullRotationAnimation2)
    nothing
end


function initNullRotationAnimation2(this::NullRotationAnimation2)
        initNullRotationAnimation(this, AllBinary.getInstance(AngleInfo, AllBinary.getInstance(AngleFactory).QUARTER_TOTAL_ANGLE), AllBinary.createInstance(CircularIndexUtil, Int32(4)), newIndexedAnimationBehavior(Int32(1), Int32(250)))
        nothing
end

function newNullRotationAnimation2()
    this = NullRotationAnimation2()
    initNullRotationAnimation2(this)
    this
end


function paintXY(this::NullRotationAnimation2, graphics, x, y)
        nothing
        nothing
end

