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
# package org.allbinary.game.layer.identification

# extends LayerManagerEventListener: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GroupLayerManagerListener <: JObject
    logUtil::Any
    list::Any
    GroupLayerManagerListener() = new()
end

const GroupLayerManagerListener_SINGLETONValue = Ref{Any}(nothing)
const GroupLayerManagerListener_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{GroupLayerManagerListener})
    if !GroupLayerManagerListener_SINGLETONSet[]
        GroupLayerManagerListener_SINGLETONSet[] = true
        GroupLayerManagerListener_SINGLETONValue[] = newGroupLayerManagerListener()
    end
    GroupLayerManagerListener_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{GroupLayerManagerListener}, value)
    GroupLayerManagerListener_SINGLETONSet[] = true
    GroupLayerManagerListener_SINGLETONValue[] = value
end

function initFieldsGroupLayerManagerListener(this::GroupLayerManagerListener)
    this.logUtil = nothing
    this.list = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.list = newBasicArrayListD()
    nothing
end


function getInstance(::Type{GroupLayerManagerListener})
        return staticGet_SINGLETON(GroupLayerManagerListener)
end


function initGroupLayerManagerListener(this::GroupLayerManagerListener)
        initLayerManagerEventListener(this)
        initFieldsGroupLayerManagerListener(this)
        AllBinary.addListener(AllBinary.getInstance(LayerManagerEventHandler), this)
        nothing
end

function newGroupLayerManagerListener()
    this = GroupLayerManagerListener()
    initGroupLayerManagerListener(this)
    this
end


function clear(this::GroupLayerManagerListener)
        local groupList = nothing
        local size::Int32 = AllBinary.size(this.list)
        let
            local index::Int32 = size - Int32(1)
            while index >= Int32(0)
            try
            groupList = (this.list.objectArray[index + 1])
            AllBinary.clear(groupList)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end


function getGroupSizeFromInterface(this::GroupLayerManagerListener, groupInterfaceCompositeInterface)
        local groupInterfaceArray = AllBinary.getGroupInterface(groupInterfaceCompositeInterface)
        return AllBinary.getGroupSize(this, groupInterfaceArray[Int32(0) + 1])
end


function getGroupSize(this::GroupLayerManagerListener, groupInterface)
        local id::Int32 = ((AllBinary.getGroupId(groupInterface)) % Int32)
        return AllBinary.getGroupSizeById(this, id)
end


function getList(this::GroupLayerManagerListener, groupInterface)
        local id::Int32 = ((AllBinary.getGroupId(groupInterface)) % Int32)
        return AllBinary.getListById(this, id)
end


function getListById(this::GroupLayerManagerListener, groupId)
        local groupList = (this.list.objectArray[groupId + 1])
        return groupList
end


function getGroupSizeById(this::GroupLayerManagerListener, groupId)
        local groupList = (this.list.objectArray[groupId + 1])
        local size::Int32 = AllBinary.size(groupList)
        return size
end


function areAllOtherGroupsEmpty(this::GroupLayerManagerListener, groupInterface)
        local id::Int32 = ((AllBinary.getGroupId(groupInterface)) % Int32)
        local size::Int32 = AllBinary.size(this.list)
        let
            local index::Int32 = size - Int32(1)
            while index >= Int32(0)
            try
            if id != index
                local groupSize::Int32 = AllBinary.getGroupSizeById(this, index)
                if groupSize != Int32(0)
                    AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), "Group Size: "), groupSize)), this, "areAllOtherGroupsEmpty")
                    return false
                end
            end
            finally
                index -= Int32(1)
            end
            end
        end
        return true
end


function isIdInList(this::GroupLayerManagerListener, id, excludeGroupList)
        local size::Int32 = AllBinary.size(excludeGroupList)
        local groupInterfaceArray = nothing
        local groupInterface = nothing
        local groupId::Int32 = Int32(0)
        let
            local index::Int32 = size - Int32(1)
            while index >= Int32(0)
            try
            groupInterfaceArray = (excludeGroupList.objectArray[index + 1])
            local size2::Int32 = Int32(Base.length(groupInterfaceArray))
            let
                local index2::Int32 = Int32(0)
                while index2 < size2
                try
                groupInterface = groupInterfaceArray[index2 + 1]
                groupId = ((AllBinary.getGroupId(groupInterface)) % Int32)
                if groupId == id
                    return true
                end
                finally
                    index2 += Int32(1)
                end
                end
            end
            finally
                index -= Int32(1)
            end
            end
        end
        return false
end


function areAllOtherGroupsLessThan(this::GroupLayerManagerListener, excludeGroupList, maxSize)
        local size::Int32 = AllBinary.size(this.list)
        let
            local index::Int32 = size - Int32(1)
            while index >= Int32(0)
            try
            if !AllBinary.isIdInList(this, index, excludeGroupList)
                local groupSize::Int32 = AllBinary.getGroupSizeById(this, index)
                if groupSize >= maxSize
                    return false
                end
            end
            finally
                index -= Int32(1)
            end
            end
        end
        return true
end


function init(this::GroupLayerManagerListener, total)
        while AllBinary.size(this.list) <= total + Int32(1)
            AllBinary.add(this.list, newBasicArrayListD())
        end
        nothing
end


function onEvent(this::GroupLayerManagerListener, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function onCreateLayerManagerEvent(this::GroupLayerManagerListener, layerManagerEvent)
        local layerInterface = AllBinary.getLayerInterface(layerManagerEvent)
        local groupInterfaceArray = AllBinary.getGroupInterface(layerInterface)
        local size::Int32 = Int32(Base.length(groupInterfaceArray))
        local id::Int32 = Int32(0)
        local groupList = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            id = ((AllBinary.getGroupId(groupInterfaceArray[index + 1])) % Int32)
            groupList = (this.list.objectArray[id + 1])
            if groupList === nothing
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), "id: "), id)), this, "onCreateLayerManagerEvent")
            end
            if !AllBinary.contains(groupList, layerInterface)
                AllBinary.add(groupList, layerInterface)
            else
                nothing
            end
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function onDeleteLayerManagerEvent(this::GroupLayerManagerListener, layerManagerEvent)
        local layerInterface = AllBinary.getLayerInterface(layerManagerEvent)
        local groupInterfaceArray = AllBinary.getGroupInterface(layerInterface)
        local size::Int32 = Int32(Base.length(groupInterfaceArray))
        local id::Int32 = Int32(0)
        local groupList = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            id = ((AllBinary.getGroupId(groupInterfaceArray[index + 1])) % Int32)
            groupList = (this.list.objectArray[id + 1])
            AllBinary.remove(groupList, layerInterface)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function log(this::GroupLayerManagerListener)
        local stringBuffer = newStringMaker()
        local GROUP = "Group: "
        local SPACE = AllBinary.getInstance(CommonSeps).SPACE
        local TOTAL_LABEL = AllBinary.getInstance(CommonLabels).TOTAL_LABEL
        local size::Int32 = AllBinary.size(this.list)
        let
            local index::Int32 = size - Int32(1)
            while index >= Int32(0)
            try
            local groupList = (this.list.objectArray[index + 1])
            AllBinary.append(stringBuffer, GROUP)
            AllBinary.appendint(stringBuffer, index)
            AllBinary.append(stringBuffer, SPACE)
            AllBinary.append(stringBuffer, TOTAL_LABEL)
            AllBinary.appendint(stringBuffer, AllBinary.size(groupList))
            AllBinary.append(stringBuffer, SPACE)
            finally
                index -= Int32(1)
            end
            end
        end
        AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, "log")
        nothing
end

