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
# package org.allbinary.media

mutable struct ScaleProperties <: JObject
    scaleX::Float32
    scaleY::Float32
    scaleWidth::Int32
    scaleHeight::Int32
    shouldScale::Bool
    ScaleProperties() = new()
end

const ScaleProperties_instanceValue = Ref{Any}(nothing)
const ScaleProperties_instanceSet = Ref(false)
function staticGet_instance(::Type{ScaleProperties})
    if !ScaleProperties_instanceSet[]
        ScaleProperties_instanceSet[] = true
        ScaleProperties_instanceValue[] = newScaleProperties()
    end
    ScaleProperties_instanceValue[]
end
function staticSet_instance(::Type{ScaleProperties}, value)
    ScaleProperties_instanceSet[] = true
    ScaleProperties_instanceValue[] = value
end

function initFieldsScaleProperties(this::ScaleProperties)
    this.scaleX = 0.0f0
    this.scaleY = 0.0f0
    this.scaleWidth = Int32(0)
    this.scaleHeight = Int32(0)
    this.shouldScale = false
    this.scaleX = 0.0f0
    this.scaleY = 0.0f0
    this.scaleWidth = Int32(0)
    this.scaleHeight = Int32(0)
    this.shouldScale = false
    nothing
end

function initScaleProperties(this::ScaleProperties)
    initFieldsScaleProperties(this)
end

function newScaleProperties()
    this = ScaleProperties()
    initScaleProperties(this)
    this
end


function toString(this::ScaleProperties)
        return AllBinary.toString(AllBinary.appendint(AllBinary.append(AllBinary.appendint(AllBinary.append(AllBinary.appendfloat(AllBinary.append(AllBinary.appendfloat(AllBinary.append(AllBinary.appendboolean(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonLabels).COLON_SEP), this.shouldScale), "scaleX: "), this.scaleX), "scaleY: "), this.scaleY), "scaleWidth: "), this.scaleWidth), "scaleHeight: "), this.scaleHeight))
end

