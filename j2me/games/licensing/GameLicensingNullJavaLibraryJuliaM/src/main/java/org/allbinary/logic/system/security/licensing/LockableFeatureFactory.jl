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
# package org.allbinary.logic.system.security.licensing

mutable struct LockableFeatureFactory <: JObject
    list::Any
    LockableFeatureFactory() = new()
end

const LockableFeatureFactory_instanceValue = Ref{Any}(nothing)
const LockableFeatureFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{LockableFeatureFactory})
    if !LockableFeatureFactory_instanceSet[]
        LockableFeatureFactory_instanceSet[] = true
        LockableFeatureFactory_instanceValue[] = newLockableFeatureFactory()
    end
    LockableFeatureFactory_instanceValue[]
end
function staticSet_instance(::Type{LockableFeatureFactory}, value)
    LockableFeatureFactory_instanceSet[] = true
    LockableFeatureFactory_instanceValue[] = value
end

function initFieldsLockableFeatureFactory(this::LockableFeatureFactory)
    this.list = nothing
    this.list = newBasicArrayListD()
    nothing
end

function initLockableFeatureFactory(this::LockableFeatureFactory)
    initFieldsLockableFeatureFactory(this)
end

function newLockableFeatureFactory()
    this = LockableFeatureFactory()
    initLockableFeatureFactory(this)
    this
end


function getInstance(::Type{LockableFeatureFactory})
        return staticGet_instance(LockableFeatureFactory)
end


function getList(this::LockableFeatureFactory)
        return this.list
end

