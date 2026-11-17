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
# package org.allbinary.data.resource

#J2ME
mutable struct ResourceUtil <: JObject
    logUtil::Any
    ResourceUtil() = new()
end

const ResourceUtil_instanceValue = Ref{Any}(nothing)
const ResourceUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{ResourceUtil})
    if !ResourceUtil_instanceSet[]
        ResourceUtil_instanceSet[] = true
        ResourceUtil_instanceValue[] = newResourceUtil()
    end
    ResourceUtil_instanceValue[]
end
function staticSet_instance(::Type{ResourceUtil}, value)
    ResourceUtil_instanceSet[] = true
    ResourceUtil_instanceValue[] = value
end

function initFieldsResourceUtil(this::ResourceUtil)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end


function getInstance(::Type{ResourceUtil})
        return staticGet_instance(ResourceUtil)
end


function initResourceUtil(this::ResourceUtil)
        initFieldsResourceUtil(this)
        nothing
        nothing
end

function newResourceUtil()
    this = ResourceUtil()
    initResourceUtil(this)
    this
end


function setLoadingPaths(this::ResourceUtil, path, ext)
        AllBinary.putF(this.logUtil, AllBinary.getInstance(CommonStrings).NOT_IMPLEMENTED, this, "setLoadingPaths")
        nothing
end


function getResourceAsStream(this::ResourceUtil, resource)
        local inputStream = AllBinary.getResourceAsStream(jClassName(resource), resource)
        if inputStream === nothing
            inputStream = AllBinary.getResourceAsStreamAtStart(this, resource, Int32(2))
            if inputStream === nothing
                inputStream = AllBinary.getResourceAsStreamAtStart(this, resource, Int32(1))
                if inputStream === nothing
                    local stringMaker = newStringMaker()
                    local index::Int32 = jLastIndexOf(resource, UInt16('/'))
                    local resourcePath = jSubstring(resource, index + Int32(1))
                    inputStream = AllBinary.getResourceAsStream(jClassName(resource), resourcePath)
                    if inputStream === nothing
                        resourcePath = jSubstring(resource, index)
                        inputStream = AllBinary.getResourceAsStream(jClassName(resource), resourcePath)
                        if inputStream === nothing
                            local RES = "res"
                            resourcePath = AllBinary.toString(AllBinary.append(AllBinary.append(stringMaker, RES), jSubstring(resource, index)))
                            inputStream = AllBinary.getResourceAsStream(jClassName(resource), resourcePath)
                            if inputStream === nothing
                                AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                                resourcePath = AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(stringMaker, "/"), RES), jSubstring(resource, index)))
                                inputStream = AllBinary.getResourceAsStream(jClassName(resource), resourcePath)
                                local COLON = AllBinary.getInstance(CommonSeps).COLON
                                if inputStream === nothing
                                    AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                                    resourcePath = AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(stringMaker, RES), COLON), jSubstring(resource, index)))
                                    inputStream = AllBinary.getResourceAsStream(jClassName(resource), resourcePath)
                                    if inputStream === nothing
                                        AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                                        resourcePath = AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(stringMaker, RES), COLON), jSubstring(resource, index + Int32(1))))
                                        inputStream = AllBinary.getResourceAsStream(jClassName(resource), resourcePath)
                                        if inputStream === nothing
                                            local RESOURCE_STRING = "resource"
                                            AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                                            resourcePath = AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(stringMaker, RESOURCE_STRING), COLON), jSubstring(resource, index)))
                                            inputStream = AllBinary.getResourceAsStream(jClassName(resource), resourcePath)
                                            if inputStream === nothing
                                                AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                                                resourcePath = AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(stringMaker, RESOURCE_STRING), COLON), jSubstring(resource, index + Int32(1))))
                                                inputStream = AllBinary.getResourceAsStream(jClassName(resource), resourcePath)
                                                if inputStream === nothing
                                                    AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                                                    throw(jNewException("Exception", AllBinary.toString(AllBinary.append(AllBinary.append(stringMaker, "Unable to obtain: "), resource))))
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        return inputStream
end


function getResourceAsStreamAtStart(this::ResourceUtil, resource, startIndex)
        local stringMaker = newStringMaker()
        local index::Int32 = jIndexOf(resource, AllBinary.getInstance(CommonSeps).COLON)
        local resourcePath = jSubstring(resource, index + startIndex)
        local inputStream = AllBinary.getResourceAsStream(jClassName(resource), resourcePath)
        if inputStream !== nothing
            return inputStream
        end
        return inputStream
end


function addResource(this::ResourceUtil, resource, value)
        nothing
        nothing
end

