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

mutable struct StoreRoleFactory <: JObject
    roles::Any
    subscriberRoles::Any
    wholesaleRoles::Any
    StoreRoleFactory() = new()
end

const StoreRoleFactory_instanceValue = Ref{Any}(nothing)
const StoreRoleFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{StoreRoleFactory})
    if !StoreRoleFactory_instanceSet[]
        StoreRoleFactory_instanceSet[] = true
        StoreRoleFactory_instanceValue[] = newStoreRoleFactory()
    end
    StoreRoleFactory_instanceValue[]
end
function staticSet_instance(::Type{StoreRoleFactory}, value)
    StoreRoleFactory_instanceSet[] = true
    StoreRoleFactory_instanceValue[] = value
end

function initFieldsStoreRoleFactory(this::StoreRoleFactory)
    this.roles = nothing
    this.subscriberRoles = nothing
    this.wholesaleRoles = nothing
    this.roles = newBasicArrayListD()
    this.subscriberRoles = newBasicArrayListD()
    this.wholesaleRoles = newBasicArrayListD()
    nothing
end


function getInstance(::Type{StoreRoleFactory})
        return staticGet_instance(StoreRoleFactory)
end


function initStoreRoleFactory(this::StoreRoleFactory)
        initFieldsStoreRoleFactory(this)
        local basicUserRoleFactory = AllBinary.getInstance(BasicUserRoleFactory)
        AllBinary.add(this.roles, basicUserRoleFactory.CUSTOMER)
        AllBinary.add(this.roles, basicUserRoleFactory.SUBSCRIBERCUSTOMER)
        AllBinary.add(this.roles, basicUserRoleFactory.WHOLESALECUSTOMER)
        AllBinary.add(this.subscriberRoles, basicUserRoleFactory.SUBSCRIBERCUSTOMER)
        AllBinary.add(this.wholesaleRoles, basicUserRoleFactory.WHOLESALECUSTOMER)
        nothing
end

function newStoreRoleFactory()
    this = StoreRoleFactory()
    initStoreRoleFactory(this)
    this
end


function getRoles(this::StoreRoleFactory)
        return this.roles
end


function getSubscriberRoles(this::StoreRoleFactory)
        return this.subscriberRoles
end


function getWholesaleRoles(this::StoreRoleFactory)
        return this.wholesaleRoles
end

