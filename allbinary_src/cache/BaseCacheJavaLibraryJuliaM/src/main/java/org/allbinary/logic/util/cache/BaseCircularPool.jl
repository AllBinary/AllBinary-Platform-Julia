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

mutable struct BaseCircularPool <: JObject
    circularIndexUtil::Any
    OBJECT_ARRAY::Any
    BaseCircularPool() = new()
end


function initFieldsBaseCircularPool(this::BaseCircularPool)
    this.circularIndexUtil = nothing
    this.OBJECT_ARRAY = nothing
    this.circularIndexUtil = staticGet_NULL_CIRCULAR_INDEX_UTIL(CircularIndexUtil)
    this.OBJECT_ARRAY = AllBinary.getInstance(NullUtil).NULL_OBJECT_ARRAY
    nothing
end

function initBaseCircularPool(this::BaseCircularPool)
    initFieldsBaseCircularPool(this)
end

function newBaseCircularPool()
    this = BaseCircularPool()
    initBaseCircularPool(this)
    this
end


function getNextInstance(this::BaseCircularPool)
        local anyType = this.OBJECT_ARRAY[AllBinary.getIndex(this.circularIndexUtil) + 1]
        AllBinary.next(this.circularIndexUtil)
        return anyType
end


function init(this::BaseCircularPool, allBinaryObjectFactoryInterface)
        AllBinary.setIndex(this.circularIndexUtil, Int32(0))
        local size::Int32 = AllBinary.getSize(this.circularIndexUtil)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            this.OBJECT_ARRAY[index + 1] = AllBinary.getInstance(allBinaryObjectFactoryInterface)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function getInstance(this::BaseCircularPool, index)
        return this.OBJECT_ARRAY[index + 1]
end

