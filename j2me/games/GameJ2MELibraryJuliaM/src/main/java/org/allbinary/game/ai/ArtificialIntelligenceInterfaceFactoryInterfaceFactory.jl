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
# package org.allbinary.game.ai

mutable struct ArtificialIntelligenceInterfaceFactoryInterfaceFactory <: JObject
    list::Any
    ArtificialIntelligenceInterfaceFactoryInterfaceFactory() = new()
end

const ArtificialIntelligenceInterfaceFactoryInterfaceFactory_SINGLETONValue = Ref{Any}(nothing)
const ArtificialIntelligenceInterfaceFactoryInterfaceFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{ArtificialIntelligenceInterfaceFactoryInterfaceFactory})
    if !ArtificialIntelligenceInterfaceFactoryInterfaceFactory_SINGLETONSet[]
        ArtificialIntelligenceInterfaceFactoryInterfaceFactory_SINGLETONSet[] = true
        ArtificialIntelligenceInterfaceFactoryInterfaceFactory_SINGLETONValue[] = newArtificialIntelligenceInterfaceFactoryInterfaceFactory()
    end
    ArtificialIntelligenceInterfaceFactoryInterfaceFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{ArtificialIntelligenceInterfaceFactoryInterfaceFactory}, value)
    ArtificialIntelligenceInterfaceFactoryInterfaceFactory_SINGLETONSet[] = true
    ArtificialIntelligenceInterfaceFactoryInterfaceFactory_SINGLETONValue[] = value
end

function initFieldsArtificialIntelligenceInterfaceFactoryInterfaceFactory(this::ArtificialIntelligenceInterfaceFactoryInterfaceFactory)
    this.list = nothing
    this.list = AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil))
    nothing
end

function initArtificialIntelligenceInterfaceFactoryInterfaceFactory(this::ArtificialIntelligenceInterfaceFactoryInterfaceFactory)
    initFieldsArtificialIntelligenceInterfaceFactoryInterfaceFactory(this)
end

function newArtificialIntelligenceInterfaceFactoryInterfaceFactory()
    this = ArtificialIntelligenceInterfaceFactoryInterfaceFactory()
    initArtificialIntelligenceInterfaceFactoryInterfaceFactory(this)
    this
end


function clear(this::ArtificialIntelligenceInterfaceFactoryInterfaceFactory)
        this.list = newBasicArrayListD()
        nothing
end


function getInstance(::Type{ArtificialIntelligenceInterfaceFactoryInterfaceFactory})
        return staticGet_SINGLETON(ArtificialIntelligenceInterfaceFactoryInterfaceFactory)
end


function getInstanceFromCollection(this::ArtificialIntelligenceInterfaceFactoryInterfaceFactory, hashtable)
        local typeInteger = (AllBinary.get(hashtable, (staticGet_ID(BasicAI))))
        local type_::Int32 = AllBinary.intValue(typeInteger)
        local artificialIntelligenceInterfaceFactoryInterface = (this.list.objectArray[type_ - Int32(1) + 1])
        return artificialIntelligenceInterfaceFactoryInterface
end


function add(this::ArtificialIntelligenceInterfaceFactoryInterfaceFactory, artificialIntelligenceInterfaceFactoryInterface)
        AllBinary.add(this.list, artificialIntelligenceInterfaceFactoryInterface)
        nothing
end

