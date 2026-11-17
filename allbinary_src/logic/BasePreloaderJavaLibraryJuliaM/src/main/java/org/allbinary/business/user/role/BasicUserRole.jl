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
# package org.allbinary.business.user.role

mutable struct BasicUserRole <: JObject
    m_int_RoleId::Int32
    role::Any
    displayValue::Any
    sessionTimeout::Int64
    sessionInactivityTimeout::Int64
    BasicUserRole() = new()
end


function initFieldsBasicUserRole(this::BasicUserRole)
    this.m_int_RoleId = Int32(0)
    this.role = nothing
    this.displayValue = nothing
    this.sessionTimeout = Int64(0)
    this.sessionInactivityTimeout = Int64(0)
    
    
    
    
    
    nothing
end


function initBasicUserRole(this::BasicUserRole, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout)
        initBasicUserRole(this, aRole, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout)
        nothing
end

function newBasicUserRole(aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout)
    this = BasicUserRole()
    initBasicUserRole(this, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout)
    this
end


function initBasicUserRole(this::BasicUserRole, aRole, aDisplayValue, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout)
        initFieldsBasicUserRole(this)
        this.m_int_RoleId = a_int_RoleId
        this.role = aRole
        this.displayValue = aDisplayValue
        this.sessionTimeout = aSessionTimeout
        this.sessionInactivityTimeout = aSessionInactivityTimeout
        AllBinary.add(AllBinary.getInstance(BasicUserRoles).roleVector, this)
        nothing
end

function newBasicUserRole(aRole, aDisplayValue, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout)
    this = BasicUserRole()
    initBasicUserRole(this, aRole, aDisplayValue, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout)
    this
end


function getRoleId(this::BasicUserRole)
        return this.m_int_RoleId
end


function getRole(this::BasicUserRole)
        return this.role
end


function getSessionTimeout(this::BasicUserRole)
        return this.sessionTimeout
end


function getSessionInactivityTimeout(this::BasicUserRole)
        return this.sessionInactivityTimeout
end


function equals(this::BasicUserRole, basicUserRole)
        if AllBinary.getRoleId(this) == AllBinary.getRoleId(basicUserRole)
            return true
        end
        return false
end


function toString(this::BasicUserRole)
        return AllBinary.getRole(this)
end

