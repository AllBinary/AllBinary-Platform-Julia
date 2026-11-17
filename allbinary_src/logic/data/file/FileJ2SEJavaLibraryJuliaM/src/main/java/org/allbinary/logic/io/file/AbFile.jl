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

mutable struct AbFile <: JObject
    file::Any
    AbFile() = new()
end

const AbFile_NULL_FILEValue = Ref{Any}(nothing)
const AbFile_NULL_FILESet = Ref(false)
function staticGet_NULL_FILE(::Type{AbFile})
    if !AbFile_NULL_FILESet[]
        AbFile_NULL_FILESet[] = true
        AbFile_NULL_FILEValue[] = AllBinary.createAbFileFromRawPath(AbFile, AllBinary.getInstance(StringUtil).EMPTY_STRING)
    end
    AbFile_NULL_FILEValue[]
end
function staticSet_NULL_FILE(::Type{AbFile}, value)
    AbFile_NULL_FILESet[] = true
    AbFile_NULL_FILEValue[] = value
end

function initFieldsAbFile(this::AbFile)
    this.file = nothing
    
    nothing
end


function createAbFileWithChild(::Type{AbFile}, file, childPathName)
        return newAbFile(newFile(AllBinary.getFile(file), childPathName))
end


function createAbFile(::Type{AbFile}, filePath)
        return newAbFile(newFile(AllBinary.toFileSystemString(newAbPath(filePath, AllBinary.getInstance(StringUtil).EMPTY_STRING))))
end


function createAbFilePathAndName(::Type{AbFile}, filePath, fileName)
        return newAbFile(newFile(AllBinary.toFileSystemString(newAbPath(filePath, AllBinary.getInstance(StringUtil).EMPTY_STRING)), fileName))
end


function createAbFileFromAbPath(::Type{AbFile}, abPath)
        return newAbFile(newFile(AllBinary.toFileSystemString(abPath)))
end


function createAbFileFromRawPath(::Type{AbFile}, filePath)
        return newAbFile(newFile(filePath))
end


function initAbFile(this::AbFile, file)
        initFieldsAbFile(this)
        this.file = file
        nothing
end

function newAbFile(file)
    this = AbFile()
    initAbFile(this, file)
    this
end


function getFile(this::AbFile)
        return this.file
end


function getName(this::AbFile)
        return AllBinary.getName(this.file)
end


function getParent(this::AbFile)
        return AllBinary.getParent(this.file)
end


function getParentFile(this::AbFile)
        return AllBinary.getParentFile(this.file)
end


function getPath(this::AbFile)
        return AllBinary.getPath(this.file)
end


function isAbsolute(this::AbFile)
        return AllBinary.isAbsolute(this.file)
end


function getAbsolutePath(this::AbFile)
        return AllBinary.getAbsolutePath(this.file)
end


function getAbsoluteFile(this::AbFile)
        return AllBinary.getAbsoluteFile(this.file)
end


function getCanonicalPath(this::AbFile)
        return AllBinary.getCanonicalPath(this.file)
end


function getCanonicalFile(this::AbFile)
        return AllBinary.getCanonicalFile(this.file)
end


function toURI(this::AbFile)
        return AllBinary.toURI(this.file)
end


function canRead(this::AbFile)
        return AllBinary.canRead(this.file)
end


function canWrite(this::AbFile)
        return AllBinary.canWrite(this.file)
end


function exists(this::AbFile)
        return AllBinary.exists(this.file)
end


function isDirectory(this::AbFile)
        return AllBinary.isDirectory(this.file)
end


function isFile(this::AbFile)
        return AllBinary.isFile(this.file)
end


function isHidden(this::AbFile)
        return AllBinary.isHidden(this.file)
end


function lastModified(this::AbFile)
        return AllBinary.lastModified(this.file)
end


function length(this::AbFile)
        return ((AllBinary.length(this.file)) % Int64)
end


function createNewFile(this::AbFile)
        return AllBinary.createNewFile(this.file)
end


function delete(this::AbFile)
        return AllBinary.delete(this.file)
end


function deleteOnExit(this::AbFile)
        AllBinary.deleteOnExit(this.file)
        nothing
end


function list(this::AbFile)
        return AllBinary.list(this.file)
end


function listWithFilter(this::AbFile, filter)
        return AllBinary.list(this.file, filter)
end


function listFiles(this::AbFile)
        return (AllBinary.listFiles(this.file))
end


function listFilesFileNameFilter(this::AbFile, filter)
        return (AllBinary.listFiles(this.file, filter))
end


function listFilesFileFilter(this::AbFile, filter)
        return (AllBinary.listFiles(this.file, filter))
end


function mkdir(this::AbFile)
        return AllBinary.mkdir(this.file)
end


function mkdirs(this::AbFile)
        return AllBinary.mkdirs(this.file)
end


function renameTo(this::AbFile, dest)
        return AllBinary.renameTo(this.file, AllBinary.getFile(dest))
end


function setLastModified(this::AbFile, time)
        return AllBinary.setLastModified(this.file, time)
end


function setReadOnly(this::AbFile)
        return AllBinary.setReadOnly(this.file)
end


function setWritable(this::AbFile, writable, ownerOnly)
        return AllBinary.setExecutable(this.file, writable, ownerOnly)
end


function setWritable(this::AbFile, writable)
        return AllBinary.setWritable(this.file, writable)
end


function setReadable(this::AbFile, readable, ownerOnly)
        return AllBinary.setReadable(this.file, readable, ownerOnly)
end


function setReadable(this::AbFile, readable)
        return AllBinary.setReadable(this.file, readable)
end


function setExecutable(this::AbFile, executable, ownerOnly)
        return AllBinary.setExecutable(this.file, executable, ownerOnly)
end


function setExecutable(this::AbFile, executable)
        return AllBinary.setExecutable(this.file, executable)
end


function canExecute(this::AbFile)
        return AllBinary.canExecute(this.file)
end


function getTotalSpace(this::AbFile)
        return AllBinary.getTotalSpace(this.file)
end


function getFreeSpace(this::AbFile)
        return AllBinary.getFreeSpace(this.file)
end


function getUsableSpace(this::AbFile)
        return AllBinary.getUsableSpace(this.file)
end


function compareTo(this::AbFile, pathname)
        return AllBinary.compareTo(this.file, pathname)
end


function equals(this::AbFile, obj)
        return AllBinary.equalsNotstring(AllBinary.getInstance(TsUtil), this.file, obj)
end


function hashCode(this::AbFile)
        return AllBinary.hashCode(this.file)
end


function toString(this::AbFile)
        return AllBinary.toString(this.file)
end

