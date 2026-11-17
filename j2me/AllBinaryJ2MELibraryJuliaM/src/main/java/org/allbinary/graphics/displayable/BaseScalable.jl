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
# package org.allbinary.graphics.displayable

mutable struct BaseScalable <: JObject
    BaseScalable() = new()
end


function initFieldsBaseScalable(this::BaseScalable)
    nothing
end

function initBaseScalable(this::BaseScalable)
    initFieldsBaseScalable(this)
end

function newBaseScalable()
    this = BaseScalable()
    initBaseScalable(this)
    this
end


function getRatio(this::BaseScalable, ratio)
        return 1.0f0
end


function getLeft(this::BaseScalable, xOffset)
        return -Int32(1)
end


function getTop(this::BaseScalable, yOffset)
        return -Int32(1)
end


function scale(this::BaseScalable, ratio)
        nothing
        nothing
end

