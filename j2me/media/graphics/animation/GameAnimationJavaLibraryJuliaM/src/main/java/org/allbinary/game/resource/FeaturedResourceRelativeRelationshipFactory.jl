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

# extends FeaturedResourceFactory: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct FeaturedResourceRelativeRelationshipFactory <: JObject
    basicArrayListUtil::Any
    FeaturedResourceRelativeRelationshipFactory() = new()
end

const FeaturedResourceRelativeRelationshipFactory_INSTANCEValue = Ref{Any}(nothing)
const FeaturedResourceRelativeRelationshipFactory_INSTANCESet = Ref(false)
function staticGet_INSTANCE(::Type{FeaturedResourceRelativeRelationshipFactory})
    if !FeaturedResourceRelativeRelationshipFactory_INSTANCESet[]
        FeaturedResourceRelativeRelationshipFactory_INSTANCESet[] = true
        FeaturedResourceRelativeRelationshipFactory_INSTANCEValue[] = newFeaturedResourceRelativeRelationshipFactory()
    end
    FeaturedResourceRelativeRelationshipFactory_INSTANCEValue[]
end
function staticSet_INSTANCE(::Type{FeaturedResourceRelativeRelationshipFactory}, value)
    FeaturedResourceRelativeRelationshipFactory_INSTANCESet[] = true
    FeaturedResourceRelativeRelationshipFactory_INSTANCEValue[] = value
end

function initFieldsFeaturedResourceRelativeRelationshipFactory(this::FeaturedResourceRelativeRelationshipFactory)
    this.basicArrayListUtil = nothing
    this.basicArrayListUtil = AllBinary.getInstance(BasicArrayListUtil)
    nothing
end


function initFeaturedResourceRelativeRelationshipFactory(this::FeaturedResourceRelativeRelationshipFactory)
        initFeaturedResourceFactory(this)
        initFieldsFeaturedResourceRelativeRelationshipFactory(this)
        nothing
        nothing
end

function newFeaturedResourceRelativeRelationshipFactory()
    this = FeaturedResourceRelativeRelationshipFactory()
    initFeaturedResourceRelativeRelationshipFactory(this)
    this
end


function getInstance(::Type{FeaturedResourceRelativeRelationshipFactory})
        return staticGet_INSTANCE(FeaturedResourceRelativeRelationshipFactory)
end


function getRelativeRelationshipList(this::FeaturedResourceRelativeRelationshipFactory, resource, layer)
        local featureReleaseList = AllBinary.getList(this)
        local size::Int32 = AllBinary.size(AllBinary.getList(this))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            local featureInterface = (featureReleaseList.objectArray[index + 1])
            if AllBinary.isFeature(featureInterface)
                local list = AllBinary.getResourceRelativeRelationshipList(featureInterface, resource)
                if list !== AllBinary.getImmutableInstance(this.basicArrayListUtil)
                    return AllBinary.duplicate(this, list, layer)
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        throw(jNewException("Exception", AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Not available for current feature selection or Resource: "), resource))))
end


function duplicate(this::FeaturedResourceRelativeRelationshipFactory, list, layer)
        local pointFactory = AllBinary.getInstance(PointFactory)
        local newList = newBasicArrayListD()
        local size::Int32 = AllBinary.size(list)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            local relativeRelationship = (list.objectArray[index + 1])
            AllBinary.add(newList, newRelativeLayerRelationship(layer, AllBinary.createXY(pointFactory, AllBinary.getX(relativeRelationship), AllBinary.getY(relativeRelationship)), AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil))))
            finally
                index += Int32(1)
            end
            end
        end
        return newList
end

