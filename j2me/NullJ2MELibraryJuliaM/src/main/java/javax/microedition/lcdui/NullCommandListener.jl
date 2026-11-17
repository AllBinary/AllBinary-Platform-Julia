# Generated Code Do Not Modify
# package javax.microedition.lcdui

mutable struct NullCommandListener <: JObject
    NullCommandListener() = new()
end

const NullCommandListener_NULL_COMMAND_LISTENERValue = Ref{Any}(nothing)
const NullCommandListener_NULL_COMMAND_LISTENERSet = Ref(false)
function staticGet_NULL_COMMAND_LISTENER(::Type{NullCommandListener})
    if !NullCommandListener_NULL_COMMAND_LISTENERSet[]
        NullCommandListener_NULL_COMMAND_LISTENERSet[] = true
        NullCommandListener_NULL_COMMAND_LISTENERValue[] = newNullCommandListener()
    end
    NullCommandListener_NULL_COMMAND_LISTENERValue[]
end
function staticSet_NULL_COMMAND_LISTENER(::Type{NullCommandListener}, value)
    NullCommandListener_NULL_COMMAND_LISTENERSet[] = true
    NullCommandListener_NULL_COMMAND_LISTENERValue[] = value
end

function initFieldsNullCommandListener(this::NullCommandListener)
    nothing
end

function initNullCommandListener(this::NullCommandListener)
    initFieldsNullCommandListener(this)
end

function newNullCommandListener()
    this = NullCommandListener()
    initNullCommandListener(this)
    this
end


function commandAction(this::NullCommandListener, c, d)
        nothing
        nothing
end

