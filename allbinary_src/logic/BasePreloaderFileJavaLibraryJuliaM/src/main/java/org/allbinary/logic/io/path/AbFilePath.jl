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

# extends AbPath: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AbFilePath <: JObject
    AbFilePath() = new()
end


function initFieldsAbFilePath(this::AbFilePath)
    nothing
end


function initAbFilePath(this::AbFilePath, aPath)
        initAbPath(this, AllBinary.getInstance(StringUtil).EMPTY_STRING, AllBinary.getInstance(StringUtil).EMPTY_STRING)
        local pathData = AllBinary.getInstance(AbPathData)
        local abPathUtil = AllBinary.getInstance(PathUtil)
        this.schema = AllBinary.getSchema(this, aPath)
        AllBinary.setName(this, AllBinary.getNameFromPath(pathData, aPath))
        AllBinary.setPath(this, AllBinary.adjust(abPathUtil, AllBinary.getPathFromPath(this, AllBinary.toString(AllBinary.removeNameFromPath(abPathUtil, aPath)))))
        nothing
end

function newAbFilePath(aPath)
    this = AbFilePath()
    initAbFilePath(this, aPath)
    this
end

