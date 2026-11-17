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

mutable struct FileFactory <: JObject
    FileFactory() = new()
end

const FileFactory_instanceValue = Ref{Any}(nothing)
const FileFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{FileFactory})
    if !FileFactory_instanceSet[]
        FileFactory_instanceSet[] = true
        FileFactory_instanceValue[] = newFileFactory()
    end
    FileFactory_instanceValue[]
end
function staticSet_instance(::Type{FileFactory}, value)
    FileFactory_instanceSet[] = true
    FileFactory_instanceValue[] = value
end

function initFieldsFileFactory(this::FileFactory)
    nothing
end

function initFileFactory(this::FileFactory)
    initFieldsFileFactory(this)
end

function newFileFactory()
    this = FileFactory()
    initFileFactory(this)
    this
end


function getInstance(::Type{FileFactory})
        return staticGet_instance(FileFactory)
end


function getInstance(this::FileFactory, filePath)
        return AllBinary.createAbFileFromRawPath(AbFile, filePath)
end


function getInstance(this::FileFactory, file, childFilePath)
        return AllBinary.createAbFileWithChild(AbFile, file, childFilePath)
end


function isFile(this::FileFactory, path)
        local file = AllBinary.createAbFile(AbFile, path)
        if AllBinary.exists(file)
            return true
        else
            return false
        end
end

