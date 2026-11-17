#=
  
  To change this license header, choose License Headers in Project Properties. 
  To change this template file, choose Tools | Templates 
  and open the template in the editor.  
=#
# Generated Code Do Not Modify
# package org.allbinary.logic.system.security.licensing

mutable struct InApplicationPurchaseFactory <: JObject
    InApplicationPurchaseFactory() = new()
end

const InApplicationPurchaseFactory_instanceValue = Ref{Any}(nothing)
const InApplicationPurchaseFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{InApplicationPurchaseFactory})
    if !InApplicationPurchaseFactory_instanceSet[]
        InApplicationPurchaseFactory_instanceSet[] = true
        InApplicationPurchaseFactory_instanceValue[] = newInApplicationPurchaseFactory()
    end
    InApplicationPurchaseFactory_instanceValue[]
end
function staticSet_instance(::Type{InApplicationPurchaseFactory}, value)
    InApplicationPurchaseFactory_instanceSet[] = true
    InApplicationPurchaseFactory_instanceValue[] = value
end

function initFieldsInApplicationPurchaseFactory(this::InApplicationPurchaseFactory)
    nothing
end


function getInstance(::Type{InApplicationPurchaseFactory})
        return staticGet_instance(InApplicationPurchaseFactory)
end


function initInApplicationPurchaseFactory(this::InApplicationPurchaseFactory)
        initFieldsInApplicationPurchaseFactory(this)
        nothing
        nothing
end

function newInApplicationPurchaseFactory()
    this = InApplicationPurchaseFactory()
    initInApplicationPurchaseFactory(this)
    this
end


function init(this::InApplicationPurchaseFactory, anyType, stateObject)
        nothing
        nothing
end


function onCreate(this::InApplicationPurchaseFactory, anyType, stateObject)
        nothing
        nothing
end


function onStart(this::InApplicationPurchaseFactory)
        nothing
        nothing
end


function onResult(this::InApplicationPurchaseFactory, requestCode, resultCode, data)
        nothing
        nothing
end


function onSaveState(this::InApplicationPurchaseFactory, anyType)
        nothing
        nothing
end


function onStop(this::InApplicationPurchaseFactory)
        nothing
        nothing
end


function onDestroy(this::InApplicationPurchaseFactory)
        nothing
        nothing
end


function purchase(this::InApplicationPurchaseFactory, lockableFeature)
        nothing
        nothing
end


function isPurchased(this::InApplicationPurchaseFactory, lockableFeature)
        return true
end


function add(this::InApplicationPurchaseFactory, lockableFeature)
        nothing
        nothing
end


function getUserName(this::InApplicationPurchaseFactory)
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end


function isEnabled(this::InApplicationPurchaseFactory)
        return false
end

