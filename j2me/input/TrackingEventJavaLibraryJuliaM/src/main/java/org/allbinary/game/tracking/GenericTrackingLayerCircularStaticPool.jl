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
# package org.allbinary.game.tracking

# extends AllBinaryLayerCircularPool: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GenericTrackingLayerCircularStaticPool <: JObject
    GenericTrackingLayerCircularStaticPool() = new()
end

const GenericTrackingLayerCircularStaticPool_SINGLETONValue = Ref{Any}(nothing)
const GenericTrackingLayerCircularStaticPool_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{GenericTrackingLayerCircularStaticPool})
    if !GenericTrackingLayerCircularStaticPool_SINGLETONSet[]
        GenericTrackingLayerCircularStaticPool_SINGLETONSet[] = true
        GenericTrackingLayerCircularStaticPool_SINGLETONValue[] = newGenericTrackingLayerCircularStaticPool()
    end
    GenericTrackingLayerCircularStaticPool_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{GenericTrackingLayerCircularStaticPool}, value)
    GenericTrackingLayerCircularStaticPool_SINGLETONSet[] = true
    GenericTrackingLayerCircularStaticPool_SINGLETONValue[] = value
end

function initFieldsGenericTrackingLayerCircularStaticPool(this::GenericTrackingLayerCircularStaticPool)
    nothing
end


function initGenericTrackingLayerCircularStaticPool(this::GenericTrackingLayerCircularStaticPool)
        initAllBinaryLayerCircularPool(this)
        initFieldsGenericTrackingLayerCircularStaticPool(this)
        nothing
        nothing
end

function newGenericTrackingLayerCircularStaticPool()
    this = GenericTrackingLayerCircularStaticPool()
    initGenericTrackingLayerCircularStaticPool(this)
    this
end


function getInstance(::Type{GenericTrackingLayerCircularStaticPool})
        return staticGet_SINGLETON(GenericTrackingLayerCircularStaticPool)
end

