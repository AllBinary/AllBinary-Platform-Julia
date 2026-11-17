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
# package org.allbinary.game.collision

mutable struct LayerCollisionUtil <: JObject
    collisionProcessor::Any
    LayerCollisionUtil() = new()
end

const LayerCollisionUtil_instanceValue = Ref{Any}(nothing)
const LayerCollisionUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{LayerCollisionUtil})
    if !LayerCollisionUtil_instanceSet[]
        LayerCollisionUtil_instanceSet[] = true
        LayerCollisionUtil_instanceValue[] = newLayerCollisionUtil()
    end
    LayerCollisionUtil_instanceValue[]
end
function staticSet_instance(::Type{LayerCollisionUtil}, value)
    LayerCollisionUtil_instanceSet[] = true
    LayerCollisionUtil_instanceValue[] = value
end

function initFieldsLayerCollisionUtil(this::LayerCollisionUtil)
    this.collisionProcessor = nothing
    this.collisionProcessor = nothing
    nothing
end


function getInstance(::Type{LayerCollisionUtil})
        return staticGet_instance(LayerCollisionUtil)
end


function initLayerCollisionUtil(this::LayerCollisionUtil)
        initFieldsLayerCollisionUtil(this)
        local features = AllBinary.getInstance(Features)
        local gameFeatureFactory = AllBinary.getInstance(GameFeatureFactory)
        if AllBinary.isAnyThreed(AllBinary.getInstance(OpenGLFeatureUtil)) && !AllBinary.isFeature(features, gameFeatureFactory.COLLISIONS_FORCED_TWO_DIMENSIONAL)
            this.collisionProcessor = newCollisionThreedProcessor()
        else
            this.collisionProcessor = newCollision2DProcessor()
        end
        nothing
end

function newLayerCollisionUtil()
    this = LayerCollisionUtil()
    initLayerCollisionUtil(this)
    this
end


function isCollision(this::LayerCollisionUtil, myLayer, myLayer2)
        return AllBinary.isCollision(this.collisionProcessor, myLayer, myLayer2)
end

