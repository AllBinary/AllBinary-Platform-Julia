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
# package org.allbinary.game.input

mutable struct InputFactory <: JObject
    logUtil::Any
    commonStrings::Any
    KEY_CODE_LABEL::Any
    DEVICE_ID_LABEL::Any
    MAX::Int32
    inputIntegerArray::Any
    NO_INPUT::Any
    InputFactory() = new()
end

const InputFactory_instanceValue = Ref{Any}(nothing)
const InputFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{InputFactory})
    if !InputFactory_instanceSet[]
        InputFactory_instanceSet[] = true
        InputFactory_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    InputFactory_instanceValue[]
end
function staticSet_instance(::Type{InputFactory}, value)
    InputFactory_instanceSet[] = true
    InputFactory_instanceValue[] = value
end

function initFieldsInputFactory(this::InputFactory)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.KEY_CODE_LABEL = nothing
    this.DEVICE_ID_LABEL = nothing
    this.MAX = Int32(0)
    this.inputIntegerArray = nothing
    this.NO_INPUT = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.KEY_CODE_LABEL = "KeyCode: "
    this.DEVICE_ID_LABEL = "DeviceId: "
    this.MAX = AllBinary.getMin(AllBinary.getInstance(SmallIntegerSingletonFactory))
    this.inputIntegerArray = jNewArray(Any, this.MAX, nothing)
    this.NO_INPUT = newInput(Int32(0), this.commonStrings.UNKNOWN)
    nothing
end


function getInstance(::Type{InputFactory})
        if staticGet_instance(InputFactory) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(InputFactory, newInputFactory())
        end
        return (staticGet_instance(InputFactory))
end


function initInputFactory(this::InputFactory)
        initFieldsInputFactory(this)
        local size::Int32 = Int32(Base.length(this.inputIntegerArray))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            this.inputIntegerArray[index + 1] = this.NO_INPUT
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

function newInputFactory()
    this = InputFactory()
    initInputFactory(this)
    this
end


function add(this::InputFactory, id, input)
        this.inputIntegerArray[id + 1] = input
        nothing
end


function getInstanceById(this::InputFactory, id)
        if id < Int32(0)
            id = -id
        end
        if id > Int32(Base.length(this.inputIntegerArray))
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), "Warning id: "), id)), this, this.commonStrings.GET_INSTANCE)
            return this.NO_INPUT
        end
        return this.inputIntegerArray[id + 1]
end

