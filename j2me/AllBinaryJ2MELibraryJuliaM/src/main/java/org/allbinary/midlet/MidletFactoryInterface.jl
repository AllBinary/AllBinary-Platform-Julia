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
# package org.allbinary.midlet

mutable struct MidletFactoryInterface <: JObject
    MidletFactoryInterface() = new()
end


function initFieldsMidletFactoryInterface(this::MidletFactoryInterface)
    nothing
end

function initMidletFactoryInterface(this::MidletFactoryInterface)
    initFieldsMidletFactoryInterface(this)
end

function newMidletFactoryInterface()
    this = MidletFactoryInterface()
    initMidletFactoryInterface(this)
    this
end


function getInstance(this::MidletFactoryInterface)
        return AllBinary.getNullInstance(AllBinaryMidlet)
end

