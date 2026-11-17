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
# package org.allbinary.layer

# extends BaseCircularPool: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AllBinaryLayerCircularPool <: JObject
    AllBinaryLayerCircularPool() = new()
end


function initFieldsAllBinaryLayerCircularPool(this::AllBinaryLayerCircularPool)
    nothing
end


function initAllBinaryLayerCircularPool(this::AllBinaryLayerCircularPool)
        initBaseCircularPool(this)
        initFieldsAllBinaryLayerCircularPool(this)
        nothing
        nothing
end

function newAllBinaryLayerCircularPool()
    this = AllBinaryLayerCircularPool()
    initAllBinaryLayerCircularPool(this)
    this
end


function initAllBinaryLayerCircularPool(this::AllBinaryLayerCircularPool, allbinaryLayerFactoryInterface, total)
        this.circularIndexUtil = AllBinary.createInstance(CircularIndexUtil, total)
        this.OBJECT_ARRAY = jNewArray(Any, total, nothing)
        let
            local localIndex::Int32 = Int32(0)
            while localIndex < total
            try
            this.OBJECT_ARRAY[localIndex + 1] = AllBinary.getInstance(allbinaryLayerFactoryInterface)
            finally
                localIndex += Int32(1)
            end
            end
        end
        nothing
end

