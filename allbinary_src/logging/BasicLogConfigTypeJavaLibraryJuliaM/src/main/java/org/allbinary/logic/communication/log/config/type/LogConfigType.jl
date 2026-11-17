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
# package org.allbinary.logic.communication.log.config.type

mutable struct LogConfigType <: JObject
    name::Any
    description::Any
    LogConfigType() = new()
end


function initFieldsLogConfigType(this::LogConfigType)
    this.name = nothing
    this.description = nothing
    
    
    nothing
end


function initLogConfigType(this::LogConfigType, name, description)
        initFieldsLogConfigType(this)
        this.name = name
        this.description = description
        nothing
end

function newLogConfigType(name, description)
    this = LogConfigType()
    initLogConfigType(this, name, description)
    this
end


function getName(this::LogConfigType)
        return this.name
end


function getDescription(this::LogConfigType)
        return this.description
end


function setName(this::LogConfigType, value)
        this.name = value
        nothing
end


function setDescription(this::LogConfigType, value)
        this.description = value
        nothing
end

