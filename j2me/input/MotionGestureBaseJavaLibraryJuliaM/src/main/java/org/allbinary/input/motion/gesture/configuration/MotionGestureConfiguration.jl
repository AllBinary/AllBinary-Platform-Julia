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
# package org.allbinary.input.motion.gesture.configuration

mutable struct MotionGestureConfiguration <: JObject
    diagonalMotionGestureAllowed::Bool
    diagonalTolerance::Int32
    minimumMotionGesture::Int32
    button::Any
    color::Any
    executingActions::Bool
    mouseButtonMask::Int32
    activeCommands::Any
    MotionGestureConfiguration() = new()
end


function initFieldsMotionGestureConfiguration(this::MotionGestureConfiguration)
    this.diagonalMotionGestureAllowed = false
    this.diagonalTolerance = Int32(0)
    this.minimumMotionGesture = Int32(0)
    this.button = nothing
    this.color = nothing
    this.executingActions = false
    this.mouseButtonMask = Int32(0)
    this.activeCommands = nothing
    this.diagonalMotionGestureAllowed = true
    this.diagonalTolerance = Int32(7)
    this.minimumMotionGesture = Int32(9)
    this.button = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.color = AllBinary.getInstance(BasicColorFactory).BLUE
    this.executingActions = true
    this.mouseButtonMask = Int32(0)
    this.activeCommands = newBasicArrayListD()
    nothing
end


function initMotionGestureConfiguration(this::MotionGestureConfiguration)
        initFieldsMotionGestureConfiguration(this)
        nothing
        nothing
end

function newMotionGestureConfiguration()
    this = MotionGestureConfiguration()
    initMotionGestureConfiguration(this)
    this
end


function addMotionGestureAction(this::MotionGestureConfiguration, list, commandAction)
        AllBinary.add(this.activeCommands, newMotionGestureToMotionGestureActionAssociation(list, commandAction))
        nothing
end


function clearMotionGestureAction(this::MotionGestureConfiguration)
        AllBinary.clear(this.activeCommands)
        nothing
end


function getAssociateCommandActionsList(this::MotionGestureConfiguration)
        return this.activeCommands
end


function isDiagonalMotionGestureAllowed(this::MotionGestureConfiguration)
        return this.diagonalMotionGestureAllowed
end


function isExecutingActionsAllowed(this::MotionGestureConfiguration)
        return this.executingActions
end


function setExecutingActionsAllowed(this::MotionGestureConfiguration, executingActionAllowed)
        this.executingActions = executingActionAllowed
        nothing
end


function setDiagonalMotionGestureAllowed(this::MotionGestureConfiguration, diagonalMotionGestureAllowed)
        this.diagonalMotionGestureAllowed = diagonalMotionGestureAllowed
        nothing
end


function getDiagonalTolerance(this::MotionGestureConfiguration)
        return this.diagonalTolerance
end


function setDiagonalTolerance(this::MotionGestureConfiguration, diagonalTolerance)
        this.diagonalTolerance = diagonalTolerance
        nothing
end


function getMinimumMotionGesture(this::MotionGestureConfiguration)
        return this.minimumMotionGesture
end


function setMinimumMotionGesture(this::MotionGestureConfiguration, minimumMotionGesture)
        this.minimumMotionGesture = minimumMotionGesture
        nothing
end


function getButton(this::MotionGestureConfiguration)
        return this.button
end


function setButton(this::MotionGestureConfiguration, button)
        this.button = button
        nothing
end


function getColor(this::MotionGestureConfiguration)
        return this.color
end


function setColor(this::MotionGestureConfiguration, color)
        this.color = color
        nothing
end


function getMouseButtonMask(this::MotionGestureConfiguration)
        return this.mouseButtonMask
end


function setMouseButtonMask(this::MotionGestureConfiguration, mouseButtonMask)
        this.mouseButtonMask = mouseButtonMask
        nothing
end

