# Generated Code Do Not Modify
# package org.apache.xmlrpc

mutable struct XmlRpcClient <: JObject
    url::Any
    XmlRpcClient() = new()
end


function initFieldsXmlRpcClient(this::XmlRpcClient)
    this.url = nothing
    
    nothing
end


function initXmlRpcClient(this::XmlRpcClient, url)
        initFieldsXmlRpcClient(this)
        this.url = newURL(url)
        nothing
end

function newXmlRpcClient(url)
    this = XmlRpcClient()
    initXmlRpcClient(this, url)
    this
end


function getURL(this::XmlRpcClient)
        return this.url
end


function setBasicAuthentication(this::XmlRpcClient, user, password)
        nothing
        nothing
end


function execute(this::XmlRpcClient, method, params)
        return AllBinary.getInstance(NullUtil).NULL_OBJECT
end


function executeWithCrypt(this::XmlRpcClient, method, params, cryptInterface)
        return AllBinary.getInstance(NullUtil).NULL_OBJECT
end

