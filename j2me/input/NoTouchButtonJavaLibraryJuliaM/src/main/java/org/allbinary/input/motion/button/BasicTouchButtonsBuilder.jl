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

# extends BaseTouchInput: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BasicTouchButtonsBuilder <: JObject
    logUtil::Any
    BasicTouchButtonsBuilder() = new()
end

const BasicTouchButtonsBuilder_SINGLETONValue = Ref{Any}(nothing)
const BasicTouchButtonsBuilder_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{BasicTouchButtonsBuilder})
    if !BasicTouchButtonsBuilder_SINGLETONSet[]
        BasicTouchButtonsBuilder_SINGLETONSet[] = true
        BasicTouchButtonsBuilder_SINGLETONValue[] = newBasicTouchButtonsBuilder()
    end
    BasicTouchButtonsBuilder_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{BasicTouchButtonsBuilder}, value)
    BasicTouchButtonsBuilder_SINGLETONSet[] = true
    BasicTouchButtonsBuilder_SINGLETONValue[] = value
end

function initFieldsBasicTouchButtonsBuilder(this::BasicTouchButtonsBuilder)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end

function initBasicTouchButtonsBuilder(this::BasicTouchButtonsBuilder)
    initBaseTouchInput(this)
    initFieldsBasicTouchButtonsBuilder(this)
end

function newBasicTouchButtonsBuilder()
    this = BasicTouchButtonsBuilder()
    initBasicTouchButtonsBuilder(this)
    this
end


function getInstance(::Type{BasicTouchButtonsBuilder})
        return staticGet_SINGLETON(BasicTouchButtonsBuilder)
end


function getList(this::BasicTouchButtonsBuilder)
        try
            AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.GET_LIST)
            local list = newBasicArrayListD()
            return list
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.GET_LIST, e)
            return AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil))
        end
end

