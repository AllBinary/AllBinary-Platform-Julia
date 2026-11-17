#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.logic.system.security.licensing

mutable struct ClientInformationFactory <: JObject
    ClientInformationFactory() = new()
end


function initFieldsClientInformationFactory(this::ClientInformationFactory)
    nothing
end

function initClientInformationFactory(this::ClientInformationFactory)
    initFieldsClientInformationFactory(this)
end

function newClientInformationFactory()
    this = ClientInformationFactory()
    initClientInformationFactory(this)
    this
end


function getInstance(this::ClientInformationFactory)
        local logUtil = AllBinary.getInstance(LogUtil)
        local commonStrings = AllBinary.getInstance(CommonStrings)
        AllBinary.putF(logUtil, commonStrings.NOT_IMPLEMENTED, this, commonStrings.GET_INSTANCE)
        local stringUtil = AllBinary.getInstance(StringUtil)
        return newClientInformation(stringUtil.NULL_STRING, stringUtil.NULL_STRING, stringUtil.NULL_STRING, stringUtil.NULL_STRING)
end

