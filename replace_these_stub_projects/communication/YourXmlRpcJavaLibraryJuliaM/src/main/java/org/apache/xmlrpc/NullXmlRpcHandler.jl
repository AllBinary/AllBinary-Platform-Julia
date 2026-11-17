#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.apache.xmlrpc

mutable struct NullXmlRpcHandler <: JObject
    NullXmlRpcHandler() = new()
end

const NullXmlRpcHandler_NULL_XML_RPC_HANDLERValue = Ref{Any}(nothing)
const NullXmlRpcHandler_NULL_XML_RPC_HANDLERSet = Ref(false)
function staticGet_NULL_XML_RPC_HANDLER(::Type{NullXmlRpcHandler})
    if !NullXmlRpcHandler_NULL_XML_RPC_HANDLERSet[]
        NullXmlRpcHandler_NULL_XML_RPC_HANDLERSet[] = true
        NullXmlRpcHandler_NULL_XML_RPC_HANDLERValue[] = newNullXmlRpcHandler()
    end
    NullXmlRpcHandler_NULL_XML_RPC_HANDLERValue[]
end
function staticSet_NULL_XML_RPC_HANDLER(::Type{NullXmlRpcHandler}, value)
    NullXmlRpcHandler_NULL_XML_RPC_HANDLERSet[] = true
    NullXmlRpcHandler_NULL_XML_RPC_HANDLERValue[] = value
end

function initFieldsNullXmlRpcHandler(this::NullXmlRpcHandler)
    nothing
end

function initNullXmlRpcHandler(this::NullXmlRpcHandler)
    initFieldsNullXmlRpcHandler(this)
end

function newNullXmlRpcHandler()
    this = NullXmlRpcHandler()
    initNullXmlRpcHandler(this)
    this
end


function execute(this::NullXmlRpcHandler, method, params)
        return AllBinary.getInstance(NullUtil).NULL_OBJECT
end

