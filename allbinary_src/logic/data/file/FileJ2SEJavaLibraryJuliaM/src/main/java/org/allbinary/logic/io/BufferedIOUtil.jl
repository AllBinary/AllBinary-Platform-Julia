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

mutable struct BufferedIOUtil <: JObject
    BufferedIOUtil() = new()
end


function initFieldsBufferedIOUtil(this::BufferedIOUtil)
    nothing
end

function initBufferedIOUtil(this::BufferedIOUtil)
    initFieldsBufferedIOUtil(this)
end

function newBufferedIOUtil()
    this = BufferedIOUtil()
    initBufferedIOUtil(this)
    this
end


function copy(::Type{BufferedIOUtil}, backupFile, backupFileBak)
        local line = AllBinary.getInstance(StringUtil).EMPTY_STRING
        local tmpOut = newBufferedWriter(newFileWriter(AllBinary.get(AbFileNativeUtil, backupFileBak)))
        local tmpIn = newBufferedReader(newFileReader(AllBinary.get(AbFileNativeUtil, backupFile)))
        while AllBinary.ready(tmpIn)
            line = AllBinary.readLine(tmpIn)
            AllBinary.write(tmpOut, line, Int32(0), jLength(line))
            AllBinary.newLine(tmpOut)
        end
        AllBinary.flush(tmpOut)
        nothing
end

