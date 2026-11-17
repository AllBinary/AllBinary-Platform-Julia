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
# package org.allbinary.logic.util.cache

mutable struct ImageCacheable <: JObject
    name::Any
    ImageCacheable() = new()
end


function initFieldsImageCacheable(this::ImageCacheable)
    this.name = nothing
    this.name = AllBinary.getInstance(StringUtil).EMPTY_STRING
    nothing
end


function initImageCacheable(this::ImageCacheable, name, anyType)
        initFieldsImageCacheable(this)
        nothing
        nothing
end

function newImageCacheable(name, anyType)
    this = ImageCacheable()
    initImageCacheable(this, name, anyType)
    this
end


function getKey(this::ImageCacheable)
        return this.name
end


function toString(this::ImageCacheable)
        return this.name
end

