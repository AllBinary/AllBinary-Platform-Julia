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
# package org.allbinary.game.graphics.hud

mutable struct BasicHudFactory <: JObject
    DIRECTION_EXCEPTION::Any
    VERTICAL::Int32
    HORIZONTAL::Int32
    BOTTOMLEFT::Int32
    BOTTOMRIGHT::Int32
    TOPLEFT::Int32
    TOPRIGHT::Int32
    BOTTOMCENTER::Int32
    TOPCENTER::Int32
    ABSOLUTE::Int32
    BasicHudFactory() = new()
end

const BasicHudFactory_instanceValue = Ref{Any}(nothing)
const BasicHudFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{BasicHudFactory})
    if !BasicHudFactory_instanceSet[]
        BasicHudFactory_instanceSet[] = true
        BasicHudFactory_instanceValue[] = newBasicHudFactory()
    end
    BasicHudFactory_instanceValue[]
end
function staticSet_instance(::Type{BasicHudFactory}, value)
    BasicHudFactory_instanceSet[] = true
    BasicHudFactory_instanceValue[] = value
end

function initFieldsBasicHudFactory(this::BasicHudFactory)
    this.DIRECTION_EXCEPTION = nothing
    this.VERTICAL = Int32(0)
    this.HORIZONTAL = Int32(0)
    this.BOTTOMLEFT = Int32(0)
    this.BOTTOMRIGHT = Int32(0)
    this.TOPLEFT = Int32(0)
    this.TOPRIGHT = Int32(0)
    this.BOTTOMCENTER = Int32(0)
    this.TOPCENTER = Int32(0)
    this.ABSOLUTE = Int32(0)
    this.DIRECTION_EXCEPTION = "Only Horizontal Direction is Allowed Currently"
    this.VERTICAL = Int32(0)
    this.HORIZONTAL = Int32(1)
    this.BOTTOMLEFT = Int32(0)
    this.BOTTOMRIGHT = Int32(1)
    this.TOPLEFT = Int32(2)
    this.TOPRIGHT = Int32(3)
    this.BOTTOMCENTER = Int32(4)
    this.TOPCENTER = Int32(5)
    this.ABSOLUTE = Int32(6)
    nothing
end


function getInstance(::Type{BasicHudFactory})
        return staticGet_instance(BasicHudFactory)
end


function initBasicHudFactory(this::BasicHudFactory)
        initFieldsBasicHudFactory(this)
        nothing
        nothing
end

function newBasicHudFactory()
    this = BasicHudFactory()
    initBasicHudFactory(this)
    this
end

