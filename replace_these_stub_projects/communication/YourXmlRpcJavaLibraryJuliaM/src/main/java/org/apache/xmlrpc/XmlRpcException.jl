# Generated Code Do Not Modify
# package org.apache.xmlrpc

# extends Exception: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct XmlRpcException <: JObject
    XmlRpcException() = new()
end


function initFieldsXmlRpcException(this::XmlRpcException)
    nothing
end


function initXmlRpcException(this::XmlRpcException, code, message)
        initException(this, message)
        nothing
end

function newXmlRpcException(code, message)
    this = XmlRpcException()
    initXmlRpcException(this, code, message)
    this
end

