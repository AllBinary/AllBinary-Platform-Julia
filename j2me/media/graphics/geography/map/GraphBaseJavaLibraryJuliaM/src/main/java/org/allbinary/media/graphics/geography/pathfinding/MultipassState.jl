#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.media.graphics.geography.pathfinding

mutable struct MultipassState <: JObject
    step::Int32
    iteration::Int32
    iteration2::Int32
    MultipassState() = new()
end


function initFieldsMultipassState(this::MultipassState)
    this.step = Int32(0)
    this.iteration = Int32(0)
    this.iteration2 = Int32(0)
    this.step = Int32(0)
    this.iteration = Int32(0)
    this.iteration2 = Int32(0)
    nothing
end

function initMultipassState(this::MultipassState)
    initFieldsMultipassState(this)
end

function newMultipassState()
    this = MultipassState()
    initMultipassState(this)
    this
end

