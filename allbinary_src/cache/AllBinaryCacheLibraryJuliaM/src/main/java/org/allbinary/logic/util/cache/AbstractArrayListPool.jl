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

mutable struct AbstractArrayListPool <: JObject
    commonStrings::Any
    buffers::Any
    cacheableInterfaceFactoryInterface::Any
    AbstractArrayListPool() = new()
end


function initFieldsAbstractArrayListPool(this::AbstractArrayListPool)
    this.commonStrings = nothing
    this.buffers = nothing
    this.cacheableInterfaceFactoryInterface = nothing
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.buffers = newBasicArrayListD()
    
    nothing
end


function initAbstractArrayListPool(this::AbstractArrayListPool, cacheableInterfaceFactoryInterface)
        initFieldsAbstractArrayListPool(this)
        this.cacheableInterfaceFactoryInterface = cacheableInterfaceFactoryInterface
        nothing
end

function newAbstractArrayListPool(cacheableInterfaceFactoryInterface)
    this = AbstractArrayListPool()
    initAbstractArrayListPool(this, cacheableInterfaceFactoryInterface)
    this
end


function clear(this::AbstractArrayListPool)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
        nothing
end


function remove(this::AbstractArrayListPool, key)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
end


function add(this::AbstractArrayListPool, cacheableInterface)
        AllBinary.add(this.buffers, cacheableInterface)
        nothing
end


function addArray(this::AbstractArrayListPool, cacheableInterfaces)
        let
            local index::Int32 = Int32(0)
            while index < Int32(Base.length(cacheableInterfaces))
            try
            AllBinary.add(this.buffers, cacheableInterfaces[index + 1])
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

