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

#Used to correct user input for paths
mutable struct FilePathUtil <: JObject
    FilePathUtil() = new()
end


function initFieldsFilePathUtil(this::FilePathUtil)
    nothing
end


function initFilePathUtil(this::FilePathUtil)
        initFieldsFilePathUtil(this)
        nothing
        nothing
end

function newFilePathUtil()
    this = FilePathUtil()
    initFilePathUtil(this)
    this
end


function adjust(::Type{FilePathUtil}, path)
        local abPathData = AllBinary.getInstance(AbPathData)
        local stringValidationUtil = AllBinary.getInstance(StringValidationUtil)
        local filePathData = AllBinary.getInstance(FilePathData)
        if AllBinary.isEmpty(stringValidationUtil, path)
            return filePathData.PATH_START
        end
        path = jReplace(path, abPathData.SEPARATORCHAR, filePathData.SEPARATORCHAR)
        return path
end

