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
# package org.allbinary.graphics.color

mutable struct BasicColorCacheFactory <: JObject
    hashtable::Any
    BasicColorCacheFactory() = new()
end

const BasicColorCacheFactory_instanceValue = Ref{Any}(nothing)
const BasicColorCacheFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{BasicColorCacheFactory})
    if !BasicColorCacheFactory_instanceSet[]
        BasicColorCacheFactory_instanceSet[] = true
        BasicColorCacheFactory_instanceValue[] = newBasicColorCacheFactory()
    end
    BasicColorCacheFactory_instanceValue[]
end
function staticSet_instance(::Type{BasicColorCacheFactory}, value)
    BasicColorCacheFactory_instanceSet[] = true
    BasicColorCacheFactory_instanceValue[] = value
end

function initFieldsBasicColorCacheFactory(this::BasicColorCacheFactory)
    this.hashtable = nothing
    this.hashtable = AllBinary.createHashtable(AllBinary.getInstance(StdUtil))
    nothing
end


function getInstance(::Type{BasicColorCacheFactory})
        return staticGet_instance(BasicColorCacheFactory)
end


function initBasicColorCacheFactory(this::BasicColorCacheFactory)
        initFieldsBasicColorCacheFactory(this)
        nothing
        nothing
end

function newBasicColorCacheFactory()
    this = BasicColorCacheFactory()
    initBasicColorCacheFactory(this)
    this
end


function add(this::BasicColorCacheFactory, basicDefaultColor)
        AllBinary.put(this.hashtable, AllBinary.intValue(basicDefaultColor), basicDefaultColor)
        nothing
end


function getAndOrCreate(this::BasicColorCacheFactory, integer)
        local basicColor = (AllBinary.get(this.hashtable, integer))
        if basicColor === nothing
            basicColor = AllBinary.createInstance(AllBinary.getInstance(BasicColorFactory), AllBinary.intValue(integer))
            AllBinary.put(this.hashtable, integer, basicColor)
        end
        return basicColor
end

