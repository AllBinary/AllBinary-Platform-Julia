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
# package org.allbinary.graphics

mutable struct Anchor <: JObject
    Anchor() = new()
end

const Anchor_TOP_LEFTValue = Ref{Any}(nothing)
const Anchor_TOP_LEFTSet = Ref(false)
function staticGet_TOP_LEFT(::Type{Anchor})
    if !Anchor_TOP_LEFTSet[]
        Anchor_TOP_LEFTSet[] = true
        Anchor_TOP_LEFTValue[] = staticGet_TOP(Graphics) & staticGet_LEFT(Graphics)
    end
    Anchor_TOP_LEFTValue[]
end
function staticSet_TOP_LEFT(::Type{Anchor}, value)
    Anchor_TOP_LEFTSet[] = true
    Anchor_TOP_LEFTValue[] = value
end

function initFieldsAnchor(this::Anchor)
    nothing
end

function initAnchor(this::Anchor)
    initFieldsAnchor(this)
end

function newAnchor()
    this = Anchor()
    initAnchor(this)
    this
end

