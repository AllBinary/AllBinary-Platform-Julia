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
# package org.allbinary.init

mutable struct Init <: JObject
    commonStrings::Any
    Init() = new()
end


function initFieldsInit(this::Init)
    this.commonStrings = nothing
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    nothing
end

function initInit(this::Init)
    initFieldsInit(this)
end

function newInit()
    this = Init()
    initInit(this)
    this
end


function init(this::Init)
        nothing
        nothing
end

