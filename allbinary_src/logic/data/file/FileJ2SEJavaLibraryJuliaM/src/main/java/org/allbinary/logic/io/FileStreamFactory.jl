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
# package org.allbinary.logic.io

mutable struct FileStreamFactory <: JObject
    FileStreamFactory() = new()
end

const FileStreamFactory_SINGLETONValue = Ref{Any}(nothing)
const FileStreamFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{FileStreamFactory})
    if !FileStreamFactory_SINGLETONSet[]
        FileStreamFactory_SINGLETONSet[] = true
        FileStreamFactory_SINGLETONValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    FileStreamFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{FileStreamFactory}, value)
    FileStreamFactory_SINGLETONSet[] = true
    FileStreamFactory_SINGLETONValue[] = value
end

function initFieldsFileStreamFactory(this::FileStreamFactory)
    nothing
end


function getInstance(::Type{FileStreamFactory})
        if staticGet_SINGLETON(FileStreamFactory) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_SINGLETON(FileStreamFactory, newFileStreamFactory())
        end
        return (staticGet_SINGLETON(FileStreamFactory))
end


function initFileStreamFactory(this::FileStreamFactory)
        initFieldsFileStreamFactory(this)
        nothing
        nothing
end

function newFileStreamFactory()
    this = FileStreamFactory()
    initFileStreamFactory(this)
    this
end


function getFileInputStreamInstance(this::FileStreamFactory, path, fileName)
        local FILEABPATH = newAbPath(path, fileName)
        local file = AllBinary.createAbFileFromAbPath(AbFile, FILEABPATH)
        return AllBinary.createFromAbFile(AbFileInputStream, file)
end


function getFileOutputStreamInstance(this::FileStreamFactory, path, fileName)
        local FILEABPATH = newAbPath(path, fileName)
        local file = AllBinary.createAbFileFromAbPath(AbFile, FILEABPATH)
        if AllBinary.exists(file)
            AllBinary.delete(file)
            AllBinary.createNewFile(file)
        end
        return AllBinary.createFromAbFile(AbFileOutputStream, file)
end


function delete(this::FileStreamFactory, path, fileName)
        local FILEABPATH = newAbPath(path, fileName)
        local file = AllBinary.createAbFileFromAbPath(AbFile, FILEABPATH)
        AllBinary.delete(file)
        nothing
end

