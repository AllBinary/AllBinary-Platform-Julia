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
# package org.allbinary.logic.communication.xmlrpc

mutable struct XmlRpcAbeClient <: JObject
    logUtil::Any
    commonStrings::Any
    remoteMethod::Any
    clientInfo::Any
    client::Any
    server::Int32
    start::Int32
    maxServers::Int32
    isDone::Bool
    START_SERVER::Any
    TRYING::Any
    SEP::Any
    CLIENT_INFO::Any
    RESULT::Any
    INVALID::Any
    EXCEPTION_IN_CLIENT::Any
    SERVER_REPORTED_ERROR::Any
    UNKNOWN_ERROR::Any
    TRYING_OTHER_SERVERS::Any
    HOST_NOT_RESOLVED_MSG::Any
    HOST_NOT_RESOLVED::Any
    myRandomFactory::Any
    XmlRpcAbeClient() = new()
end

const XmlRpcAbeClient_isOnlineValue = Ref{Any}(nothing)
const XmlRpcAbeClient_isOnlineSet = Ref(false)
function staticGet_isOnline(::Type{XmlRpcAbeClient})
    if !XmlRpcAbeClient_isOnlineSet[]
        XmlRpcAbeClient_isOnlineSet[] = true
        XmlRpcAbeClient_isOnlineValue[] = true
    end
    XmlRpcAbeClient_isOnlineValue[]
end
function staticSet_isOnline(::Type{XmlRpcAbeClient}, value)
    XmlRpcAbeClient_isOnlineSet[] = true
    XmlRpcAbeClient_isOnlineValue[] = value
end

function initFieldsXmlRpcAbeClient(this::XmlRpcAbeClient)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.remoteMethod = nothing
    this.clientInfo = nothing
    this.client = nothing
    this.server = Int32(0)
    this.start = Int32(0)
    this.maxServers = Int32(0)
    this.isDone = false
    this.START_SERVER = nothing
    this.TRYING = nothing
    this.SEP = nothing
    this.CLIENT_INFO = nothing
    this.RESULT = nothing
    this.INVALID = nothing
    this.EXCEPTION_IN_CLIENT = nothing
    this.SERVER_REPORTED_ERROR = nothing
    this.UNKNOWN_ERROR = nothing
    this.TRYING_OTHER_SERVERS = nothing
    this.HOST_NOT_RESOLVED_MSG = nothing
    this.HOST_NOT_RESOLVED = nothing
    this.myRandomFactory = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    
    
    this.client = staticGet_NULL_XML_RPC_HANDLER(NullXmlRpcHandler)
    
    this.start = Int32(0)
    this.maxServers = Int32(0)
    
    this.START_SERVER = "Start With Server #"
    this.TRYING = "Trying Server #"
    this.SEP = AllBinary.getInstance(CommonLabels).COLON_SEP
    this.CLIENT_INFO = "Client Info: \n"
    this.RESULT = AllBinary.getInstance(CommonLabels).RESULT_ + AllBinary.getInstance(CommonSeps).NEW_LINE
    this.INVALID = "License data is Invalid Trying Other Servers"
    this.EXCEPTION_IN_CLIENT = "Exception in client"
    this.SERVER_REPORTED_ERROR = "Server reported error"
    this.UNKNOWN_ERROR = "Unknown License Retrieval Failure"
    this.TRYING_OTHER_SERVERS = "IOException Trying Other Servers"
    this.HOST_NOT_RESOLVED_MSG = "Not Trying Again Since Host Unresolved"
    this.HOST_NOT_RESOLVED = "Host is unresolved"
    this.myRandomFactory = AllBinary.getInstance(MyRandomFactory)
    nothing
end


function initXmlRpcAbeClient(this::XmlRpcAbeClient, clientInfo, remoteMethod)
        initFieldsXmlRpcAbeClient(this)
        this.remoteMethod = remoteMethod
        this.clientInfo = clientInfo
        if AllBinary.getNumberOfLicenseServers(clientInfo) > Int32(1)
            this.maxServers = AllBinary.getNumberOfLicenseServers(clientInfo) - Int32(2)
            this.start = AllBinary.getAbsoluteNextInt(this.myRandomFactory, this.maxServers) + Int32(1)
        elseif AllBinary.getNumberOfLicenseServers(clientInfo) == Int32(1)
            this.maxServers = Int32(0)
            this.start = Int32(0)
        end
        this.isDone = false
        this.server = this.start
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, this.START_SERVER)
        AllBinary.appendint(stringBuffer, AllBinary.getServer(this))
        AllBinary.append(stringBuffer, this.SEP)
        AllBinary.append(stringBuffer, AllBinary.getLicenseServer(clientInfo, AllBinary.getServer(this)))
        AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, this.commonStrings.CONSTRUCTOR)
        nothing
end

function newXmlRpcAbeClient(clientInfo, remoteMethod)
    this = XmlRpcAbeClient()
    initXmlRpcAbeClient(this, clientInfo, remoteMethod)
    this
end


function get(this::XmlRpcAbeClient, anyType)
        AllBinary.log(ForcedLogUtil, this.commonStrings.NOT_IMPLEMENTED, this)
        return AllBinary.getInstance(NullUtil).NULL_OBJECT
end


function tryAnother(this::XmlRpcAbeClient, anyType)
        if AllBinary.getServer(this) < AllBinary.getMaxServers(this)
            AllBinary.setServer(this, AllBinary.getServer(this) + Int32(1))
        else
            AllBinary.setServer(this, Int32(0))
        end
        if AllBinary.getServer(this) != AllBinary.getStart(this) && !AllBinary.isIsDone(this)
            return AllBinary.get(this, anyType)
        else
            AllBinary.setIsDone(this, true)
        end
        throw(jNewException("Exception", "Tried All Servers But Still Failed"))
end


function getClientInfo(this::XmlRpcAbeClient)
        return this.clientInfo
end


function getClient(this::XmlRpcAbeClient)
        return this.client
end


function setClient(this::XmlRpcAbeClient, client)
        this.client = client
        nothing
end


function getServer(this::XmlRpcAbeClient)
        return this.server
end


function setServer(this::XmlRpcAbeClient, server)
        this.server = server
        nothing
end


function getStart(this::XmlRpcAbeClient)
        return this.start
end


function setStart(this::XmlRpcAbeClient, start)
        this.start = start
        nothing
end


function getMaxServers(this::XmlRpcAbeClient)
        return this.maxServers
end


function setMaxServers(this::XmlRpcAbeClient, maxServers)
        this.maxServers = maxServers
        nothing
end


function isIsDone(this::XmlRpcAbeClient)
        return this.isDone
end


function setIsDone(this::XmlRpcAbeClient, isDone)
        this.isDone = isDone
        nothing
end


function getRemoteMethod(this::XmlRpcAbeClient)
        return this.remoteMethod
end

