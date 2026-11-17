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

mutable struct BasicUserRoleFactory <: JObject
    INACTIVITYTIMEOUT::Int64
    CUSTOMERTIMEOUT::Int64
    CUSTOMERMAXSESSIONTIME::Int64
    MAXSESSIONTIME::Int64
    INSTALLER::Any
    ADMINISTRATOR::Any
    CUSTOMER::Any
    SUBSCRIBERCUSTOMER::Any
    WHOLESALECUSTOMER::Any
    STOREMANAGER::Any
    PRODUCTMANAGER::Any
    CUSTOMERMANAGER::Any
    PAYMENTMANAGER::Any
    ORDERMANAGER::Any
    WEBMANAGER::Any
    REVIEWER::Any
    SHIPPING::Any
    ADJUSTER::Any
    WORKFLOWEDITOR::Any
    WIZARD::Any
    VIEWEDITOR::Any
    BasicUserRoleFactory() = new()
end

const BasicUserRoleFactory_instanceValue = Ref{Any}(nothing)
const BasicUserRoleFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{BasicUserRoleFactory})
    if !BasicUserRoleFactory_instanceSet[]
        BasicUserRoleFactory_instanceSet[] = true
        BasicUserRoleFactory_instanceValue[] = newBasicUserRoleFactory()
    end
    BasicUserRoleFactory_instanceValue[]
end
function staticSet_instance(::Type{BasicUserRoleFactory}, value)
    BasicUserRoleFactory_instanceSet[] = true
    BasicUserRoleFactory_instanceValue[] = value
end

function initFieldsBasicUserRoleFactory(this::BasicUserRoleFactory)
    this.INACTIVITYTIMEOUT = Int64(0)
    this.CUSTOMERTIMEOUT = Int64(0)
    this.CUSTOMERMAXSESSIONTIME = Int64(0)
    this.MAXSESSIONTIME = Int64(0)
    this.INSTALLER = nothing
    this.ADMINISTRATOR = nothing
    this.CUSTOMER = nothing
    this.SUBSCRIBERCUSTOMER = nothing
    this.WHOLESALECUSTOMER = nothing
    this.STOREMANAGER = nothing
    this.PRODUCTMANAGER = nothing
    this.CUSTOMERMANAGER = nothing
    this.PAYMENTMANAGER = nothing
    this.ORDERMANAGER = nothing
    this.WEBMANAGER = nothing
    this.REVIEWER = nothing
    this.SHIPPING = nothing
    this.ADJUSTER = nothing
    this.WORKFLOWEDITOR = nothing
    this.WIZARD = nothing
    this.VIEWEDITOR = nothing
    this.INACTIVITYTIMEOUT = Int64(360000000)
    this.CUSTOMERTIMEOUT = Int64(360000000)
    this.CUSTOMERMAXSESSIONTIME = Int64(360000000)
    this.MAXSESSIONTIME = Int64(360000000)
    this.INSTALLER = newBasicUserRole("Installer", Int32(16), this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.ADMINISTRATOR = newBasicUserRole("Administrator", Int32(0), this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.CUSTOMER = newBasicUserRole("CustomerUser", "Customer User", Int32(1), this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME)
    this.SUBSCRIBERCUSTOMER = newBasicUserRole("SubscriberUser", "Subscriber User", Int32(2), this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME)
    this.WHOLESALECUSTOMER = newBasicUserRole("WholesaleUser", "Wholesale User", Int32(3), this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME)
    this.STOREMANAGER = newBasicUserRole("StoreManager", "Store Manager", Int32(4), this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.PRODUCTMANAGER = newBasicUserRole("ProductManager", "Product Manager", Int32(5), this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.CUSTOMERMANAGER = newBasicUserRole("UserManager", "User Manager", Int32(6), this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.PAYMENTMANAGER = newBasicUserRole("PaymentManager", "Payment Manager", Int32(7), this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.ORDERMANAGER = newBasicUserRole("OrderManager", "Order Manager", Int32(8), this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.WEBMANAGER = newBasicUserRole("WebManager", "Web Manager", Int32(9), this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.REVIEWER = newBasicUserRole("Reviewer", Int32(10), this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.SHIPPING = newBasicUserRole("Shipping", Int32(11), this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.ADJUSTER = newBasicUserRole("Adjuster", Int32(12), this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.WORKFLOWEDITOR = newBasicUserRole("WorkFlowEditor", "WorkFlow Editor", Int32(13), this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.WIZARD = newBasicUserRole("WizardUser", "Wizard User", Int32(14), this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.VIEWEDITOR = newBasicUserRole("ViewEditor", "View Editor", Int32(15), this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    nothing
end

function initBasicUserRoleFactory(this::BasicUserRoleFactory)
    initFieldsBasicUserRoleFactory(this)
end

function newBasicUserRoleFactory()
    this = BasicUserRoleFactory()
    initBasicUserRoleFactory(this)
    this
end


function getInstance(::Type{BasicUserRoleFactory})
        return staticGet_instance(BasicUserRoleFactory)
end

