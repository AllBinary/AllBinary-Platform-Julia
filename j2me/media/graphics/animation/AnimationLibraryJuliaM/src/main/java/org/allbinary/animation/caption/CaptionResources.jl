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
# package org.allbinary.animation.caption

mutable struct CaptionResources <: JObject
    CaptionResources() = new()
end

const CaptionResources_RESOURCEValue = Ref{Any}(nothing)
const CaptionResources_RESOURCESet = Ref(false)
function staticGet_RESOURCE(::Type{CaptionResources})
    if !CaptionResources_RESOURCESet[]
        CaptionResources_RESOURCESet[] = true
        CaptionResources_RESOURCEValue[] = "/character_message_bubbled_box.png"
    end
    CaptionResources_RESOURCEValue[]
end
function staticSet_RESOURCE(::Type{CaptionResources}, value)
    CaptionResources_RESOURCESet[] = true
    CaptionResources_RESOURCEValue[] = value
end

function initFieldsCaptionResources(this::CaptionResources)
    nothing
end

function initCaptionResources(this::CaptionResources)
    initFieldsCaptionResources(this)
end

function newCaptionResources()
    this = CaptionResources()
    initCaptionResources(this)
    this
end

