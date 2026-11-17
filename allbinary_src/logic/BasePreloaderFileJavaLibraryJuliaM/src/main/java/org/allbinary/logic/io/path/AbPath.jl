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

mutable struct AbPath <: JObject
    commonSeps::Any
    abPathData::Any
    abPathUtil::Any
    EMPTY_STRING::Any
    schema::Any
    path::Any
    nameP::Any
    hasSchemaP::Bool
    numberOfSeps::Int32
    AbPath() = new()
end

const AbPath_NETWORK_SEPValue = Ref{Any}(nothing)
const AbPath_NETWORK_SEPSet = Ref(false)
function staticGet_NETWORK_SEP(::Type{AbPath})
    if !AbPath_NETWORK_SEPSet[]
        AbPath_NETWORK_SEPSet[] = true
        AbPath_NETWORK_SEPValue[] = ":/"
    end
    AbPath_NETWORK_SEPValue[]
end
function staticSet_NETWORK_SEP(::Type{AbPath}, value)
    AbPath_NETWORK_SEPSet[] = true
    AbPath_NETWORK_SEPValue[] = value
end

function initFieldsAbPath(this::AbPath)
    this.commonSeps = nothing
    this.abPathData = nothing
    this.abPathUtil = nothing
    this.EMPTY_STRING = nothing
    this.schema = nothing
    this.path = nothing
    this.nameP = nothing
    this.hasSchemaP = false
    this.numberOfSeps = Int32(0)
    this.commonSeps = AllBinary.getInstance(CommonSeps)
    this.abPathData = AllBinary.getInstance(AbPathData)
    this.abPathUtil = AllBinary.getInstance(PathUtil)
    this.EMPTY_STRING = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.schema = this.EMPTY_STRING
    this.path = this.EMPTY_STRING
    this.nameP = this.EMPTY_STRING
    this.hasSchemaP = false
    this.numberOfSeps = Int32(0)
    nothing
end


function createAbPath(::Type{AbPath})
        try
            local EMPTY_STRING = AllBinary.getInstance(StringUtil).EMPTY_STRING
            return newAbPath(EMPTY_STRING, EMPTY_STRING)
        catch ex
            throw(jNewException("RuntimeException", ""))
        end
end


function initAbPath(this::AbPath, aPath, name)
        initFieldsAbPath(this)
        local stringValidationUtil = AllBinary.getInstance(StringValidationUtil)
        if !AllBinary.isEmpty(stringValidationUtil, aPath)
            this.schema = AllBinary.getSchema(this, aPath)
            this.nameP = name
            this.path = AllBinary.adjustEnd(this.abPathUtil, AllBinary.adjust(this.abPathUtil, AllBinary.getPathFromPath(this, aPath)))
        else
            AllBinary.init(this)
            if !AllBinary.isEmpty(stringValidationUtil, name)
                this.nameP = name
            end
        end
        nothing
end

function newAbPath(aPath, name)
    this = AbPath()
    initAbPath(this, aPath, name)
    this
end


function init(this::AbPath)
        this.schema = this.EMPTY_STRING
        AllBinary.setPath(this, this.abPathData.SEPARATOR)
        this.nameP = this.EMPTY_STRING
        nothing
end


function getSchema(this::AbPath, aPath)
        local beginIndex::Int32 = jIndexOf(aPath, this.commonSeps.COLON)
        if beginIndex >= Int32(0)
            this.hasSchemaP = true
            return jSubstring(aPath, Int32(0), beginIndex)
        end
        this.hasSchemaP = false
        return this.EMPTY_STRING
end


function hasSchema(this::AbPath)
        return this.hasSchemaP
end


function getPathFromPath(this::AbPath, aPath)
        local filePathData = AllBinary.getInstance(FilePathData)
        local tempPath = aPath
        if !AllBinary.hasSchema(this)
            tempPath = AllBinary.adjustStart(this.abPathUtil, tempPath)
        else
            local beginIndex::Int32 = jIndexOf(tempPath, this.commonSeps.COLON)
            if beginIndex >= Int32(0)
                beginIndex += Int32(1)
                while jCharAt(tempPath, beginIndex) == this.abPathData.SEPARATORCHAR || jCharAt(tempPath, beginIndex) == filePathData.SEPARATORCHAR
                    beginIndex += Int32(1)
                    this.numberOfSeps += Int32(1)
                    if this.numberOfSeps > Int32(2)
                        throw(jNewException("Exception", "Should Not Have More Than Two Seps"))
                    end
                end
                tempPath = jSubstring(tempPath, beginIndex, jLength(tempPath))
            end
        end
        return tempPath
end


function setName(this::AbPath, name)
        this.nameP = name
        nothing
end


function getName(this::AbPath)
        return this.nameP
end


function toString(this::AbPath)
        local stringBuffer = newStringMaker()
        if AllBinary.hasSchema(this)
            AllBinary.append(stringBuffer, this.schema)
            AllBinary.append(stringBuffer, staticGet_NETWORK_SEP(AbPath))
        end
        AllBinary.append(stringBuffer, AllBinary.getPath(this))
        AllBinary.append(stringBuffer, this.nameP)
        return AllBinary.toString(stringBuffer)
end


function toFileSystemString(this::AbPath)
        if AllBinary.hasSchema(this)
            local filePathData = AllBinary.getInstance(FilePathData)
            local stringBuffer = newStringMaker()
            AllBinary.append(stringBuffer, this.schema)
            AllBinary.append(stringBuffer, this.commonSeps.COLON)
            AllBinary.append(stringBuffer, filePathData.PATH_START)
            AllBinary.append(stringBuffer, AllBinary.adjust(FilePathUtil, AllBinary.getPath(this)))
            AllBinary.append(stringBuffer, this.nameP)
            return AllBinary.toString(stringBuffer)
        else
            return jstr(AllBinary.adjust(FilePathUtil, AllBinary.getPath(this))) * jstr(this.nameP)
        end
end


function getPath(this::AbPath)
        return this.path
end


function setPath(this::AbPath, path)
        this.path = path
        nothing
end

