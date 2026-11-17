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

mutable struct AbFileNativeUtil <: JObject
    AbFileNativeUtil() = new()
end


function initFieldsAbFileNativeUtil(this::AbFileNativeUtil)
    nothing
end

function initAbFileNativeUtil(this::AbFileNativeUtil)
    initFieldsAbFileNativeUtil(this)
end

function newAbFileNativeUtil()
    this = AbFileNativeUtil()
    initAbFileNativeUtil(this)
    this
end


function get(::Type{AbFileNativeUtil}, file)
        return AllBinary.getFile(file)
end

