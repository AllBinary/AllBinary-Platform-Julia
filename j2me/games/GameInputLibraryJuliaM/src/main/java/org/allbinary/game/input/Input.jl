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
# package org.allbinary.game.input

mutable struct Input <: JObject
    id::Int32
    name::Any
    Input() = new()
end


function initFieldsInput(this::Input)
    this.id = Int32(0)
    this.name = nothing
    this.id = Int32(0)
    this.name = AllBinary.getInstance(StringUtil).EMPTY_STRING
    nothing
end


function initInput(this::Input, id, name)
        initFieldsInput(this)
        AllBinary.setId(this, id)
        AllBinary.setName(this, name)
        nothing
end

function newInput(id, name)
    this = Input()
    initInput(this, id, name)
    this
end


function getId(this::Input)
        return this.id
end


function setId(this::Input, key)
        this.id = key
        nothing
end


function getName(this::Input)
        return this.name
end


function setName(this::Input, keyName)
        this.name = keyName
        nothing
end


function toString(this::Input)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "Name: ")
        AllBinary.append(stringBuffer, AllBinary.getName(this))
        AllBinary.append(stringBuffer, " Id: ")
        AllBinary.appendint(stringBuffer, AllBinary.getId(this))
        return AllBinary.toString(stringBuffer)
end

