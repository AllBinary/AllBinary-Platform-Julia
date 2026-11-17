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
# package org.allbinary.logic.java.bool

mutable struct BooleanFactory <: JObject
    TRUE::Any
    FALSE::Any
    TRUE_STRING::Any
    FALSE_STRING::Any
    YES::Any
    NO::Any
    BooleanFactory() = new()
end

const BooleanFactory_instanceValue = Ref{Any}(nothing)
const BooleanFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{BooleanFactory})
    if !BooleanFactory_instanceSet[]
        BooleanFactory_instanceSet[] = true
        BooleanFactory_instanceValue[] = newBooleanFactory()
    end
    BooleanFactory_instanceValue[]
end
function staticSet_instance(::Type{BooleanFactory}, value)
    BooleanFactory_instanceSet[] = true
    BooleanFactory_instanceValue[] = value
end

function initFieldsBooleanFactory(this::BooleanFactory)
    this.TRUE = nothing
    this.FALSE = nothing
    this.TRUE_STRING = nothing
    this.FALSE_STRING = nothing
    this.YES = nothing
    this.NO = nothing
    this.TRUE = true
    this.FALSE = false
    this.TRUE_STRING = AllBinary.toString(this.TRUE)
    this.FALSE_STRING = AllBinary.toString(this.FALSE)
    this.YES = "yes"
    this.NO = "no"
    nothing
end

function initBooleanFactory(this::BooleanFactory)
    initFieldsBooleanFactory(this)
end

function newBooleanFactory()
    this = BooleanFactory()
    initBooleanFactory(this)
    this
end


function getInstance(::Type{BooleanFactory})
        return staticGet_instance(BooleanFactory)
end


function toStringb(this::BooleanFactory, bool)
        if bool
            return this.TRUE_STRING
        else
            return this.FALSE_STRING
        end
end

