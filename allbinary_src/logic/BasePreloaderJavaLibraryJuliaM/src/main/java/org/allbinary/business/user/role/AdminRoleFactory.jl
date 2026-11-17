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

mutable struct AdminRoleFactory <: JObject
    adminRoles::Any
    storeAdminRoles::Any
    storeManagementRoles::Any
    productManagementRoles::Any
    reviewManagementRoles::Any
    customerManagementRoles::Any
    workflowManagementRoles::Any
    orderManagementRoles::Any
    adjusterManagementRoles::Any
    shippingManagementRoles::Any
    webManagementRoles::Any
    AdminRoleFactory() = new()
end

const AdminRoleFactory_instanceValue = Ref{Any}(nothing)
const AdminRoleFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{AdminRoleFactory})
    if !AdminRoleFactory_instanceSet[]
        AdminRoleFactory_instanceSet[] = true
        AdminRoleFactory_instanceValue[] = newAdminRoleFactory()
    end
    AdminRoleFactory_instanceValue[]
end
function staticSet_instance(::Type{AdminRoleFactory}, value)
    AdminRoleFactory_instanceSet[] = true
    AdminRoleFactory_instanceValue[] = value
end

function initFieldsAdminRoleFactory(this::AdminRoleFactory)
    this.adminRoles = nothing
    this.storeAdminRoles = nothing
    this.storeManagementRoles = nothing
    this.productManagementRoles = nothing
    this.reviewManagementRoles = nothing
    this.customerManagementRoles = nothing
    this.workflowManagementRoles = nothing
    this.orderManagementRoles = nothing
    this.adjusterManagementRoles = nothing
    this.shippingManagementRoles = nothing
    this.webManagementRoles = nothing
    this.adminRoles = newBasicArrayListD()
    this.storeAdminRoles = newBasicArrayListD()
    this.storeManagementRoles = newBasicArrayListD()
    this.productManagementRoles = newBasicArrayListD()
    this.reviewManagementRoles = newBasicArrayListD()
    this.customerManagementRoles = newBasicArrayListD()
    this.workflowManagementRoles = newBasicArrayListD()
    this.orderManagementRoles = newBasicArrayListD()
    this.adjusterManagementRoles = newBasicArrayListD()
    this.shippingManagementRoles = newBasicArrayListD()
    this.webManagementRoles = newBasicArrayListD()
    nothing
end


function getInstance(::Type{AdminRoleFactory})
        return staticGet_instance(AdminRoleFactory)
end


function initAdminRoleFactory(this::AdminRoleFactory)
        initFieldsAdminRoleFactory(this)
        local basicUserRoleFactory = AllBinary.getInstance(BasicUserRoleFactory)
        AllBinary.add(this.adminRoles, basicUserRoleFactory.ADMINISTRATOR)
        AllBinary.add(this.storeAdminRoles, basicUserRoleFactory.ADMINISTRATOR)
        AllBinary.add(this.storeAdminRoles, basicUserRoleFactory.STOREMANAGER)
        AllBinary.add(this.storeManagementRoles, basicUserRoleFactory.ADMINISTRATOR)
        AllBinary.add(this.storeManagementRoles, basicUserRoleFactory.STOREMANAGER)
        AllBinary.add(this.storeManagementRoles, basicUserRoleFactory.CUSTOMERMANAGER)
        AllBinary.add(this.storeManagementRoles, basicUserRoleFactory.ADJUSTER)
        AllBinary.add(this.storeManagementRoles, basicUserRoleFactory.PRODUCTMANAGER)
        AllBinary.add(this.storeManagementRoles, basicUserRoleFactory.REVIEWER)
        AllBinary.add(this.storeManagementRoles, basicUserRoleFactory.SHIPPING)
        AllBinary.add(this.productManagementRoles, basicUserRoleFactory.ADMINISTRATOR)
        AllBinary.add(this.productManagementRoles, basicUserRoleFactory.STOREMANAGER)
        AllBinary.add(this.productManagementRoles, basicUserRoleFactory.PRODUCTMANAGER)
        AllBinary.add(this.reviewManagementRoles, basicUserRoleFactory.ADMINISTRATOR)
        AllBinary.add(this.reviewManagementRoles, basicUserRoleFactory.STOREMANAGER)
        AllBinary.add(this.reviewManagementRoles, basicUserRoleFactory.REVIEWER)
        AllBinary.add(this.customerManagementRoles, basicUserRoleFactory.ADMINISTRATOR)
        AllBinary.add(this.customerManagementRoles, basicUserRoleFactory.STOREMANAGER)
        AllBinary.add(this.customerManagementRoles, basicUserRoleFactory.CUSTOMERMANAGER)
        AllBinary.add(this.workflowManagementRoles, basicUserRoleFactory.ADMINISTRATOR)
        AllBinary.add(this.workflowManagementRoles, basicUserRoleFactory.STOREMANAGER)
        AllBinary.add(this.workflowManagementRoles, basicUserRoleFactory.WORKFLOWEDITOR)
        AllBinary.add(this.orderManagementRoles, basicUserRoleFactory.ADMINISTRATOR)
        AllBinary.add(this.orderManagementRoles, basicUserRoleFactory.STOREMANAGER)
        AllBinary.add(this.adjusterManagementRoles, basicUserRoleFactory.ADMINISTRATOR)
        AllBinary.add(this.adjusterManagementRoles, basicUserRoleFactory.STOREMANAGER)
        AllBinary.add(this.adjusterManagementRoles, basicUserRoleFactory.ADJUSTER)
        AllBinary.add(this.shippingManagementRoles, basicUserRoleFactory.ADMINISTRATOR)
        AllBinary.add(this.shippingManagementRoles, basicUserRoleFactory.STOREMANAGER)
        AllBinary.add(this.shippingManagementRoles, basicUserRoleFactory.SHIPPING)
        AllBinary.add(this.webManagementRoles, basicUserRoleFactory.ADMINISTRATOR)
        AllBinary.add(this.webManagementRoles, basicUserRoleFactory.STOREMANAGER)
        AllBinary.add(this.webManagementRoles, basicUserRoleFactory.WEBMANAGER)
        AllBinary.add(this.webManagementRoles, basicUserRoleFactory.WORKFLOWEDITOR)
        AllBinary.add(this.webManagementRoles, basicUserRoleFactory.VIEWEDITOR)
        nothing
end

function newAdminRoleFactory()
    this = AdminRoleFactory()
    initAdminRoleFactory(this)
    this
end


function getProductManagementRoles(this::AdminRoleFactory)
        return this.productManagementRoles
end


function getAdminRoles(this::AdminRoleFactory)
        return this.adminRoles
end


function getStoreAdminRoles(this::AdminRoleFactory)
        return this.storeAdminRoles
end


function getStoreManagementRoles(this::AdminRoleFactory)
        return this.storeManagementRoles
end


function getReviewManagementRoles(this::AdminRoleFactory)
        return this.reviewManagementRoles
end


function getCustomerManagementRoles(this::AdminRoleFactory)
        return this.customerManagementRoles
end


function getWorkflowManagementRoles(this::AdminRoleFactory)
        return this.workflowManagementRoles
end


function getWebManagementRoles(this::AdminRoleFactory)
        return this.webManagementRoles
end


function getShippingManagementRoles(this::AdminRoleFactory)
        return this.shippingManagementRoles
end


function getAdjusterManagementRoles(this::AdminRoleFactory)
        return this.adjusterManagementRoles
end


function getOrderManagementRoles(this::AdminRoleFactory)
        return this.orderManagementRoles
end

