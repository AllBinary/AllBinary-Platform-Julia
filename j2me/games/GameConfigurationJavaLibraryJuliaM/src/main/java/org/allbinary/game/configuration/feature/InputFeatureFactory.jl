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
# package org.allbinary.game.configuration.feature

mutable struct InputFeatureFactory <: JObject
    REMOVE_DUPLICATE_KEY_PRESSES::Any
    INPUT_MAPPING::Any
    MULTI_KEY_PRESS::Any
    SINGLE_KEY_REPEAT_PRESS::Any
    SINGLE_KEY_PRESS::Any
    InputFeatureFactory() = new()
end

const InputFeatureFactory_instanceValue = Ref{Any}(nothing)
const InputFeatureFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{InputFeatureFactory})
    if !InputFeatureFactory_instanceSet[]
        InputFeatureFactory_instanceSet[] = true
        InputFeatureFactory_instanceValue[] = newInputFeatureFactory()
    end
    InputFeatureFactory_instanceValue[]
end
function staticSet_instance(::Type{InputFeatureFactory}, value)
    InputFeatureFactory_instanceSet[] = true
    InputFeatureFactory_instanceValue[] = value
end

function initFieldsInputFeatureFactory(this::InputFeatureFactory)
    this.REMOVE_DUPLICATE_KEY_PRESSES = nothing
    this.INPUT_MAPPING = nothing
    this.MULTI_KEY_PRESS = nothing
    this.SINGLE_KEY_REPEAT_PRESS = nothing
    this.SINGLE_KEY_PRESS = nothing
    this.REMOVE_DUPLICATE_KEY_PRESSES = newInputFeature("Remove Duplicate Key Presses")
    this.INPUT_MAPPING = newInputFeature("Input Mapping")
    this.MULTI_KEY_PRESS = newInputFeature("Multi Key Press")
    this.SINGLE_KEY_REPEAT_PRESS = newInputFeature("Single Key Repeat Press")
    this.SINGLE_KEY_PRESS = newInputFeature("Single Key Press")
    nothing
end


function getInstance(::Type{InputFeatureFactory})
        return staticGet_instance(InputFeatureFactory)
end


function initInputFeatureFactory(this::InputFeatureFactory)
        initFieldsInputFeatureFactory(this)
        nothing
        nothing
end

function newInputFeatureFactory()
    this = InputFeatureFactory()
    initInputFeatureFactory(this)
    this
end


function isSingleKeyProcessing(this::InputFeatureFactory)
        local features = AllBinary.getInstance(Features)
        if AllBinary.isFeature(features, this.SINGLE_KEY_REPEAT_PRESS) || AllBinary.isFeature(features, this.SINGLE_KEY_PRESS)
            return true
        else
            return false
        end
end

