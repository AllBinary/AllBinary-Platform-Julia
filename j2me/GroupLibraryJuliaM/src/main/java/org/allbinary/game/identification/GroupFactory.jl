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
# package org.allbinary.game.identification

mutable struct GroupFactory <: JObject
    logUtil::Any
    NULL_GROUP_ARRAY::Any
    list::Any
    index::Int32
    GroupFactory() = new()
end

const GroupFactory_instanceValue = Ref{Any}(nothing)
const GroupFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{GroupFactory})
    if !GroupFactory_instanceSet[]
        GroupFactory_instanceSet[] = true
        GroupFactory_instanceValue[] = newGroupFactory()
    end
    GroupFactory_instanceValue[]
end
function staticSet_instance(::Type{GroupFactory}, value)
    GroupFactory_instanceSet[] = true
    GroupFactory_instanceValue[] = value
end

function initFieldsGroupFactory(this::GroupFactory)
    this.logUtil = nothing
    this.NULL_GROUP_ARRAY = nothing
    this.list = nothing
    this.index = Int32(0)
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.NULL_GROUP_ARRAY = jNewArray(Any, Int32(0), nothing)
    this.list = newBasicArrayListD()
    this.index = Int32(0)
    nothing
end

function initGroupFactory(this::GroupFactory)
    initFieldsGroupFactory(this)
end

function newGroupFactory()
    this = GroupFactory()
    initGroupFactory(this)
    this
end


function getInstance(::Type{GroupFactory})
        return staticGet_instance(GroupFactory)
end


function getNextGroup(this::GroupFactory)
        local group = (this.list.objectArray[this.index + 1])
        this.index += Int32(1)
        return group
end


function getNextGroupByName(this::GroupFactory, name)
        local group = AllBinary.getNextGroup(this)
        AllBinary.setName(group, name)
        return group
end


function init(this::GroupFactory, groups, nameArray)
        local stringMaker = newStringMaker()
        local stringUtil = AllBinary.getInstance(StringUtil)
        local TEAM = "Team "
        AllBinary.clear(this.list)
        this.index = Int32(0)
        local size::Int32 = AllBinary.size(this.list)
        local name = nothing
        while size < ((groups) % Int32)
            name = stringUtil.EMPTY_STRING
            if size < Int32(Base.length(nameArray))
                name = nameArray[size + 1]
            else
                AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                name = AllBinary.toString(AllBinary.appendint(AllBinary.append(stringMaker, TEAM), size))
            end
            AllBinary.add(this.list, newGroup(name, (((size + Int32(3))) % Int16)))
            size += Int32(1)
        end
        nothing
end

