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
# package org.allbinary.logic.util.cache

# extends AbstractArrayListPool: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BasicArrayListPool <: JObject
    BasicArrayListPool() = new()
end


function initFieldsBasicArrayListPool(this::BasicArrayListPool)
    nothing
end


function initBasicArrayListPool(this::BasicArrayListPool, cacheableInterfaceFactoryInterface)
        initAbstractArrayListPool(this, cacheableInterfaceFactoryInterface)
        nothing
end

function newBasicArrayListPool(cacheableInterfaceFactoryInterface)
    this = BasicArrayListPool()
    initBasicArrayListPool(this, cacheableInterfaceFactoryInterface)
    this
end


function clear(this::BasicArrayListPool)
        AllBinary.clear(this.buffers)
        nothing
end


function remove(this::BasicArrayListPool, key)
        local size::Int32 = AllBinary.size(this.buffers)
        if size > Int32(0)
            return (AllBinary.removeAt(this.buffers, size - Int32(1)))
        else
            return AllBinary.getInstance(this.cacheableInterfaceFactoryInterface, key)
        end
end


function addAll(this::BasicArrayListPool, usedList)
        let
            local index::Int32 = AllBinary.size(usedList)
            while (index -= Int32(1)) >= Int32(0)
            try
            local anyType = (usedList.objectArray[index + 1])
            AllBinary.add(this, anyType)
            finally
            end
            end
        end
        AllBinary.clear(usedList)
        nothing
end


function releaseUsedBackToPool(this::BasicArrayListPool, usedList)
        let
            local index::Int32 = AllBinary.size(usedList)
            while (index -= Int32(1)) >= Int32(0)
            try
            local list = (usedList.objectArray[index + 1])
            if AllBinary.size(list) == Int32(0)
                AllBinary.removeAt(usedList, index)
                AllBinary.add(this, list)
            end
            finally
            end
            end
        end
        nothing
end

