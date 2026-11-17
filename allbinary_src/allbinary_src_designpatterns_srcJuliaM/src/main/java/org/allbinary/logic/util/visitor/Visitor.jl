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
# package org.allbinary.logic.util.visitor

mutable struct Visitor <: JObject
    nullUtil::Any
    Visitor() = new()
end

const Visitor_instanceValue = Ref{Any}(nothing)
const Visitor_instanceSet = Ref(false)
function staticGet_instance(::Type{Visitor})
    if !Visitor_instanceSet[]
        Visitor_instanceSet[] = true
        Visitor_instanceValue[] = newVisitor()
    end
    Visitor_instanceValue[]
end
function staticSet_instance(::Type{Visitor}, value)
    Visitor_instanceSet[] = true
    Visitor_instanceValue[] = value
end

function initFieldsVisitor(this::Visitor)
    this.nullUtil = nothing
    this.nullUtil = AllBinary.getInstance(NullUtil)
    nothing
end

function initVisitor(this::Visitor)
    initFieldsVisitor(this)
end

function newVisitor()
    this = Visitor()
    initVisitor(this)
    this
end


function visit(this::Visitor, anyType)
        return this.nullUtil.NULL_OBJECT
end


function getInstance(::Type{Visitor})
        return staticGet_instance(Visitor)
end

