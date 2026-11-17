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
# package org.allbinary.logic.io.file

mutable struct FilePathData <: JObject
    SEPARATORCHAR::UInt16
    PATH_START::Any
    FilePathData() = new()
end

const FilePathData_instanceValue = Ref{Any}(nothing)
const FilePathData_instanceSet = Ref(false)
function staticGet_instance(::Type{FilePathData})
    if !FilePathData_instanceSet[]
        FilePathData_instanceSet[] = true
        FilePathData_instanceValue[] = newFilePathData()
    end
    FilePathData_instanceValue[]
end
function staticSet_instance(::Type{FilePathData}, value)
    FilePathData_instanceSet[] = true
    FilePathData_instanceValue[] = value
end

function initFieldsFilePathData(this::FilePathData)
    this.SEPARATORCHAR = UInt16(0)
    this.PATH_START = nothing
    this.SEPARATORCHAR = UInt16('\\')
    this.PATH_START = "\\\\"
    nothing
end


function getInstance(::Type{FilePathData})
        return staticGet_instance(FilePathData)
end


function initFilePathData(this::FilePathData)
        initFieldsFilePathData(this)
        nothing
        nothing
end

function newFilePathData()
    this = FilePathData()
    initFilePathData(this)
    this
end

