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

mutable struct AbPathData <: JObject
    EXTENSION_SEP::Any
    SEPARATORCHAR::UInt16
    SEPARATOR::Any
    AbPathData() = new()
end

const AbPathData_instanceValue = Ref{Any}(nothing)
const AbPathData_instanceSet = Ref(false)
function staticGet_instance(::Type{AbPathData})
    if !AbPathData_instanceSet[]
        AbPathData_instanceSet[] = true
        AbPathData_instanceValue[] = newAbPathData()
    end
    AbPathData_instanceValue[]
end
function staticSet_instance(::Type{AbPathData}, value)
    AbPathData_instanceSet[] = true
    AbPathData_instanceValue[] = value
end

function initFieldsAbPathData(this::AbPathData)
    this.EXTENSION_SEP = nothing
    this.SEPARATORCHAR = UInt16(0)
    this.SEPARATOR = nothing
    this.EXTENSION_SEP = AllBinary.getInstance(CommonSeps).PERIOD
    this.SEPARATORCHAR = UInt16('/')
    this.SEPARATOR = AllBinary.getInstance(CommonSeps).FORWARD_SLASH
    nothing
end


function getInstance(::Type{AbPathData})
        return staticGet_instance(AbPathData)
end


function initAbPathData(this::AbPathData)
        initFieldsAbPathData(this)
        nothing
        nothing
end

function newAbPathData()
    this = AbPathData()
    initAbPathData(this)
    this
end


function getExtensionIndex(this::AbPathData, filePath)
        local indexOfFileExtensionDelmiter::Int32 = jLastIndexOf(filePath, this.EXTENSION_SEP)
        local indexOfLatDelimiter::Int32 = jLastIndexOf(filePath, this.SEPARATORCHAR)
        if indexOfFileExtensionDelmiter < Int32(0)
            return -Int32(1)
        end
        if indexOfFileExtensionDelmiter < indexOfLatDelimiter
            return -Int32(1)
        end
        return indexOfFileExtensionDelmiter
end


function getExtensionWithDot(this::AbPathData, filePath)
        local indexOfFileExtensionDelmiter::Int32 = AllBinary.getExtensionIndex(this, filePath)
        local extension = AllBinary.getInstance(StringUtil).EMPTY_STRING
        if indexOfFileExtensionDelmiter >= Int32(0)
            extension = jSubstring(filePath, indexOfFileExtensionDelmiter)
        end
        return extension
end


function getExtension(this::AbPathData, filePath)
        local indexOfFileExtensionDelmiter::Int32 = AllBinary.getExtensionIndex(this, filePath)
        local extension = AllBinary.getInstance(StringUtil).EMPTY_STRING
        if indexOfFileExtensionDelmiter >= Int32(0)
            extension = jSubstring(filePath, indexOfFileExtensionDelmiter + Int32(1))
        end
        return extension
end


function getNameFromPath(this::AbPathData, path)
        local endIndex::Int32 = jLastIndexOf(path, this.SEPARATORCHAR)
        if endIndex < Int32(0)
            endIndex = jLastIndexOf(path, AllBinary.getInstance(FilePathData).SEPARATORCHAR)
        end
        if endIndex < Int32(0)
            return path
        end
        if jLength(path) == endIndex + Int32(1)
            categoryName = jSubstring(path, Int32(0), endIndex)
            return AllBinary.getNameFromPath(this, categoryName)
        else
            local categoryName = jSubstring(path, endIndex + Int32(1))
            return categoryName
        end
end


function removeNameFromPath(this::AbPathData, path)
        local endIndex::Int32 = jLastIndexOf(path, this.SEPARATORCHAR)
        if endIndex < Int32(0)
            endIndex = jLastIndexOf(path, AllBinary.getInstance(FilePathData).SEPARATORCHAR)
        end
        if endIndex < Int32(0)
            return AllBinary.getInstance(StringUtil).EMPTY_STRING
        end
        if jLength(path) == endIndex + Int32(1)
            return AllBinary.removeNameFromPath(this, jSubstring(path, Int32(0), endIndex - Int32(1)))
        else
            local pathWithoutName = jSubstring(path, Int32(0), endIndex)
            return pathWithoutName
        end
end

