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

mutable struct FormUtil <: JObject
    FormUtil() = new()
end

const FormUtil_instanceValue = Ref{Any}(nothing)
const FormUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{FormUtil})
    if !FormUtil_instanceSet[]
        FormUtil_instanceSet[] = true
        FormUtil_instanceValue[] = newFormUtil()
    end
    FormUtil_instanceValue[]
end
function staticSet_instance(::Type{FormUtil}, value)
    FormUtil_instanceSet[] = true
    FormUtil_instanceValue[] = value
end

function initFieldsFormUtil(this::FormUtil)
    nothing
end

function initFormUtil(this::FormUtil)
    initFieldsFormUtil(this)
end

function newFormUtil()
    this = FormUtil()
    initFormUtil(this)
    this
end


function getInstance(::Type{FormUtil})
        return staticGet_instance(FormUtil)
end


function createFormRectangle(this::FormUtil)
        local displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
        local pointFactory = AllBinary.getInstance(PointFactory)
        local rectangle = newRectangle(AllBinary.createXY(pointFactory, Int32(30), Int32(10)), AllBinary.getLastWidth(displayInfo) - Int32(30), AllBinary.getLastHeight(displayInfo) - Int32(35))
        return rectangle
end

