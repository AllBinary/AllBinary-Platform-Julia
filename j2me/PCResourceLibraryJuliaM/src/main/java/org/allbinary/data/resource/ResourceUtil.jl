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

#J2SE - PC
mutable struct ResourceUtil <: JObject
    logUtil::Any
    path::Any
    ext::Any
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
    this.path = nothing
    this.ext = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.path = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.ext = AllBinary.getInstance(StringUtil).EMPTY_STRING
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
        this.path = path
        this.ext = ext
        nothing
end


function setClassLoader(this::ResourceUtil, classLoader)
        nothing
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
        local inputStream = newFileInputStream(AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(newStringMaker(), this.path), resource), this.ext)))
        if inputStream !== nothing
            local byteArray = jNewArray(Int8, AllBinary.available(inputStream), Int8(0))
            AllBinary.getByteArray(AllBinary.getInstance(StreamUtil), inputStream, newByteArrayOutputStream(), byteArray)
            return newByteArrayInputStream(byteArray)
        end
        return inputStream
end


function addResource(this::ResourceUtil, resource, value)
        nothing
        nothing
end

