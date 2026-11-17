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
# package org.allbinary.math

mutable struct PositionStrings <: JObject
    X::Any
    Y::Any
    X_LABEL::Any
    Y_LABEL::Any
    Z_LABEL::Any
    DX_LABEL::Any
    DY_LABEL::Any
    DZ_LABEL::Any
    PositionStrings() = new()
end

const PositionStrings_instanceValue = Ref{Any}(nothing)
const PositionStrings_instanceSet = Ref(false)
function staticGet_instance(::Type{PositionStrings})
    if !PositionStrings_instanceSet[]
        PositionStrings_instanceSet[] = true
        PositionStrings_instanceValue[] = newPositionStrings()
    end
    PositionStrings_instanceValue[]
end
function staticSet_instance(::Type{PositionStrings}, value)
    PositionStrings_instanceSet[] = true
    PositionStrings_instanceValue[] = value
end

function initFieldsPositionStrings(this::PositionStrings)
    this.X = nothing
    this.Y = nothing
    this.X_LABEL = nothing
    this.Y_LABEL = nothing
    this.Z_LABEL = nothing
    this.DX_LABEL = nothing
    this.DY_LABEL = nothing
    this.DZ_LABEL = nothing
    this.X = "x"
    this.Y = "y"
    this.X_LABEL = "x: "
    this.Y_LABEL = "y: "
    this.Z_LABEL = "z: "
    this.DX_LABEL = "dx: "
    this.DY_LABEL = "dy: "
    this.DZ_LABEL = "dz: "
    nothing
end

function initPositionStrings(this::PositionStrings)
    initFieldsPositionStrings(this)
end

function newPositionStrings()
    this = PositionStrings()
    initPositionStrings(this)
    this
end


function getInstance(::Type{PositionStrings})
        return staticGet_instance(PositionStrings)
end

