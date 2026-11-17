# Generated Code Do Not Modify
# package org.allbinary.game.input.analog

mutable struct AnalogLocationInput <: JObject
    playerId::Int32
    customGPoint::Any
    rz::Int32
    rightTrigger::Int32
    leftTrigger::Int32
    AnalogLocationInput() = new()
end

const AnalogLocationInput_NULL_ANALOG_LOCATION_INPUTValue = Ref{Any}(nothing)
const AnalogLocationInput_NULL_ANALOG_LOCATION_INPUTSet = Ref(false)
function staticGet_NULL_ANALOG_LOCATION_INPUT(::Type{AnalogLocationInput})
    if !AnalogLocationInput_NULL_ANALOG_LOCATION_INPUTSet[]
        AnalogLocationInput_NULL_ANALOG_LOCATION_INPUTSet[] = true
        AnalogLocationInput_NULL_ANALOG_LOCATION_INPUTValue[] = newAnalogLocationInput(-Int32(1))
    end
    AnalogLocationInput_NULL_ANALOG_LOCATION_INPUTValue[]
end
function staticSet_NULL_ANALOG_LOCATION_INPUT(::Type{AnalogLocationInput}, value)
    AnalogLocationInput_NULL_ANALOG_LOCATION_INPUTSet[] = true
    AnalogLocationInput_NULL_ANALOG_LOCATION_INPUTValue[] = value
end

function initFieldsAnalogLocationInput(this::AnalogLocationInput)
    this.playerId = Int32(0)
    this.customGPoint = nothing
    this.rz = Int32(0)
    this.rightTrigger = Int32(0)
    this.leftTrigger = Int32(0)
    
    
    this.rz = Int32(0)
    this.rightTrigger = Int32(0)
    this.leftTrigger = Int32(0)
    nothing
end


function initAnalogLocationInput(this::AnalogLocationInput, playerId)
        initFieldsAnalogLocationInput(this)
        this.playerId = playerId
        this.customGPoint = newCustomGPoint(Int32(0), Int32(0), Int32(0))
        nothing
end

function newAnalogLocationInput(playerId)
    this = AnalogLocationInput()
    initAnalogLocationInput(this, playerId)
    this
end


function getPlayerId(this::AnalogLocationInput)
        return this.playerId
end


function getCustomGPoint(this::AnalogLocationInput)
        return this.customGPoint
end


function getRz(this::AnalogLocationInput)
        return this.rz
end


function setRz(this::AnalogLocationInput, rz)
        this.rz = rz
        nothing
end


function getRightTrigger(this::AnalogLocationInput)
        return this.rightTrigger
end


function setRightTrigger(this::AnalogLocationInput, rightTrigger)
        this.rightTrigger = rightTrigger
        nothing
end


function getLeftTrigger(this::AnalogLocationInput)
        return this.leftTrigger
end


function setLeftTrigger(this::AnalogLocationInput, leftTrigger)
        this.leftTrigger = leftTrigger
        nothing
end

