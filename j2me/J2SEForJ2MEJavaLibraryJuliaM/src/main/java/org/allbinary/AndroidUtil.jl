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
# package org.allbinary

mutable struct AndroidUtil <: JObject
    AndroidUtil() = new()
end


function initFieldsAndroidUtil(this::AndroidUtil)
    nothing
end


function initAndroidUtil(this::AndroidUtil)
        initFieldsAndroidUtil(this)
        nothing
        nothing
end

function newAndroidUtil()
    this = AndroidUtil()
    initAndroidUtil(this)
    this
end


function isMemoryRestrictive(::Type{AndroidUtil})
        return false
end


function isAndroid(::Type{AndroidUtil})
        return false
end

