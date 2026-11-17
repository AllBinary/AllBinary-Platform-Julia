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

mutable struct MidletIcon <: JObject
    MidletIcon() = new()
end

const MidletIcon_RESOURCEValue = Ref{Any}(nothing)
const MidletIcon_RESOURCESet = Ref(false)
function staticGet_RESOURCE(::Type{MidletIcon})
    if !MidletIcon_RESOURCESet[]
        MidletIcon_RESOURCESet[] = true
        MidletIcon_RESOURCEValue[] = "icon"
    end
    MidletIcon_RESOURCEValue[]
end
function staticSet_RESOURCE(::Type{MidletIcon}, value)
    MidletIcon_RESOURCESet[] = true
    MidletIcon_RESOURCEValue[] = value
end

function initFieldsMidletIcon(this::MidletIcon)
    nothing
end

function initMidletIcon(this::MidletIcon)
    initFieldsMidletIcon(this)
end

function newMidletIcon()
    this = MidletIcon()
    initMidletIcon(this)
    this
end

