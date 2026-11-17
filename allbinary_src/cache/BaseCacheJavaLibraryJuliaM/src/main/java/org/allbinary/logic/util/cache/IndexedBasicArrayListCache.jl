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

# extends BaseBasicArrayListCache: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct IndexedBasicArrayListCache <: JObject
    commonStrings::Any
    size::Int32
    index::Int32
    IndexedBasicArrayListCache() = new()
end


function initFieldsIndexedBasicArrayListCache(this::IndexedBasicArrayListCache)
    this.commonStrings = nothing
    this.size = Int32(0)
    this.index = Int32(0)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.size = Int32(0)
    this.index = Int32(0)
    nothing
end


function createCache(::Type{IndexedBasicArrayListCache}, size)
        local indexedBasicArrayListCache = newIndexedBasicArrayListCache()
        AllBinary.init(indexedBasicArrayListCache, size)
        return indexedBasicArrayListCache
end


function initIndexedBasicArrayListCache(this::IndexedBasicArrayListCache)
        initBaseBasicArrayListCache(this)
        initFieldsIndexedBasicArrayListCache(this)
        nothing
        nothing
end

function newIndexedBasicArrayListCache()
    this = IndexedBasicArrayListCache()
    initIndexedBasicArrayListCache(this)
    this
end


function init(this::IndexedBasicArrayListCache, size)
        if this.size < size
            AllBinary.ensureCapacity(this.list, size)
            let
                local index::Int32 = size - Int32(1)
                while index >= this.size
                try
                AllBinary.addDefault(this)
                finally
                    index -= Int32(1)
                end
                end
            end
            this.size = size
        end
        nothing
end


function getAt(this::IndexedBasicArrayListCache, index)
        return this.list.objectArray[index + 1]
end


function addDefault(this::IndexedBasicArrayListCache)
        nothing
        nothing
end


function addObject(this::IndexedBasicArrayListCache, anyType)
        AllBinary.add(this.list, anyType)
        nothing
end


function add(this::IndexedBasicArrayListCache, cacheableInterface)
        AllBinary.add(this.list, cacheableInterface)
        nothing
end


function addArray(this::IndexedBasicArrayListCache, cacheableInterfaces)
        throw(jNewException("Exception", "No Imple"))
        nothing
end


function clear(this::IndexedBasicArrayListCache)
        this.index = Int32(0)
        nothing
end

