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

mutable struct MotionGestureRecognizer <: JObject
    logUtil::Any
    j2seMath::Any
    origin::Any
    previous::Any
    intermediate::Any
    line::Any
    motionGesturesHandler::Any
    movedMotionGesturesHandler::Any
    scrolledMotionGesturesHandler::Any
    motionEventCircularPool::Any
    MotionGestureRecognizer() = new()
end


function initFieldsMotionGestureRecognizer(this::MotionGestureRecognizer)
    this.logUtil = nothing
    this.j2seMath = nothing
    this.origin = nothing
    this.previous = nothing
    this.intermediate = nothing
    this.line = nothing
    this.motionGesturesHandler = nothing
    this.movedMotionGesturesHandler = nothing
    this.scrolledMotionGesturesHandler = nothing
    this.motionEventCircularPool = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.j2seMath = AllBinary.getInstance(J2SEMath)
    this.origin = AllBinary.getInstance(PointFactory).ZERO_ZERO
    this.previous = this.origin
    this.intermediate = this.origin
    this.line = newLine(this.origin, this.origin)
    
    
    
    
    nothing
end


function initMotionGestureRecognizer(this::MotionGestureRecognizer, id)
        initFieldsMotionGestureRecognizer(this)
        this.motionEventCircularPool = AllBinary.createPool(MotionEventCircularPool, id)
        local motionGesturesHandler = newBasicEventHandler()
        local movedMotionGesturesHandler = motionGesturesHandler
        local scrolledMotionGesturesHandler = motionGesturesHandler
        try
            motionGesturesHandler = AllBinary.getInstance(BasicMotionGesturesHandler)
            movedMotionGesturesHandler = AllBinary.getInstance(MovedMotionGesturesHandler)
            scrolledMotionGesturesHandler = AllBinary.getInstance(ScrolledMotionGesturesHandler)
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)
        end
        this.motionGesturesHandler = (motionGesturesHandler)
        this.movedMotionGesturesHandler = movedMotionGesturesHandler
        this.scrolledMotionGesturesHandler = scrolledMotionGesturesHandler
        nothing
end

function newMotionGestureRecognizer(id)
    this = MotionGestureRecognizer()
    initMotionGestureRecognizer(this, id)
    this
end


function processPressedMotionEvent(this::MotionGestureRecognizer, current, deviceId, button)
        this.intermediate = this.origin
        this.previous = this.origin
        local event = AllBinary.getInstance(this.motionEventCircularPool, AllBinary.getInstance(TouchMotionGestureFactory).PRESSED)
        AllBinary.setPreviousPoint(event, this.previous)
        AllBinary.setCurrentPoint(event, current)
        AllBinary.fireEvent(this.motionGesturesHandler, event)
        return true
end


function processReleasedMotionEvent(this::MotionGestureRecognizer, current, deviceId, button)
        local event = AllBinary.getInstance(this.motionEventCircularPool, AllBinary.getInstance(TouchMotionGestureFactory).RELEASED)
        AllBinary.setPreviousPoint(event, this.previous)
        AllBinary.setCurrentPoint(event, current)
        AllBinary.fireEvent(this.motionGesturesHandler, event)
        return true
end


function processDraggedMotionEvent(this::MotionGestureRecognizer, current, deviceId, buttonMask)
        if this.previous === this.origin || this.intermediate === this.origin
            this.previous = current
            this.intermediate = current
            return
        end
        AllBinary.setP1(this.line, this.previous)
        AllBinary.setP2(this.line, current)
        local minimumMotionGesture::Int32 = AllBinary.getMinimumMotionGesture(AllBinary.getInstance(MotionGestureConfigurationFactory))
        if AllBinary.abs(this.j2seMath, Float32(AllBinary.getDeltaX(this.line))) < minimumMotionGesture && AllBinary.abs(this.j2seMath, Float32(AllBinary.getDeltaY(this.line))) < minimumMotionGesture
            this.intermediate = current
            return
        end
        local gradient::Float64 = AllBinary.getGradient(this.line)
        local absGradient::Float64 = Float64(AllBinary.abs(this.j2seMath, Float32(gradient)))
        local conf = AllBinary.getInstance(MotionGestureConfigurationFactory)
        local touchMotionGestureFactory = AllBinary.getInstance(TouchMotionGestureFactory)
        local newMotionGesture = touchMotionGestureFactory.NO_MOTION
        local diagonalToleranceHigher::Float64 = 12.0
        local diagonalToleranceLower::Float64 = 12.0
        if AllBinary.isDiagonalMotionGestureAllowed(conf)
            diagonalToleranceHigher = Float64((Int32(90) - AllBinary.getDiagonalTolerance(conf)))
            diagonalToleranceLower = Float64(AllBinary.getDiagonalTolerance(conf))
        end
        if absGradient > Base.tan(Base.toRadians(diagonalToleranceHigher))
            if AllBinary.getDeltaY(this.line) > Int32(0)
                newMotionGesture = touchMotionGestureFactory.UP
            else
                newMotionGesture = touchMotionGestureFactory.DOWN
            end
        else
            if absGradient < Base.tan(Base.toRadians(diagonalToleranceLower))
                if AllBinary.getDeltaX(this.line) > Int32(0)
                    newMotionGesture = touchMotionGestureFactory.LEFT
                else
                    newMotionGesture = touchMotionGestureFactory.RIGHT
                end
            else
                if gradient > 0.0
                    if AllBinary.getDeltaX(this.line) > Int32(0)
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_UP_LEFT
                    else
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT
                    end
                else
                    if AllBinary.getDeltaX(this.line) > Int32(0)
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_DOWN_LEFT
                    else
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_UP_RIGHT
                    end
                end
            end
        end
        this.previous = current
        this.intermediate = current
        local event = AllBinary.getInstance(this.motionEventCircularPool, newMotionGesture)
        AllBinary.setPreviousPoint(event, this.previous)
        AllBinary.setCurrentPoint(event, current)
        AllBinary.fireEvent(this.motionGesturesHandler, event)
        return
        nothing
end


function processMovedMotionEvent(this::MotionGestureRecognizer, current, deviceId, button)
        local event = AllBinary.getInstance(this.motionEventCircularPool, AllBinary.getInstance(TouchMotionGestureFactory).NO_MOTION)
        AllBinary.setPreviousPoint(event, this.previous)
        AllBinary.setCurrentPoint(event, current)
        AllBinary.fireEvent(this.movedMotionGesturesHandler, event)
        return true
end


function processScrolledMotionEvent(this::MotionGestureRecognizer, current, deviceId, button)
        local touchMotionGestureFactory = AllBinary.getInstance(TouchMotionGestureFactory)
        local newMotionGesture = touchMotionGestureFactory.NO_MOTION
        if button > Int32(0)
            newMotionGesture = touchMotionGestureFactory.SCROLL_UP
        elseif button < Int32(0)
            newMotionGesture = touchMotionGestureFactory.SCROLL_DOWN
        end
        local event = AllBinary.getInstance(this.motionEventCircularPool, newMotionGesture)
        AllBinary.setPreviousPoint(event, this.previous)
        AllBinary.setCurrentPoint(event, current)
        AllBinary.fireEvent(this.scrolledMotionGesturesHandler, event)
        return true
end


function getMotionGesturesHandler(this::MotionGestureRecognizer)
        return this.motionGesturesHandler
end

