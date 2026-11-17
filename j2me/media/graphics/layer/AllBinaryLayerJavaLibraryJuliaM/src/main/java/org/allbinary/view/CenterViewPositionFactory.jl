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
# package org.allbinary.view

# extends CenterStaticViewPositionFactory: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CenterViewPositionFactory <: JObject
    CenterViewPositionFactory() = new()
end


function initFieldsCenterViewPositionFactory(this::CenterViewPositionFactory)
    nothing
end

function initCenterViewPositionFactory(this::CenterViewPositionFactory)
    initCenterStaticViewPositionFactory(this)
    initFieldsCenterViewPositionFactory(this)
end

function newCenterViewPositionFactory()
    this = CenterViewPositionFactory()
    initCenterViewPositionFactory(this)
    this
end

