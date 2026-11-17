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
# package org.allbinary.graphics

mutable struct RelativeRelationship <: JObject
    typesAllowedList::Any
    x::Int32
    y::Int32
    z::Int32
    RelativeRelationship() = new()
end

const RelativeRelationship_NULL_RELATIVE_RELATIONSHIPValue = Ref{Any}(nothing)
const RelativeRelationship_NULL_RELATIVE_RELATIONSHIPSet = Ref(false)
function staticGet_NULL_RELATIVE_RELATIONSHIP(::Type{RelativeRelationship})
    if !RelativeRelationship_NULL_RELATIVE_RELATIONSHIPSet[]
        RelativeRelationship_NULL_RELATIVE_RELATIONSHIPSet[] = true
        RelativeRelationship_NULL_RELATIVE_RELATIONSHIPValue[] = newRelativeRelationship(AllBinary.getInstance(PointFactory).ZERO_ZERO, AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil)))
    end
    RelativeRelationship_NULL_RELATIVE_RELATIONSHIPValue[]
end
function staticSet_NULL_RELATIVE_RELATIONSHIP(::Type{RelativeRelationship}, value)
    RelativeRelationship_NULL_RELATIVE_RELATIONSHIPSet[] = true
    RelativeRelationship_NULL_RELATIVE_RELATIONSHIPValue[] = value
end

function initFieldsRelativeRelationship(this::RelativeRelationship)
    this.typesAllowedList = nothing
    this.x = Int32(0)
    this.y = Int32(0)
    this.z = Int32(0)
    
    
    
    
    nothing
end


function initRelativeRelationship(this::RelativeRelationship, point, typesAllowedList)
        initFieldsRelativeRelationship(this)
        this.x = AllBinary.getX(point)
        this.y = AllBinary.getY(point)
        this.z = AllBinary.getZ(point)
        this.typesAllowedList = typesAllowedList
        nothing
end

function newRelativeRelationship(point, typesAllowedList)
    this = RelativeRelationship()
    initRelativeRelationship(this, point, typesAllowedList)
    this
end


function getX(this::RelativeRelationship)
        return this.x
end


function getY(this::RelativeRelationship)
        return this.y
end


function getZ(this::RelativeRelationship)
        return this.z
end


function getTypesAllowedList(this::RelativeRelationship)
        return this.typesAllowedList
end


function setTypesAllowedList(this::RelativeRelationship, typesAllowedList)
        this.typesAllowedList = typesAllowedList
        nothing
end

