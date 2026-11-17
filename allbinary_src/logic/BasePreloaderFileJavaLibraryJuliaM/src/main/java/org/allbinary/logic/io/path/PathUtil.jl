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
# package org.allbinary.logic.io.path

#Used to correct user input for paths
mutable struct PathUtil <: JObject
    abPathData::Any
    filePathData::Any
    PathUtil() = new()
end

const PathUtil_instanceValue = Ref{Any}(nothing)
const PathUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{PathUtil})
    if !PathUtil_instanceSet[]
        PathUtil_instanceSet[] = true
        PathUtil_instanceValue[] = newPathUtil()
    end
    PathUtil_instanceValue[]
end
function staticSet_instance(::Type{PathUtil}, value)
    PathUtil_instanceSet[] = true
    PathUtil_instanceValue[] = value
end

function initFieldsPathUtil(this::PathUtil)
    this.abPathData = nothing
    this.filePathData = nothing
    this.abPathData = AllBinary.getInstance(AbPathData)
    this.filePathData = AllBinary.getInstance(FilePathData)
    nothing
end


function getInstance(::Type{PathUtil})
        return staticGet_instance(PathUtil)
end


function initPathUtil(this::PathUtil)
        initFieldsPathUtil(this)
        nothing
        nothing
end

function newPathUtil()
    this = PathUtil()
    initPathUtil(this)
    this
end


function getExtensionWithAbFilePath(this::PathUtil, abFilePath)
        return AllBinary.getExtension(this.abPathData, AllBinary.toString(abFilePath))
end


function getExtensionWithAbPath(this::PathUtil, abPath)
        return AllBinary.getExtension(this.abPathData, AllBinary.toString(abPath))
end


function getWithoutExtensionWithAbFilePath(this::PathUtil, abFilePath)
        return AllBinary.getWithoutExtension(this, AllBinary.toString(abFilePath))
end


function getWithoutExtensionWithAbPath(this::PathUtil, abPath)
        return AllBinary.getWithoutExtension(this, AllBinary.toString(abPath))
end


function getWithoutExtension(this::PathUtil, filePath)
        local indexOfFileExtensionDelmiter::Int32 = AllBinary.getExtensionIndex(this.abPathData, filePath)
        local pathWithoutExtension = filePath
        if indexOfFileExtensionDelmiter >= Int32(0)
            pathWithoutExtension = jSubstring(filePath, Int32(0), indexOfFileExtensionDelmiter)
        end
        return pathWithoutExtension
end


function isValid(this::PathUtil, path)
        if AllBinary.isValidStart(this, path)
            if AllBinary.isValidEnd(this, path)
                return true
            end
        end
        return false
end


function isValidStart(this::PathUtil, path)
        if jCharAt(path, Int32(0)) == this.abPathData.SEPARATORCHAR || jCharAt(path, Int32(0)) == UInt16('.')
            return true
        else
            return false
        end
end


function isValidEnd(this::PathUtil, path)
        local stringValidationUtil = AllBinary.getInstance(StringValidationUtil)
        if AllBinary.isEmpty(stringValidationUtil, path)
            return false
        end
        if jCharAt(path, jLength(path) - Int32(1)) == this.abPathData.SEPARATORCHAR
            return true
        else
            return false
        end
end


function adjustStart(this::PathUtil, path)
        if !AllBinary.isValidStart(this, path)
            path = jstr(this.abPathData.SEPARATOR) * jstr(path)
        end
        return path
end


function adjustEnd(this::PathUtil, path)
        if !AllBinary.isValidEnd(this, path)
            path = jstr(path) * jstr(this.abPathData.SEPARATOR)
        end
        return path
end


function adjust(this::PathUtil, path)
        local stringValidationUtil = AllBinary.getInstance(StringValidationUtil)
        if AllBinary.isEmpty(stringValidationUtil, path)
            return this.abPathData.SEPARATOR
        end
        if jIndexOf(path, "\\") >= Int32(0)
            path = jReplace(path, UInt16('\\'), this.abPathData.SEPARATORCHAR)
        end
        return path
end


function removeNameFromPath(this::PathUtil, path)
        local endIndex::Int32 = jLastIndexOf(path, this.abPathData.SEPARATOR)
        if endIndex < Int32(0)
            endIndex = jLastIndexOf(path, this.filePathData.SEPARATORCHAR)
        end
        if endIndex < Int32(0)
            return AllBinary.createAbPath(AbPath)
        end
        if jLength(path) == endIndex + Int32(1)
            return AllBinary.removeNameFromPath(this, jSubstring(path, Int32(0), endIndex - Int32(1)))
        else
            local pathWithoutName = jSubstring(path, Int32(0), endIndex)
            return newAbPath(pathWithoutName, AllBinary.getInstance(StringUtil).EMPTY_STRING)
        end
end

