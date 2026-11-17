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
mutable struct BasicArrayListResetablePool <: JObject
    BasicArrayListResetablePool() = new()
end


function initFieldsBasicArrayListResetablePool(this::BasicArrayListResetablePool)
    nothing
end


function initBasicArrayListResetablePool(this::BasicArrayListResetablePool, cacheableInterfaceFactoryInterface)
        initAbstractArrayListPool(this, cacheableInterfaceFactoryInterface)
        nothing
end

function newBasicArrayListResetablePool(cacheableInterfaceFactoryInterface)
    this = BasicArrayListResetablePool()
    initBasicArrayListResetablePool(this, cacheableInterfaceFactoryInterface)
    this
end


function clear(this::BasicArrayListResetablePool)
        nothing
        nothing
end


function remove(this::BasicArrayListResetablePool, key)
        local size::Int32 = AllBinary.size(this.buffers)
        if size > Int32(0)
            return (AllBinary.removeAt(this.buffers, size - Int32(1)))
        else
            return AllBinary.getInstance(this.cacheableInterfaceFactoryInterface, key)
        end
end

