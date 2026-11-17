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

mutable struct ResourceLoadingLevel <: JObject
    name::Any
    level::Int32
    ResourceLoadingLevel() = new()
end


function initFieldsResourceLoadingLevel(this::ResourceLoadingLevel)
    this.name = nothing
    this.level = Int32(0)
    
    
    nothing
end


function initResourceLoadingLevel(this::ResourceLoadingLevel, name, level)
        initFieldsResourceLoadingLevel(this)
        this.name = name
        this.level = level
        nothing
end

function newResourceLoadingLevel(name, level)
    this = ResourceLoadingLevel()
    initResourceLoadingLevel(this, name, level)
    this
end


function getLevel(this::ResourceLoadingLevel)
        return this.level
end


function getName(this::ResourceLoadingLevel)
        return this.name
end

