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
# package org.allbinary.logic.system.security.licensing

mutable struct PartnerIdentifierFileUtil <: JObject
    logUtil::Any
    FILE_NAME::Any
    PartnerIdentifierFileUtil() = new()
end

const PartnerIdentifierFileUtil_instanceValue = Ref{Any}(nothing)
const PartnerIdentifierFileUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{PartnerIdentifierFileUtil})
    if !PartnerIdentifierFileUtil_instanceSet[]
        PartnerIdentifierFileUtil_instanceSet[] = true
        PartnerIdentifierFileUtil_instanceValue[] = newPartnerIdentifierFileUtil()
    end
    PartnerIdentifierFileUtil_instanceValue[]
end
function staticSet_instance(::Type{PartnerIdentifierFileUtil}, value)
    PartnerIdentifierFileUtil_instanceSet[] = true
    PartnerIdentifierFileUtil_instanceValue[] = value
end

function initFieldsPartnerIdentifierFileUtil(this::PartnerIdentifierFileUtil)
    this.logUtil = nothing
    this.FILE_NAME = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.FILE_NAME = "partner.txt"
    nothing
end

function initPartnerIdentifierFileUtil(this::PartnerIdentifierFileUtil)
    initFieldsPartnerIdentifierFileUtil(this)
end

function newPartnerIdentifierFileUtil()
    this = PartnerIdentifierFileUtil()
    initPartnerIdentifierFileUtil(this)
    this
end


function getInstance(::Type{PartnerIdentifierFileUtil})
        return staticGet_instance(PartnerIdentifierFileUtil)
end


function get(this::PartnerIdentifierFileUtil)
        try
            local resourceUtil = AllBinary.getInstance(ResourceUtil)
            local partnerString = AllBinary.getInstance(StringUtil).EMPTY_STRING
            return partnerString
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.GET, e)
            return AllBinary.getInstance(StringUtil).NULL_STRING
        end
end

