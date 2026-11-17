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
# package org.allbinary.graphics.paint

mutable struct LocationPaintable <: JObject
    LocationPaintable() = new()
end

const LocationPaintable_instanceValue = Ref{Any}(nothing)
const LocationPaintable_instanceSet = Ref(false)
function staticGet_instance(::Type{LocationPaintable})
    if !LocationPaintable_instanceSet[]
        LocationPaintable_instanceSet[] = true
        LocationPaintable_instanceValue[] = newLocationPaintable()
    end
    LocationPaintable_instanceValue[]
end
function staticSet_instance(::Type{LocationPaintable}, value)
    LocationPaintable_instanceSet[] = true
    LocationPaintable_instanceValue[] = value
end

function initFieldsLocationPaintable(this::LocationPaintable)
    nothing
end

function initLocationPaintable(this::LocationPaintable)
    initFieldsLocationPaintable(this)
end

function newLocationPaintable()
    this = LocationPaintable()
    initLocationPaintable(this)
    this
end


function getInstance(::Type{LocationPaintable})
        return staticGet_instance(LocationPaintable)
end


function paintXY(this::LocationPaintable, graphics, x, y)
        nothing
        nothing
end

