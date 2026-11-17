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
# package org.allbinary.input.motion.touch.action

# extends GameKeyCompleteMotionGestureInputEvent: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ReleaseTouchInputToGameKeyEventAction <: JObject
    NONE::Any
    ReleaseTouchInputToGameKeyEventAction() = new()
end

const ReleaseTouchInputToGameKeyEventAction_instanceValue = Ref{Any}(nothing)
const ReleaseTouchInputToGameKeyEventAction_instanceSet = Ref(false)
function staticGet_instance(::Type{ReleaseTouchInputToGameKeyEventAction})
    if !ReleaseTouchInputToGameKeyEventAction_instanceSet[]
        ReleaseTouchInputToGameKeyEventAction_instanceSet[] = true
        ReleaseTouchInputToGameKeyEventAction_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    ReleaseTouchInputToGameKeyEventAction_instanceValue[]
end
function staticSet_instance(::Type{ReleaseTouchInputToGameKeyEventAction}, value)
    ReleaseTouchInputToGameKeyEventAction_instanceSet[] = true
    ReleaseTouchInputToGameKeyEventAction_instanceValue[] = value
end

function initFieldsReleaseTouchInputToGameKeyEventAction(this::ReleaseTouchInputToGameKeyEventAction)
    this.NONE = nothing
    this.NONE = AllBinary.getInstance(GameKeyFactory).NONE
    nothing
end


function getInstance(::Type{ReleaseTouchInputToGameKeyEventAction})
        if staticGet_instance(ReleaseTouchInputToGameKeyEventAction) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(ReleaseTouchInputToGameKeyEventAction, newReleaseTouchInputToGameKeyEventAction())
        end
        return (staticGet_instance(ReleaseTouchInputToGameKeyEventAction))
end


function initReleaseTouchInputToGameKeyEventAction(this::ReleaseTouchInputToGameKeyEventAction)
        initGameKeyCompleteMotionGestureInputEvent(this, "Release Action", AllBinary.getInstance(TouchMotionGestureFactory).RELEASED, AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))))
        initFieldsReleaseTouchInputToGameKeyEventAction(this)
        try
            AllBinary.setGameKey(this, this.NONE)
            AllBinary.setGameKeyEvent(this, AllBinary.getInstanceForInput(AllBinary.getInstance(GameKeyEventFactory), this, this.NONE))
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)
        end
        nothing
end

function newReleaseTouchInputToGameKeyEventAction()
    this = ReleaseTouchInputToGameKeyEventAction()
    initReleaseTouchInputToGameKeyEventAction(this)
    this
end


function update(this::ReleaseTouchInputToGameKeyEventAction)
        nothing
        nothing
end

