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
# package org.allbinary.game.layer

mutable struct LevelLayersFinder <: JObject
    enumerationUtil::Any
    LevelLayersFinder() = new()
end

const LevelLayersFinder_instanceValue = Ref{Any}(nothing)
const LevelLayersFinder_instanceSet = Ref(false)
function staticGet_instance(::Type{LevelLayersFinder})
    if !LevelLayersFinder_instanceSet[]
        LevelLayersFinder_instanceSet[] = true
        LevelLayersFinder_instanceValue[] = newLevelLayersFinder()
    end
    LevelLayersFinder_instanceValue[]
end
function staticSet_instance(::Type{LevelLayersFinder}, value)
    LevelLayersFinder_instanceSet[] = true
    LevelLayersFinder_instanceValue[] = value
end

function initFieldsLevelLayersFinder(this::LevelLayersFinder)
    this.enumerationUtil = nothing
    this.enumerationUtil = AllBinary.getInstance(EnumerationUtil)
    nothing
end

function initLevelLayersFinder(this::LevelLayersFinder)
    initFieldsLevelLayersFinder(this)
end

function newLevelLayersFinder()
    this = LevelLayersFinder()
    initLevelLayersFinder(this)
    this
end


function getInstance(::Type{LevelLayersFinder})
        return staticGet_instance(LevelLayersFinder)
end


function get(this::LevelLayersFinder, hashtable)
        local smallIntegerSingletonFactory = AllBinary.getInstance(SmallIntegerSingletonFactory)
        local list = newBasicArrayListD()
        local enumeration = AllBinary.keys(hashtable)
        local layerHashtableCanBeNull = nothing
        local integerCanBeNull = nothing
        local cachedIntegerCanBeNull = nothing
        while AllBinary.hasMoreElements(this.enumerationUtil, enumeration)
            layerHashtableCanBeNull = (AllBinary.get(hashtable, (AllBinary.nextElement(this.enumerationUtil, enumeration))))
            integerCanBeNull = (AllBinary.get(layerHashtableCanBeNull, (staticGet_ID(Layer))))
            cachedIntegerCanBeNull = AllBinary.getAt(smallIntegerSingletonFactory, AllBinary.intValue(integerCanBeNull))
            if !AllBinary.contains(list, cachedIntegerCanBeNull)
                AllBinary.add(list, cachedIntegerCanBeNull)
            end
        end
        return list
end

