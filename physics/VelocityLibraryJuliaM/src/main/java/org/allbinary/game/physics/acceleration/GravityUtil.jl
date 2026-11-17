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
# package org.allbinary.game.physics.acceleration

mutable struct GravityUtil <: JObject
    GAME_GRAVITY_VELOCITY::Int32
    MAX_GAME_VELOCITY::Int32
    GravityUtil() = new()
end

const GravityUtil_instanceValue = Ref{Any}(nothing)
const GravityUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{GravityUtil})
    if !GravityUtil_instanceSet[]
        GravityUtil_instanceSet[] = true
        GravityUtil_instanceValue[] = newGravityUtil()
    end
    GravityUtil_instanceValue[]
end
function staticSet_instance(::Type{GravityUtil}, value)
    GravityUtil_instanceSet[] = true
    GravityUtil_instanceValue[] = value
end

function initFieldsGravityUtil(this::GravityUtil)
    this.GAME_GRAVITY_VELOCITY = Int32(0)
    this.MAX_GAME_VELOCITY = Int32(0)
    this.GAME_GRAVITY_VELOCITY = Int32(1800)
    this.MAX_GAME_VELOCITY = Int32(18000)
    nothing
end

function initGravityUtil(this::GravityUtil)
    initFieldsGravityUtil(this)
end

function newGravityUtil()
    this = GravityUtil()
    initGravityUtil(this)
    this
end


function getInstance(::Type{GravityUtil})
        return staticGet_instance(GravityUtil)
end


function process(this::GravityUtil, velocityProperties, customGravity)
        AllBinary.addint(AllBinary.getVelocityYBasicDecimalP(velocityProperties), customGravity)
        nothing
end

