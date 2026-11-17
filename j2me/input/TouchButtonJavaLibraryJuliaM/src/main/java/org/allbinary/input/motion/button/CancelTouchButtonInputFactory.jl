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

mutable struct CancelTouchButtonInputFactory <: JObject
    cancelInputArray::Any
    CancelTouchButtonInputFactory() = new()
end

const CancelTouchButtonInputFactory_instanceValue = Ref{Any}(nothing)
const CancelTouchButtonInputFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{CancelTouchButtonInputFactory})
    if !CancelTouchButtonInputFactory_instanceSet[]
        CancelTouchButtonInputFactory_instanceSet[] = true
        CancelTouchButtonInputFactory_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    CancelTouchButtonInputFactory_instanceValue[]
end
function staticSet_instance(::Type{CancelTouchButtonInputFactory}, value)
    CancelTouchButtonInputFactory_instanceSet[] = true
    CancelTouchButtonInputFactory_instanceValue[] = value
end

function initFieldsCancelTouchButtonInputFactory(this::CancelTouchButtonInputFactory)
    this.cancelInputArray = nothing
    this.cancelInputArray = jNewArray(Any, AllBinary.getInstance(InputFactory).MAX, nothing)
    nothing
end


function getInstance(::Type{CancelTouchButtonInputFactory})
        if staticGet_instance(CancelTouchButtonInputFactory) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(CancelTouchButtonInputFactory, newCancelTouchButtonInputFactory())
        end
        return (staticGet_instance(CancelTouchButtonInputFactory))
end


function initCancelTouchButtonInputFactory(this::CancelTouchButtonInputFactory)
        initFieldsCancelTouchButtonInputFactory(this)
        local basicTouchInputFactory = AllBinary.getInstance(BasicTouchInputFactory)
        let
            local index::Int32 = Int32(Base.length(this.cancelInputArray)) - Int32(1)
            while index >= Int32(0)
            try
            this.cancelInputArray[index + 1] = basicTouchInputFactory.NONE
            finally
                index -= Int32(1)
            end
            end
        end
        this.cancelInputArray[AllBinary.getSourceId(basicTouchInputFactory.UP) + 1] = basicTouchInputFactory.DOWN
        this.cancelInputArray[AllBinary.getSourceId(basicTouchInputFactory.DOWN) + 1] = basicTouchInputFactory.UP
        this.cancelInputArray[AllBinary.getSourceId(basicTouchInputFactory.LEFT) + 1] = basicTouchInputFactory.RIGHT
        this.cancelInputArray[AllBinary.getSourceId(basicTouchInputFactory.RIGHT) + 1] = basicTouchInputFactory.LEFT
        nothing
end

function newCancelTouchButtonInputFactory()
    this = CancelTouchButtonInputFactory()
    initCancelTouchButtonInputFactory(this)
    this
end


function getCancel(this::CancelTouchButtonInputFactory, touchButtonInput)
        return this.cancelInputArray[AllBinary.getSourceId(touchButtonInput) + 1]
end

