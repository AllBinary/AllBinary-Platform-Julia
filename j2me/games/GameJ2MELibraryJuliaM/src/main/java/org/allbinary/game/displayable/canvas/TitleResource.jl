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
# package org.allbinary.game.displayable.canvas

mutable struct TitleResource <: JObject
    TitleResource() = new()
end

const TitleResource_RESOURCE_TITLEValue = Ref{Any}(nothing)
const TitleResource_RESOURCE_TITLESet = Ref(false)
function staticGet_RESOURCE_TITLE(::Type{TitleResource})
    if !TitleResource_RESOURCE_TITLESet[]
        TitleResource_RESOURCE_TITLESet[] = true
        TitleResource_RESOURCE_TITLEValue[] = "/title_sprite_100_by_100.png"
    end
    TitleResource_RESOURCE_TITLEValue[]
end
function staticSet_RESOURCE_TITLE(::Type{TitleResource}, value)
    TitleResource_RESOURCE_TITLESet[] = true
    TitleResource_RESOURCE_TITLEValue[] = value
end

function initFieldsTitleResource(this::TitleResource)
    nothing
end

function initTitleResource(this::TitleResource)
    initFieldsTitleResource(this)
end

function newTitleResource()
    this = TitleResource()
    initTitleResource(this)
    this
end

