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
# package org.allbinary.input.motion.gesture

mutable struct MirrorMotionGestureEventUtil <: JObject
    motionEventCircularPool::Any
    MirrorMotionGestureEventUtil() = new()
end

const MirrorMotionGestureEventUtil_instanceValue = Ref{Any}(nothing)
const MirrorMotionGestureEventUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{MirrorMotionGestureEventUtil})
    if !MirrorMotionGestureEventUtil_instanceSet[]
        MirrorMotionGestureEventUtil_instanceSet[] = true
        MirrorMotionGestureEventUtil_instanceValue[] = newMirrorMotionGestureEventUtil()
    end
    MirrorMotionGestureEventUtil_instanceValue[]
end
function staticSet_instance(::Type{MirrorMotionGestureEventUtil}, value)
    MirrorMotionGestureEventUtil_instanceSet[] = true
    MirrorMotionGestureEventUtil_instanceValue[] = value
end

function initFieldsMirrorMotionGestureEventUtil(this::MirrorMotionGestureEventUtil)
    this.motionEventCircularPool = nothing
    
    nothing
end


function initMirrorMotionGestureEventUtil(this::MirrorMotionGestureEventUtil)
        initFieldsMirrorMotionGestureEventUtil(this)
        this.motionEventCircularPool = AllBinary.createPool(MotionEventCircularPool, staticGet_MAX_VALUE(Integer))
        nothing
end

function newMirrorMotionGestureEventUtil()
    this = MirrorMotionGestureEventUtil()
    initMirrorMotionGestureEventUtil(this)
    this
end


function mirrorVerticle(this::MirrorMotionGestureEventUtil, motionGestureEvent, halfWidth)
        local event = AllBinary.getInstance(this.motionEventCircularPool, AllBinary.getMotionGesture(motionGestureEvent))
        local previousNewX::Int32 = AllBinary.getNewX(this, AllBinary.getX(AllBinary.getPreviousPoint(motionGestureEvent)), halfWidth)
        local currentNewX::Int32 = AllBinary.getNewX(this, AllBinary.getX(AllBinary.getCurrentPoint(motionGestureEvent)), halfWidth)
        local pointFactory = AllBinary.getInstance(PointFactory)
        local mirroredPreviousPoint = AllBinary.createXY(pointFactory, previousNewX, AllBinary.getY(AllBinary.getPreviousPoint(motionGestureEvent)))
        local mirroredCurrentPoint = AllBinary.createXY(pointFactory, currentNewX, AllBinary.getY(AllBinary.getCurrentPoint(motionGestureEvent)))
        AllBinary.setPreviousPoint(event, mirroredPreviousPoint)
        AllBinary.setCurrentPoint(event, mirroredCurrentPoint)
        return event
end


function getNewX(this::MirrorMotionGestureEventUtil, x, halfWidth)
        local newX::Int32 = Int32(0)
        if x > halfWidth
            newX = halfWidth - (x - halfWidth)
        else
            newX = halfWidth + (halfWidth - x)
        end
        return newX
end


function getInstance(::Type{MirrorMotionGestureEventUtil})
        return staticGet_instance(MirrorMotionGestureEventUtil)
end

