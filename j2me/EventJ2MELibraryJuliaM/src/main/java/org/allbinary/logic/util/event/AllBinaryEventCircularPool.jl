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
# package org.allbinary.logic.util.event

# extends BaseCircularPool: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AllBinaryEventCircularPool <: JObject
    AllBinaryEventCircularPool() = new()
end


function initFieldsAllBinaryEventCircularPool(this::AllBinaryEventCircularPool)
    nothing
end


function initAllBinaryEventCircularPool(this::AllBinaryEventCircularPool, max)
        initBaseCircularPool(this)
        initFieldsAllBinaryEventCircularPool(this)
        this.OBJECT_ARRAY = jNewArray(Any, max, nothing)
        this.circularIndexUtil = AllBinary.createInstance(CircularIndexUtil, max)
        nothing
end

function newAllBinaryEventCircularPool(max)
    this = AllBinaryEventCircularPool()
    initAllBinaryEventCircularPool(this, max)
    this
end


function initAllBinaryEventCircularPool(this::AllBinaryEventCircularPool, allBinaryEventObjectFactoryInterface)
        AllBinary.setIndex(this.circularIndexUtil, Int32(0))
        local size::Int32 = AllBinary.getSize(this.circularIndexUtil)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            this.OBJECT_ARRAY[index + 1] = AllBinary.getInstance(allBinaryEventObjectFactoryInterface)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

