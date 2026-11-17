# Generated Code Do Not Modify
# package javax.microedition.lcdui

# extends Canvas: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NullCanvas <: JObject
    NullCanvas() = new()
end

const NullCanvas_NULL_CANVASValue = Ref{Any}(nothing)
const NullCanvas_NULL_CANVASSet = Ref(false)
function staticGet_NULL_CANVAS(::Type{NullCanvas})
    if !NullCanvas_NULL_CANVASSet[]
        NullCanvas_NULL_CANVASSet[] = true
        NullCanvas_NULL_CANVASValue[] = newNullCanvas()
    end
    NullCanvas_NULL_CANVASValue[]
end
function staticSet_NULL_CANVAS(::Type{NullCanvas}, value)
    NullCanvas_NULL_CANVASSet[] = true
    NullCanvas_NULL_CANVASValue[] = value
end

function initFieldsNullCanvas(this::NullCanvas)
    nothing
end


function initNullCanvas(this::NullCanvas)
        initCanvas(this)
        initFieldsNullCanvas(this)
        nothing
        nothing
end

function newNullCanvas()
    this = NullCanvas()
    initNullCanvas(this)
    this
end


function setFullScreenMode(this::NullCanvas, mode)
        nothing
        nothing
end


function sizeChanged(this::NullCanvas, w, h)
        nothing
        nothing
end


function getCommandStack(this::NullCanvas)
        throw(jNewException("RuntimeException", ""))
end


function isCommand(this::NullCanvas, command)
        throw(jNewException("RuntimeException", ""))
end


function addCommand(this::NullCanvas, command)
        nothing
        nothing
end


function removeCommand(this::NullCanvas, command)
        nothing
        nothing
end


function removeAllCommands(this::NullCanvas)
        nothing
        nothing
end


function setCommandListener(this::NullCanvas, l)
        nothing
        nothing
end


function getCustomCommandListener(this::NullCanvas)
        throw(jNewException("RuntimeException", ""))
end


function isPaused(this::NullCanvas)
        throw(jNewException("RuntimeException", ""))
end


function removePauseCommand(this::NullCanvas)
        nothing
        nothing
end


function pause(this::NullCanvas)
        nothing
        nothing
end


function unPause(this::NullCanvas)
        nothing
        nothing
end


function process(this::NullCanvas)
        nothing
        nothing
end


function paint(this::NullCanvas, graphics)
        nothing
        nothing
end


function destroy(this::NullCanvas)
        nothing
        nothing
end


function setPaused(this::NullCanvas, isPaused)
        throw(jNewException("RuntimeException", ""))
        nothing
end


function pointerDragged(this::NullCanvas, x, y)
        nothing
        nothing
end


function pointerPressed(this::NullCanvas, x, y)
        nothing
        nothing
end


function pointerReleased(this::NullCanvas, x, y)
        nothing
        nothing
end

