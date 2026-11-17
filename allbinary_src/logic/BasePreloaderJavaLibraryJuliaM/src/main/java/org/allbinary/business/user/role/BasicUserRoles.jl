#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.business.user.role

mutable struct BasicUserRoles <: JObject
    roleVector::Any
    BasicUserRoles() = new()
end

const BasicUserRoles_instanceValue = Ref{Any}(nothing)
const BasicUserRoles_instanceSet = Ref(false)
function staticGet_instance(::Type{BasicUserRoles})
    if !BasicUserRoles_instanceSet[]
        BasicUserRoles_instanceSet[] = true
        BasicUserRoles_instanceValue[] = newBasicUserRoles()
    end
    BasicUserRoles_instanceValue[]
end
function staticSet_instance(::Type{BasicUserRoles}, value)
    BasicUserRoles_instanceSet[] = true
    BasicUserRoles_instanceValue[] = value
end

function initFieldsBasicUserRoles(this::BasicUserRoles)
    this.roleVector = nothing
    this.roleVector = newBasicArrayListD()
    nothing
end

function initBasicUserRoles(this::BasicUserRoles)
    initFieldsBasicUserRoles(this)
end

function newBasicUserRoles()
    this = BasicUserRoles()
    initBasicUserRoles(this)
    this
end


function getInstance(::Type{BasicUserRoles})
        return staticGet_instance(BasicUserRoles)
end


function getRole(this::BasicUserRoles, role)
        local roleVector = AllBinary.getAll(this)
        local size::Int32 = AllBinary.size(roleVector)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            local userRole = (AllBinary.get(roleVector, index))
            if jCompareTo(role, AllBinary.toString(userRole)) == Int32(0)
                return userRole
            end
            finally
                index += Int32(1)
            end
            end
        end
        throw(jNewException("Exception", "Unable to get role - Unknown Role"))
end


function getAll(this::BasicUserRoles)
        return this.roleVector
end

