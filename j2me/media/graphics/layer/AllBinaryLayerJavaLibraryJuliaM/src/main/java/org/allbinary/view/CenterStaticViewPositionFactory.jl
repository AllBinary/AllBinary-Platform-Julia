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

mutable struct CenterStaticViewPositionFactory <: JObject
    CenterStaticViewPositionFactory() = new()
end


function initFieldsCenterStaticViewPositionFactory(this::CenterStaticViewPositionFactory)
    nothing
end


function initCenterStaticViewPositionFactory(this::CenterStaticViewPositionFactory)
        initFieldsCenterStaticViewPositionFactory(this)
        nothing
        nothing
end

function newCenterStaticViewPositionFactory()
    this = CenterStaticViewPositionFactory()
    initCenterStaticViewPositionFactory(this)
    this
end


function getInstance(this::CenterStaticViewPositionFactory, z)
        local displayInfoSingleton = AllBinary.getInstance(DisplayInfoSingleton)
        return newStaticViewPosition((AllBinary.getLastWidth(displayInfoSingleton) >> Int32(1)), (AllBinary.getLastHeight(displayInfoSingleton) >> Int32(1)), z)
end

