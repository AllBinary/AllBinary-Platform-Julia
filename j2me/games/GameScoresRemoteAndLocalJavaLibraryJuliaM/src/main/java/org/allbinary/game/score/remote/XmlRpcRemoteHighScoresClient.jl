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
# package org.allbinary.game.score.remote

# extends XmlRpcAbeClient: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct XmlRpcRemoteHighScoresClient <: JObject
    logUtil::Any
    page::Any
    XmlRpcRemoteHighScoresClient() = new()
end


function initFieldsXmlRpcRemoteHighScoresClient(this::XmlRpcRemoteHighScoresClient)
    this.logUtil = nothing
    this.page = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    nothing
end


function initXmlRpcRemoteHighScoresClient(this::XmlRpcRemoteHighScoresClient, clientInfo, page, remoteMethod)
        initXmlRpcAbeClient(this, clientInfo, remoteMethod)
        initFieldsXmlRpcRemoteHighScoresClient(this)
        this.page = page
        AllBinary.setServer(this, Int32(0))
        nothing
end

function newXmlRpcRemoteHighScoresClient(clientInfo, page, remoteMethod)
    this = XmlRpcRemoteHighScoresClient()
    initXmlRpcRemoteHighScoresClient(this, clientInfo, page, remoteMethod)
    this
end


function get(this::XmlRpcRemoteHighScoresClient, anyType, cryptInterface)
        try
            local param = newBasicArrayListD()
            local serverUrl = AllBinary.getLicenseServer(AllBinary.getClientInfo(this), AllBinary.getServer(this))
            local index::Int32 = jLastIndexOf(serverUrl, UInt16('/'))
            serverUrl = jstr(jSubstring(serverUrl, Int32(0), index + Int32(1))) * jstr(this.page)
            local stringBuffer = newStringMaker()
            AllBinary.append(stringBuffer, staticGet_TRYING(XmlRpcAbeClient))
            AllBinary.appendint(stringBuffer, ((AllBinary.getServer(this)) % Int32))
            AllBinary.append(stringBuffer, SEP)
            AllBinary.append(stringBuffer, serverUrl)
            AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, this.commonStrings.GET)
            local xmlRpcClient = newXmlRpcClient(serverUrl)
            AllBinary.setClient(this, xmlRpcClient)
            AllBinary.setBasicAuthentication(xmlRpcClient, AllBinary.getInstance(StringUtil).EMPTY_STRING, AllBinary.getInstance(StringUtil).EMPTY_STRING)
            local hashtable = (anyType)
            AllBinary.putF(this.logUtil, jstr(staticGet_CLIENT_INFO(XmlRpcAbeClient)) * jstr(AllBinary.toString(hashtable)), this, this.commonStrings.GET)
            AllBinary.add(param, hashtable)
            local result = AllBinary.executeWithCrypt(xmlRpcClient, AllBinary.getRemoteMethod(this), param, cryptInterface)
            AllBinary.putF(this.logUtil, jstr(staticGet_RESULT(XmlRpcAbeClient)) * jstr(AllBinary.toString(result)), this, this.commonStrings.GET)
            this.isOnline = true
            return result
        catch e
            AllBinary.put(this.logUtil, staticGet_TRYING_OTHER_SERVERS(XmlRpcAbeClient) + AllBinary.getStackTrace(AllBinary.getInstance(ExceptionUtil), e), this, this.commonStrings.GET, e)
            if !AllBinary.startsWith(AllBinary.getMessage(e), staticGet_HOST_NOT_RESOLVED(XmlRpcAbeClient))
                return AllBinary.tryAnother(this, anyType)
            else
                throw(jNewException("Exception", staticGet_HOST_NOT_RESOLVED_MSG(XmlRpcAbeClient)))
            end
        end
end

