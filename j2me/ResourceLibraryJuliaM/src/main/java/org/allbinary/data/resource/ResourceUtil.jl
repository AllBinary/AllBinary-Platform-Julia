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

#J2SE - J2ME
mutable struct ResourceUtil <: JObject
    logUtil::Any
    ResourceUtil() = new()
end

const ResourceUtil_classLoaderValue = Ref{Any}(nothing)
const ResourceUtil_classLoaderSet = Ref(false)
function staticGet_classLoader(::Type{ResourceUtil})
    if !ResourceUtil_classLoaderSet[]
        ResourceUtil_classLoaderSet[] = true
        ResourceUtil_classLoaderValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    ResourceUtil_classLoaderValue[]
end
function staticSet_classLoader(::Type{ResourceUtil}, value)
    ResourceUtil_classLoaderSet[] = true
    ResourceUtil_classLoaderValue[] = value
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


function setClassLoader(this::ResourceUtil, classLoader)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Resource Loader: "), jClassName(classLoader))), this, "setClassLoader")
        staticSet_classLoader(ResourceUtil, classLoader)
        nothing
end


function getResourceAsStream(this::ResourceUtil, resource)
        local inputStream = AllBinary.getResourceAsStreamAtStart(this, resource, Int32(2))
        if inputStream === nothing
            inputStream = AllBinary.getResourceAsStreamAtStart(this, resource, Int32(1))
            if inputStream === nothing
                throw(jNewException("Exception", AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Unable to obtain: "), resource))))
            end
        end
        return inputStream
end


function getResourceAsStreamAtStart(this::ResourceUtil, resource, startIndex)
        local commonSeps = AllBinary.getInstance(CommonSeps)
        local index::Int32 = jIndexOf(resource, commonSeps.COLON)
        local resourcePath = jSubstring(resource, index + startIndex)
        local inputStream = AllBinary.getResourceAsStream(jClassName(resource), resourcePath)
        if inputStream !== nothing
            return inputStream
        end
        local classLoader = (staticGet_classLoader(ResourceUtil))
        inputStream = AllBinary.getResourceAsStream(classLoader, resourcePath)
        if inputStream !== nothing
            return inputStream
        end
        inputStream = AllBinary.getResourceAsStream(AllBinary.getContextClassLoader(AllBinary.currentThread(Thread)), resourcePath)
        if inputStream !== nothing
            return inputStream
        end
        return inputStream
end


function addResource(this::ResourceUtil, resource, value)
        nothing
        nothing
end

