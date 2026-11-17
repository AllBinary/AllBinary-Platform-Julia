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
# package org.allbinary.logic.java

mutable struct FileExtensionData <: JObject
    DOT_JAVA_SOURCE::Any
    JAVA_SOURCE::Any
    FileExtensionData() = new()
end

const FileExtensionData_instanceValue = Ref{Any}(nothing)
const FileExtensionData_instanceSet = Ref(false)
function staticGet_instance(::Type{FileExtensionData})
    if !FileExtensionData_instanceSet[]
        FileExtensionData_instanceSet[] = true
        FileExtensionData_instanceValue[] = newFileExtensionData()
    end
    FileExtensionData_instanceValue[]
end
function staticSet_instance(::Type{FileExtensionData}, value)
    FileExtensionData_instanceSet[] = true
    FileExtensionData_instanceValue[] = value
end

function initFieldsFileExtensionData(this::FileExtensionData)
    this.DOT_JAVA_SOURCE = nothing
    this.JAVA_SOURCE = nothing
    this.DOT_JAVA_SOURCE = ".java"
    this.JAVA_SOURCE = "java"
    nothing
end


function getInstance(::Type{FileExtensionData})
        return staticGet_instance(FileExtensionData)
end


function initFileExtensionData(this::FileExtensionData)
        initFieldsFileExtensionData(this)
        nothing
        nothing
end

function newFileExtensionData()
    this = FileExtensionData()
    initFileExtensionData(this)
    this
end

