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

mutable struct CurrentlyPressedTouchButtonSingleton <: JObject
    list::Any
    CurrentlyPressedTouchButtonSingleton() = new()
end

const CurrentlyPressedTouchButtonSingleton_instanceValue = Ref{Any}(nothing)
const CurrentlyPressedTouchButtonSingleton_instanceSet = Ref(false)
function staticGet_instance(::Type{CurrentlyPressedTouchButtonSingleton})
    if !CurrentlyPressedTouchButtonSingleton_instanceSet[]
        CurrentlyPressedTouchButtonSingleton_instanceSet[] = true
        CurrentlyPressedTouchButtonSingleton_instanceValue[] = newCurrentlyPressedTouchButtonSingleton()
    end
    CurrentlyPressedTouchButtonSingleton_instanceValue[]
end
function staticSet_instance(::Type{CurrentlyPressedTouchButtonSingleton}, value)
    CurrentlyPressedTouchButtonSingleton_instanceSet[] = true
    CurrentlyPressedTouchButtonSingleton_instanceValue[] = value
end

function initFieldsCurrentlyPressedTouchButtonSingleton(this::CurrentlyPressedTouchButtonSingleton)
    this.list = nothing
    this.list = newBasicArrayListD()
    nothing
end


function getInstance(::Type{CurrentlyPressedTouchButtonSingleton})
        return staticGet_instance(CurrentlyPressedTouchButtonSingleton)
end


function initCurrentlyPressedTouchButtonSingleton(this::CurrentlyPressedTouchButtonSingleton)
        initFieldsCurrentlyPressedTouchButtonSingleton(this)
        nothing
        nothing
end

function newCurrentlyPressedTouchButtonSingleton()
    this = CurrentlyPressedTouchButtonSingleton()
    initCurrentlyPressedTouchButtonSingleton(this)
    this
end


function size(this::CurrentlyPressedTouchButtonSingleton)
        return AllBinary.size(this.list)
end


function removeAt(this::CurrentlyPressedTouchButtonSingleton, index)
        return (AllBinary.removeAt(this.list, index))
end


function remove(this::CurrentlyPressedTouchButtonSingleton, touchButtonInput)
        return AllBinary.remove(this.list, touchButtonInput)
end


function get(this::CurrentlyPressedTouchButtonSingleton, index)
        return (this.list.objectArray[index + 1])
end


function contains(this::CurrentlyPressedTouchButtonSingleton, touchButtonInput)
        return AllBinary.contains(this.list, touchButtonInput)
end


function add(this::CurrentlyPressedTouchButtonSingleton, touchButtonInput)
        AllBinary.add(this.list, touchButtonInput)
        nothing
end

