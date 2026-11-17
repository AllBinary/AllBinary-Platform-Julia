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

mutable struct FileWrapperUtil <: JObject
    FileWrapperUtil() = new()
end


function initFieldsFileWrapperUtil(this::FileWrapperUtil)
    nothing
end

function initFileWrapperUtil(this::FileWrapperUtil)
    initFieldsFileWrapperUtil(this)
end

function newFileWrapperUtil()
    this = FileWrapperUtil()
    initFileWrapperUtil(this)
    this
end


function wrapFiles(::Type{FileWrapperUtil}, files)
        try
            local abFileArray = jNewArray(Any, Int32(Base.length(files)), nothing)
            let
                local index::Int32 = Int32(Base.length(files)) - Int32(1)
                while index >= Int32(0)
                try
                abFileArray[index + 1] = newAbFile((files[index + 1]))
                finally
                    index -= Int32(1)
                end
                end
            end
            return abFileArray
        catch e
            AllBinary.putSE(PreLogUtil, "Exception Wrapping Files", "FileWrapperUtil", "wrapFiles", e)
            return jNewArray(Any, Int32(0), nothing)
        end
end


function wrapFile(::Type{FileWrapperUtil}, file)
        try
            return newAbFile(file)
        catch e
            AllBinary.putSE(PreLogUtil, "Exception Wrapping File", "FileWrapperUtil", "wrapFile", e)
            return staticGet_NULL_FILE(AbFile)
        end
end

