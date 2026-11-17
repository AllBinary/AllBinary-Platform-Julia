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
# package org.allbinary.graphics.displayable.command

mutable struct MyCommandsFactory <: JObject
    NO_COMMAND::Any
    GAUGE_CHANGE::Any
    SET_DISPLAYABLE::Any
    PAUSE_COMMAND::Any
    RESUME_COMMAND::Any
    MyCommandsFactory() = new()
end

const MyCommandsFactory_instanceValue = Ref{Any}(nothing)
const MyCommandsFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{MyCommandsFactory})
    if !MyCommandsFactory_instanceSet[]
        MyCommandsFactory_instanceSet[] = true
        MyCommandsFactory_instanceValue[] = newMyCommandsFactory()
    end
    MyCommandsFactory_instanceValue[]
end
function staticSet_instance(::Type{MyCommandsFactory}, value)
    MyCommandsFactory_instanceSet[] = true
    MyCommandsFactory_instanceValue[] = value
end

function initFieldsMyCommandsFactory(this::MyCommandsFactory)
    this.NO_COMMAND = nothing
    this.GAUGE_CHANGE = nothing
    this.SET_DISPLAYABLE = nothing
    this.PAUSE_COMMAND = nothing
    this.RESUME_COMMAND = nothing
    this.NO_COMMAND = newCommand(AllBinary.getInstance(StringUtil).EMPTY_STRING, AllBinary.getInstance(StringUtil).EMPTY_STRING, -Int32(1), -Int32(1))
    this.GAUGE_CHANGE = newCommand("GAUGE_CHANGE", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_ITEM(Command), Int32(1))
    this.SET_DISPLAYABLE = newCommand("Display", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(2))
    this.PAUSE_COMMAND = newCommand("Pause", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(0))
    this.RESUME_COMMAND = newCommand("Resume", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(0))
    nothing
end


function getInstance(::Type{MyCommandsFactory})
        return staticGet_instance(MyCommandsFactory)
end


function initMyCommandsFactory(this::MyCommandsFactory)
        initFieldsMyCommandsFactory(this)
        nothing
        nothing
end

function newMyCommandsFactory()
    this = MyCommandsFactory()
    initMyCommandsFactory(this)
    this
end

