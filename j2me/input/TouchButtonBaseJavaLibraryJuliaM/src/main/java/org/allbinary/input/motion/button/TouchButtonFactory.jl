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
# package org.allbinary.input.motion.button

mutable struct TouchButtonFactory <: JObject
    LIST::Any
    list::Any
    savedList::Any
    saved::Bool
    TouchButtonFactory() = new()
end

const TouchButtonFactory_SINGLETONValue = Ref{Any}(nothing)
const TouchButtonFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{TouchButtonFactory})
    if !TouchButtonFactory_SINGLETONSet[]
        TouchButtonFactory_SINGLETONSet[] = true
        TouchButtonFactory_SINGLETONValue[] = newTouchButtonFactory()
    end
    TouchButtonFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{TouchButtonFactory}, value)
    TouchButtonFactory_SINGLETONSet[] = true
    TouchButtonFactory_SINGLETONValue[] = value
end

function initFieldsTouchButtonFactory(this::TouchButtonFactory)
    this.LIST = nothing
    this.list = nothing
    this.savedList = nothing
    this.saved = false
    this.LIST = AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil))
    this.list = this.LIST
    this.savedList = this.LIST
    this.saved = false
    nothing
end


function getInstance(::Type{TouchButtonFactory})
        return staticGet_SINGLETON(TouchButtonFactory)
end


function initTouchButtonFactory(this::TouchButtonFactory)
        initFieldsTouchButtonFactory(this)
        nothing
        nothing
end

function newTouchButtonFactory()
    this = TouchButtonFactory()
    initTouchButtonFactory(this)
    this
end


function defaultList(this::TouchButtonFactory)
        this.list = this.LIST
        AllBinary.toggle(this, false, this.LIST)
        nothing
end


function toggle(this::TouchButtonFactory, save, list)
        if list !== AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil))
            this.savedList = list
            if !this.saved
                this.list = this.savedList
            end
        else
            if save
                if !this.saved
                    this.saved = true
                    this.savedList = this.list
                    this.list = this.LIST
                else
                    nothing
                end
            else
                this.list = this.savedList
                this.saved = false
            end
        end
        nothing
end


function setList(this::TouchButtonFactory, list)
        if list === nothing
            throw(jNewException("Exception", "Null List"))
        end
        this.list = list
        nothing
end


function getList(this::TouchButtonFactory)
        return this.list
end

