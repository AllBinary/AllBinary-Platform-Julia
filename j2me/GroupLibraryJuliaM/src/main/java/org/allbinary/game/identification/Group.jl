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

mutable struct Group <: JObject
    name::Any
    teamId::Int16
    string::Any
    Group() = new()
end


function initFieldsGroup(this::Group)
    this.name = nothing
    this.teamId = Int16(0)
    this.string = nothing
    this.name = AllBinary.getInstance(StringUtil).EMPTY_STRING
    
    this.string = AllBinary.getInstance(StringUtil).EMPTY_STRING
    nothing
end


function initGroup(this::Group, teamName, teamId)
        initFieldsGroup(this)
        this.teamId = teamId
        AllBinary.setName(this, teamName)
        nothing
end

function newGroup(teamName, teamId)
    this = Group()
    initGroup(this, teamName, teamId)
    this
end


function getGroupName(this::Group)
        return this.name
end


function setName(this::Group, name)
        this.name = name
        local groupCommonFactory = AllBinary.getInstance(GroupCommonFactory)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, groupCommonFactory.GROUP_NAME_LABEL)
        AllBinary.append(stringBuffer, this.name)
        AllBinary.append(stringBuffer, groupCommonFactory.ID_LABEL)
        AllBinary.appendshort(stringBuffer, this.teamId)
        this.string = AllBinary.toString(stringBuffer)
        nothing
end


function getGroupId(this::Group)
        return this.teamId
end


function toString(this::Group)
        return this.string
end

