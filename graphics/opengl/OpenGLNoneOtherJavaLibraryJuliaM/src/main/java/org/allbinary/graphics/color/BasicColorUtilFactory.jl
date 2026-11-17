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
# package org.allbinary.graphics.color

mutable struct BasicColorUtilFactory <: JObject
    BasicColorUtilFactory() = new()
end


function initFieldsBasicColorUtilFactory(this::BasicColorUtilFactory)
    nothing
end

function initBasicColorUtilFactory(this::BasicColorUtilFactory)
    initFieldsBasicColorUtilFactory(this)
end

function newBasicColorUtilFactory()
    this = BasicColorUtilFactory()
    initBasicColorUtilFactory(this)
    this
end


function getInstance(::Type{BasicColorUtilFactory})
        return AllBinary.getInstance(BasicColorUtil)
end

