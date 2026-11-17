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
# package org.allbinary.game.layer.pickup

mutable struct CountedPickedUpLayerInterfaceFactoryPool <: JObject
    list::Any
    CountedPickedUpLayerInterfaceFactoryPool() = new()
end

const CountedPickedUpLayerInterfaceFactoryPool_SINGLETONValue = Ref{Any}(nothing)
const CountedPickedUpLayerInterfaceFactoryPool_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{CountedPickedUpLayerInterfaceFactoryPool})
    if !CountedPickedUpLayerInterfaceFactoryPool_SINGLETONSet[]
        CountedPickedUpLayerInterfaceFactoryPool_SINGLETONSet[] = true
        CountedPickedUpLayerInterfaceFactoryPool_SINGLETONValue[] = newCountedPickedUpLayerInterfaceFactoryPool()
    end
    CountedPickedUpLayerInterfaceFactoryPool_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{CountedPickedUpLayerInterfaceFactoryPool}, value)
    CountedPickedUpLayerInterfaceFactoryPool_SINGLETONSet[] = true
    CountedPickedUpLayerInterfaceFactoryPool_SINGLETONValue[] = value
end

function initFieldsCountedPickedUpLayerInterfaceFactoryPool(this::CountedPickedUpLayerInterfaceFactoryPool)
    this.list = nothing
    
    nothing
end


function initCountedPickedUpLayerInterfaceFactoryPool(this::CountedPickedUpLayerInterfaceFactoryPool)
        initFieldsCountedPickedUpLayerInterfaceFactoryPool(this)
        this.list = newBasicArrayListD()
        nothing
end

function newCountedPickedUpLayerInterfaceFactoryPool()
    this = CountedPickedUpLayerInterfaceFactoryPool()
    initCountedPickedUpLayerInterfaceFactoryPool(this)
    this
end


function getList(this::CountedPickedUpLayerInterfaceFactoryPool)
        return this.list
end


function getInstance(::Type{CountedPickedUpLayerInterfaceFactoryPool})
        return staticGet_SINGLETON(CountedPickedUpLayerInterfaceFactoryPool)
end


function init(::Type{CountedPickedUpLayerInterfaceFactoryPool})
        staticSet_SINGLETON(CountedPickedUpLayerInterfaceFactoryPool, newCountedPickedUpLayerInterfaceFactoryPool())
        nothing
end

