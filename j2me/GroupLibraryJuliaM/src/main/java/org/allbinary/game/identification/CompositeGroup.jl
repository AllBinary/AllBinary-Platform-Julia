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

mutable struct CompositeGroup <: JObject
    logUtil::Any
    groupInterface::Any
    list::Any
    CompositeGroup() = new()
end


function initFieldsCompositeGroup(this::CompositeGroup)
    this.logUtil = nothing
    this.groupInterface = nothing
    this.list = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    this.list = newBasicArrayListD()
    nothing
end


function initCompositeGroup(this::CompositeGroup, groupInterface)
        initFieldsCompositeGroup(this)
        this.groupInterface = groupInterface
        nothing
end

function newCompositeGroup(groupInterface)
    this = CompositeGroup()
    initCompositeGroup(this, groupInterface)
    this
end


function clear(this::CompositeGroup)
        AllBinary.clear(this.list)
        nothing
end


function add(this::CompositeGroup, groupInterface)
        local commonStrings = AllBinary.getInstance(CommonStrings)
        local groupCommonFactory = AllBinary.getInstance(GroupCommonFactory)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, groupCommonFactory.ADDING_LABEL)
        AllBinary.append(stringBuffer, AllBinary.toString(groupInterface))
        AllBinary.append(stringBuffer, groupCommonFactory.TO_LABEL)
        AllBinary.append(stringBuffer, AllBinary.toString(AllBinary.getInstance(StringUtil), this.groupInterface))
        AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, commonStrings.ADD)
        AllBinary.add(this.list, groupInterface)
        nothing
end


function isInGroup(this::CompositeGroup, groupInterface)
        if AllBinary.contains(this.list, groupInterface)
            return true
        else
            return false
        end
end


function getGroup(this::CompositeGroup)
        return this.groupInterface
end

