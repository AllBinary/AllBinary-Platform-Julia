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

mutable struct BufferedWriterUtil <: JObject
    logUtil::Any
    commonStrings::Any
    commonLabels::Any
    REMOVING_OLD::Any
    BufferedWriterUtil() = new()
end

const BufferedWriterUtil_instanceValue = Ref{Any}(nothing)
const BufferedWriterUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{BufferedWriterUtil})
    if !BufferedWriterUtil_instanceSet[]
        BufferedWriterUtil_instanceSet[] = true
        BufferedWriterUtil_instanceValue[] = newBufferedWriterUtil()
    end
    BufferedWriterUtil_instanceValue[]
end
function staticSet_instance(::Type{BufferedWriterUtil}, value)
    BufferedWriterUtil_instanceSet[] = true
    BufferedWriterUtil_instanceValue[] = value
end

function initFieldsBufferedWriterUtil(this::BufferedWriterUtil)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.commonLabels = nothing
    this.REMOVING_OLD = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.commonLabels = AllBinary.getInstance(CommonLabels)
    this.REMOVING_OLD = "Remove old for overwriting: "
    nothing
end

function initBufferedWriterUtil(this::BufferedWriterUtil)
    initFieldsBufferedWriterUtil(this)
end

function newBufferedWriterUtil()
    this = BufferedWriterUtil()
    initBufferedWriterUtil(this)
    this
end


function getInstance(::Type{BufferedWriterUtil})
        return staticGet_instance(BufferedWriterUtil)
end


function overwrite(this::BufferedWriterUtil, path, data)
        local abFile = AllBinary.createAbFile(AbFile, path)
        if AllBinary.exists(abFile)
            AllBinary.putF(this.logUtil, jstr(this.REMOVING_OLD) * jstr(path), this, this.commonStrings.CREATE)
            AllBinary.delete(abFile)
        else
            local name = AllBinary.removeNameFromPath(AllBinary.getInstance(AbPathData), path)
            local abFileDirectory = AllBinary.createAbFile(AbFile, name)
            if AllBinary.exists(abFileDirectory)
                nothing
            else
                local stringBuilder = newStringMaker()
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(stringBuilder, this.commonStrings.CREATE), this.commonLabels.COLON_SEP), name)), this, this.commonStrings.CREATE)
                local result::Bool = AllBinary.mkdirs(abFileDirectory)
                AllBinary.delete(stringBuilder, Int32(0), AllBinary.length(stringBuilder))
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendboolean(AllBinary.append(stringBuilder, this.commonLabels.RESULT_), result)), this, this.commonStrings.CREATE)
            end
        end
        AllBinary.write(this, abFile, data)
        nothing
end


function overwrite(this::BufferedWriterUtil, abFile, data)
        if AllBinary.exists(abFile)
            AllBinary.putF(this.logUtil, jstr(this.REMOVING_OLD) * jstr(AllBinary.getPath(abFile)), this, this.commonStrings.CREATE)
            AllBinary.delete(abFile)
        else
            local name = AllBinary.removeNameFromPath(AllBinary.getInstance(AbPathData), AllBinary.getAbsolutePath(abFile))
            local abFileDirectory = AllBinary.createAbFile(AbFile, name)
            if AllBinary.exists(abFileDirectory)
                nothing
            else
                local stringBuilder = newStringMaker()
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(stringBuilder, this.commonStrings.CREATE), this.commonLabels.COLON_SEP), name)), this, this.commonStrings.CREATE)
                local result::Bool = AllBinary.mkdirs(abFileDirectory)
                AllBinary.delete(stringBuilder, Int32(0), AllBinary.length(stringBuilder))
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendboolean(AllBinary.append(stringBuilder, this.commonLabels.RESULT_), result)), this, this.commonStrings.CREATE)
            end
        end
        AllBinary.write(this, abFile, data)
        nothing
end


function write(this::BufferedWriterUtil, abFile, data)
        local fileOut = newBufferedWriter(newFileWriter(AllBinary.get(AbFileNativeUtil, abFile)))
        AllBinary.write(fileOut, data, Int32(0), jLength(data))
        AllBinary.newLine(fileOut)
        AllBinary.flush(fileOut)
        nothing
end

