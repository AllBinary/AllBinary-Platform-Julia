#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.game.identification

mutable struct GroupCommonFactory <: JObject
    ID::Any
    GROUP_NAME_LABEL::Any
    ID_LABEL::Any
    ADDING_LABEL::Any
    TO_LABEL::Any
    GroupCommonFactory() = new()
end

const GroupCommonFactory_instanceValue = Ref{Any}(nothing)
const GroupCommonFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{GroupCommonFactory})
    if !GroupCommonFactory_instanceSet[]
        GroupCommonFactory_instanceSet[] = true
        GroupCommonFactory_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    GroupCommonFactory_instanceValue[]
end
function staticSet_instance(::Type{GroupCommonFactory}, value)
    GroupCommonFactory_instanceSet[] = true
    GroupCommonFactory_instanceValue[] = value
end

function initFieldsGroupCommonFactory(this::GroupCommonFactory)
    this.ID = nothing
    this.GROUP_NAME_LABEL = nothing
    this.ID_LABEL = nothing
    this.ADDING_LABEL = nothing
    this.TO_LABEL = nothing
    this.ID = AllBinary.getAt(AllBinary.getInstance(SmallIntegerSingletonFactory), Int32(10))
    this.GROUP_NAME_LABEL = "Group Name: "
    this.ID_LABEL = " Id: "
    this.ADDING_LABEL = "Adding: "
    this.TO_LABEL = " to: "
    nothing
end

function initGroupCommonFactory(this::GroupCommonFactory)
    initFieldsGroupCommonFactory(this)
end

function newGroupCommonFactory()
    this = GroupCommonFactory()
    initGroupCommonFactory(this)
    this
end


function getInstance(::Type{GroupCommonFactory})
        if staticGet_instance(GroupCommonFactory) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(GroupCommonFactory, newGroupCommonFactory())
        end
        return (staticGet_instance(GroupCommonFactory))
end

