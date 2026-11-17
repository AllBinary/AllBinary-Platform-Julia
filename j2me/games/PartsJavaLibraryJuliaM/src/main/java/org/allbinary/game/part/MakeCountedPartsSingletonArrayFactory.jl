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
# package org.allbinary.game.part

mutable struct MakeCountedPartsSingletonArrayFactory <: JObject
    logUtil::Any
    list::Any
    MakeCountedPartsSingletonArrayFactory() = new()
end

const MakeCountedPartsSingletonArrayFactory_instanceValue = Ref{Any}(nothing)
const MakeCountedPartsSingletonArrayFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{MakeCountedPartsSingletonArrayFactory})
    if !MakeCountedPartsSingletonArrayFactory_instanceSet[]
        MakeCountedPartsSingletonArrayFactory_instanceSet[] = true
        MakeCountedPartsSingletonArrayFactory_instanceValue[] = newMakeCountedPartsSingletonArrayFactory()
    end
    MakeCountedPartsSingletonArrayFactory_instanceValue[]
end
function staticSet_instance(::Type{MakeCountedPartsSingletonArrayFactory}, value)
    MakeCountedPartsSingletonArrayFactory_instanceSet[] = true
    MakeCountedPartsSingletonArrayFactory_instanceValue[] = value
end

function initFieldsMakeCountedPartsSingletonArrayFactory(this::MakeCountedPartsSingletonArrayFactory)
    this.logUtil = nothing
    this.list = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.list = AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil))
    nothing
end

function initMakeCountedPartsSingletonArrayFactory(this::MakeCountedPartsSingletonArrayFactory)
    initFieldsMakeCountedPartsSingletonArrayFactory(this)
end

function newMakeCountedPartsSingletonArrayFactory()
    this = MakeCountedPartsSingletonArrayFactory()
    initMakeCountedPartsSingletonArrayFactory(this)
    this
end


function getInstance(::Type{MakeCountedPartsSingletonArrayFactory})
        return staticGet_instance(MakeCountedPartsSingletonArrayFactory)
end


function getUpdated(this::MakeCountedPartsSingletonArrayFactory, partInterfaceArray)
        this.list = newBasicArrayListD()
        let
            local index::Int32 = Int32(0)
            while index < Int32(Base.length(partInterfaceArray))
            try
            AllBinary.add(this.list, partInterfaceArray[index + 1])
            finally
                index += Int32(1)
            end
            end
        end
        local countedBasicArrayList = AllBinary.getList(AllBinary.getInstance(CountedPickedUpLayerInterfaceFactoryPool))
        local layerInterfaceFactoryInterface = nothing
        local size::Int32 = AllBinary.size(countedBasicArrayList)
        let
            index = Int32(0)
            while index < size
            try
            layerInterfaceFactoryInterface = (countedBasicArrayList.objectArray[index + 1])
            AllBinary.add(this.list, newCountedLayerInterfaceFactoryPart(Int32(0), layerInterfaceFactoryInterface))
            finally
                index += Int32(1)
            end
            end
        end
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "Total Parts: ")
        AllBinary.appendint(stringBuffer, AllBinary.size(this.list))
        AllBinary.append(stringBuffer, " Counted: ")
        AllBinary.appendint(stringBuffer, AllBinary.size(countedBasicArrayList))
        local commonStrings = AllBinary.getInstance(CommonStrings)
        AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, commonStrings.GET_INSTANCE)
        local newPartInterfaceArray = jNewArray(Any, AllBinary.size(this.list), nothing)
        local newSize::Int32 = Int32(Base.length(newPartInterfaceArray))
        let
            index = Int32(0)
            while index < newSize
            try
            newPartInterfaceArray[index + 1] = (AllBinary.get(this.list, index))
            finally
                index += Int32(1)
            end
            end
        end
        return newPartInterfaceArray
end

