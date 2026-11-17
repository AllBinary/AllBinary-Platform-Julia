#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.logic.io.file

#FileJ2SE should be the same as J2SEForJ2ME
mutable struct AbFileSystem <: JObject
    logUtil::Any
    commonStrings::Any
    AbFileSystem() = new()
end

const AbFileSystem_instanceValue = Ref{Any}(nothing)
const AbFileSystem_instanceSet = Ref(false)
function staticGet_instance(::Type{AbFileSystem})
    if !AbFileSystem_instanceSet[]
        AbFileSystem_instanceSet[] = true
        AbFileSystem_instanceValue[] = newAbFileSystem()
    end
    AbFileSystem_instanceValue[]
end
function staticSet_instance(::Type{AbFileSystem}, value)
    AbFileSystem_instanceSet[] = true
    AbFileSystem_instanceValue[] = value
end

function initFieldsAbFileSystem(this::AbFileSystem)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    nothing
end

function initAbFileSystem(this::AbFileSystem)
    initFieldsAbFileSystem(this)
end

function newAbFileSystem()
    this = AbFileSystem()
    initAbFileSystem(this)
    this
end


function getInstance(::Type{AbFileSystem})
        return staticGet_instance(AbFileSystem)
end


function isDirectoryOrFile(this::AbFileSystem, path)
        local file = newFile(path)
        return AllBinary.isDirectory(file) || AllBinary.isFile(file)
end


function isDirectory(this::AbFileSystem, path)
        return AllBinary.isDirectory(newFile(path))
end


function getFilesAsStringArrayForPath(this::AbFileSystem, currentDirPath)
        local file = newFile(currentDirPath)
        if AllBinary.exists(file)
            return AllBinary.list(file)
        else
            return AllBinary.getArrayInstance(AllBinary.getInstance(StringUtil))
        end
end


function readAsString(this::AbFileSystem, fileName)
        local bytes = jNewArray(Int8, Int32(1000000), Int8(0))
        return AllBinary.readAsString(this, fileName, bytes)
end


function readAsString(this::AbFileSystem, fileName, bytes)
        local closeable = AllBinary.getInstance(NullUtil).NULL_OBJECT
        try
            local idFile = newFileInputStream(fileName)
            closeable = idFile
            local size::Int32 = AllBinary.read(idFile, bytes)
            if size > Int32(0)
                return jFromChars(bytes, Int32(0), size)
            end
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, "readAsString", e)
        finally
            AllBinary.close(this, closeable)
        end
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end


function close(this::AbFileSystem, closeable)
        try
            if closeable !== nothing
                local inputStream = ((closeable))
                AllBinary.close(inputStream)
            end
            return true
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.CLOSE, e)
            return false
        end
end

