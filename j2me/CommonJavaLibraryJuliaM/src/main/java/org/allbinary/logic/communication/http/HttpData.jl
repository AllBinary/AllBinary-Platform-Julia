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
# package org.allbinary.logic.communication.http

mutable struct HttpData <: JObject
    EQUALS::Any
    PARAM_SEP::Any
    URL_PARAM_SEP::Any
    URL_LABEL::Any
    HttpData() = new()
end

const HttpData_instanceValue = Ref{Any}(nothing)
const HttpData_instanceSet = Ref(false)
function staticGet_instance(::Type{HttpData})
    if !HttpData_instanceSet[]
        HttpData_instanceSet[] = true
        HttpData_instanceValue[] = newHttpData()
    end
    HttpData_instanceValue[]
end
function staticSet_instance(::Type{HttpData}, value)
    HttpData_instanceSet[] = true
    HttpData_instanceValue[] = value
end

function initFieldsHttpData(this::HttpData)
    this.EQUALS = nothing
    this.PARAM_SEP = nothing
    this.URL_PARAM_SEP = nothing
    this.URL_LABEL = nothing
    
    
    
    this.URL_LABEL = "Url: "
    nothing
end


function getInstance(::Type{HttpData})
        return staticGet_instance(HttpData)
end


function initHttpData(this::HttpData)
        initFieldsHttpData(this)
        local commonSeps = AllBinary.getInstance(CommonSeps)
        this.EQUALS = commonSeps.EQUALS
        this.PARAM_SEP = commonSeps.AMPERSAND
        this.URL_PARAM_SEP = commonSeps.QUESTION
        nothing
end

function newHttpData()
    this = HttpData()
    initHttpData(this)
    this
end

