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
# package org.allbinary.game.combat.destroy.event

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DestroyedEventHandler <: JObject
    list::Any
    DestroyedEventHandler() = new()
end

const DestroyedEventHandler_instanceValue = Ref{Any}(nothing)
const DestroyedEventHandler_instanceSet = Ref(false)
function staticGet_instance(::Type{DestroyedEventHandler})
    if !DestroyedEventHandler_instanceSet[]
        DestroyedEventHandler_instanceSet[] = true
        DestroyedEventHandler_instanceValue[] = newDestroyedEventHandler()
    end
    DestroyedEventHandler_instanceValue[]
end
function staticSet_instance(::Type{DestroyedEventHandler}, value)
    DestroyedEventHandler_instanceSet[] = true
    DestroyedEventHandler_instanceValue[] = value
end

function initFieldsDestroyedEventHandler(this::DestroyedEventHandler)
    this.list = nothing
    this.list = newBasicArrayListD()
    nothing
end


function getInstance(::Type{DestroyedEventHandler})
        return staticGet_instance(DestroyedEventHandler)
end


function initDestroyedEventHandler(this::DestroyedEventHandler)
        initBasicEventHandler(this)
        initFieldsDestroyedEventHandler(this)
        nothing
        nothing
end

function newDestroyedEventHandler()
    this = DestroyedEventHandler()
    initDestroyedEventHandler(this)
    this
end


function addListener(this::DestroyedEventHandler, collidableDestroyableDamageableLayer)
        if !AllBinary.contains(this.list, collidableDestroyableDamageableLayer)
            AllBinary.add(this.list, collidableDestroyableDamageableLayer)
        end
        nothing
end


function removeAllListeners(this::DestroyedEventHandler)
        AllBinary.clear(this.list)
        AllBinary.removeAllListeners(this)
        nothing
end


function removeListener(this::DestroyedEventHandler, eventListenerInterface)
        AllBinary.remove(this.list, eventListenerInterface)
        AllBinary.removeListener(this, eventListenerInterface)
        nothing
end


function fireEvent(this::DestroyedEventHandler, eventObject)
        let
            local index::Int32 = AllBinary.size(this.list)
            while (index -= Int32(1)) >= Int32(0)
            try
            try
                local collidableDestroyableDamageableLayer = (this.list.objectArray[index + 1])
                AllBinary.onDestroyed(collidableDestroyableDamageableLayer, (eventObject))
            catch e
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, AllBinary.getInstance(EventStrings).FIRE_EVENT, e)
            end
            finally
            end
            end
        end
        AllBinary.fireEvent(this, eventObject)
        nothing
end


function process(this::DestroyedEventHandler, eventObject, eventListenerInterface)
        local destroyedEventListenerInterface = (eventListenerInterface)
        AllBinary.onDestroyed(destroyedEventListenerInterface, (eventObject))
        nothing
end

