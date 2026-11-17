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
# package org.allbinary.emulator

mutable struct InitEmulatorFactory <: JObject
    initEmulator::Bool
    InitEmulatorFactory() = new()
end

const InitEmulatorFactory_instanceValue = Ref{Any}(nothing)
const InitEmulatorFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{InitEmulatorFactory})
    if !InitEmulatorFactory_instanceSet[]
        InitEmulatorFactory_instanceSet[] = true
        InitEmulatorFactory_instanceValue[] = newInitEmulatorFactory()
    end
    InitEmulatorFactory_instanceValue[]
end
function staticSet_instance(::Type{InitEmulatorFactory}, value)
    InitEmulatorFactory_instanceSet[] = true
    InitEmulatorFactory_instanceValue[] = value
end

function initFieldsInitEmulatorFactory(this::InitEmulatorFactory)
    this.initEmulator = false
    this.initEmulator = false
    nothing
end

function initInitEmulatorFactory(this::InitEmulatorFactory)
    initFieldsInitEmulatorFactory(this)
end

function newInitEmulatorFactory()
    this = InitEmulatorFactory()
    initInitEmulatorFactory(this)
    this
end


function getInstance(::Type{InitEmulatorFactory})
        return staticGet_instance(InitEmulatorFactory)
end


function setInitEmulator(this::InitEmulatorFactory, initEmulator)
        this.initEmulator = initEmulator
        nothing
end


function isInitEmulator(this::InitEmulatorFactory)
        return this.initEmulator
end

