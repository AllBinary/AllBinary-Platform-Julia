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
# package org.allbinary.game.resource

mutable struct FeatureResourceInitializationUtil <: JObject
    logUtil::Any
    FeatureResourceInitializationUtil() = new()
end

const FeatureResourceInitializationUtil_instanceValue = Ref{Any}(nothing)
const FeatureResourceInitializationUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{FeatureResourceInitializationUtil})
    if !FeatureResourceInitializationUtil_instanceSet[]
        FeatureResourceInitializationUtil_instanceSet[] = true
        FeatureResourceInitializationUtil_instanceValue[] = newFeatureResourceInitializationUtil()
    end
    FeatureResourceInitializationUtil_instanceValue[]
end
function staticSet_instance(::Type{FeatureResourceInitializationUtil}, value)
    FeatureResourceInitializationUtil_instanceSet[] = true
    FeatureResourceInitializationUtil_instanceValue[] = value
end

function initFieldsFeatureResourceInitializationUtil(this::FeatureResourceInitializationUtil)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end

function initFeatureResourceInitializationUtil(this::FeatureResourceInitializationUtil)
    initFieldsFeatureResourceInitializationUtil(this)
end

function newFeatureResourceInitializationUtil()
    this = FeatureResourceInitializationUtil()
    initFeatureResourceInitializationUtil(this)
    this
end


function getInstance(::Type{FeatureResourceInitializationUtil})
        return staticGet_instance(FeatureResourceInitializationUtil)
end


function init(this::FeatureResourceInitializationUtil, level)
        local commonStrings = AllBinary.getInstance(CommonStrings)
        AllBinary.putF(this.logUtil, commonStrings.START, this, commonStrings.INIT)
        local featuredResourceFactory = AllBinary.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory)
        AllBinary.init(featuredResourceFactory, level)
        AllBinary.init(AllBinary.getInstance(FeaturedResourceRelativeRelationshipFactory), level)
        nothing
end

