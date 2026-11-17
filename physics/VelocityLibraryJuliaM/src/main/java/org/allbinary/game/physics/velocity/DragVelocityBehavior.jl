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
# package org.allbinary.game.physics.velocity

# extends VelocityBehaviorBase: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DragVelocityBehavior <: JObject
    DragVelocityBehavior() = new()
end

const DragVelocityBehavior_instanceValue = Ref{Any}(nothing)
const DragVelocityBehavior_instanceSet = Ref(false)
function staticGet_instance(::Type{DragVelocityBehavior})
    if !DragVelocityBehavior_instanceSet[]
        DragVelocityBehavior_instanceSet[] = true
        DragVelocityBehavior_instanceValue[] = newDragVelocityBehavior()
    end
    DragVelocityBehavior_instanceValue[]
end
function staticSet_instance(::Type{DragVelocityBehavior}, value)
    DragVelocityBehavior_instanceSet[] = true
    DragVelocityBehavior_instanceValue[] = value
end

function initFieldsDragVelocityBehavior(this::DragVelocityBehavior)
    nothing
end

function initDragVelocityBehavior(this::DragVelocityBehavior)
    initVelocityBehaviorBase(this)
    initFieldsDragVelocityBehavior(this)
end

function newDragVelocityBehavior()
    this = DragVelocityBehavior()
    initDragVelocityBehavior(this)
    this
end


function reduce(this::DragVelocityBehavior, velocityProperties, nominator, denominator)
        if AllBinary.getUnscaled(AllBinary.getVelocityXBasicDecimalP(velocityProperties)) != Int64(0)
            local basicDecimal = AllBinary.getVelocityXBasicDecimalP(velocityProperties)
            AllBinary.multiplyint(basicDecimal, nominator)
            AllBinary.divideint(basicDecimal, denominator)
        end
        if AllBinary.getUnscaled(AllBinary.getVelocityYBasicDecimalP(velocityProperties)) != Int64(0)
            basicDecimal = AllBinary.getVelocityYBasicDecimalP(velocityProperties)
            AllBinary.multiplyint(basicDecimal, nominator)
            AllBinary.divideint(basicDecimal, denominator)
        end
        nothing
end


function reduceX(this::DragVelocityBehavior, velocityProperties, nominator, denominator)
        local basicDecimal = AllBinary.getVelocityXBasicDecimalP(velocityProperties)
        if AllBinary.getUnscaled(basicDecimal) != Int64(0)
            AllBinary.multiplyint(basicDecimal, nominator)
            AllBinary.divideint(basicDecimal, denominator)
        end
        nothing
end


function reduceY(this::DragVelocityBehavior, velocityProperties, nominator, denominator)
        if AllBinary.getUnscaled(AllBinary.getVelocityYBasicDecimalP(velocityProperties)) != Int64(0)
            local basicDecimal = AllBinary.getVelocityYBasicDecimalP(velocityProperties)
            AllBinary.multiplyint(basicDecimal, nominator)
            AllBinary.divideint(basicDecimal, denominator)
        end
        nothing
end

