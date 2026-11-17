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
# package org.allbinary.graphics

# extends BaseCircularPool: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GPointCircularPool <: JObject
    GPointCircularPool() = new()
end


function initFieldsGPointCircularPool(this::GPointCircularPool)
    nothing
end


function initGPointCircularPool(this::GPointCircularPool, size)
        initBaseCircularPool(this)
        initFieldsGPointCircularPool(this)
        this.circularIndexUtil = AllBinary.createInstance(CircularIndexUtil, size)
        this.OBJECT_ARRAY = jNewArray(Any, size, nothing)
        let
            local index::Int32 = size - Int32(1)
            while index >= Int32(0)
            try
            this.OBJECT_ARRAY[index + 1] = AllBinary.getInstance3(CustomGPoint, Int32(0), Int32(0))
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end

function newGPointCircularPool(size)
    this = GPointCircularPool()
    initGPointCircularPool(this, size)
    this
end

