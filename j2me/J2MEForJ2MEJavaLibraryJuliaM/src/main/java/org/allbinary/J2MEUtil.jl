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

mutable struct J2MEUtil <: JObject
    J2MEUtil() = new()
end


function initFieldsJ2MEUtil(this::J2MEUtil)
    nothing
end


function initJ2MEUtil(this::J2MEUtil)
        initFieldsJ2MEUtil(this)
        nothing
        nothing
end

function newJ2MEUtil()
    this = J2MEUtil()
    initJ2MEUtil(this)
    this
end


function isJ2ME(::Type{J2MEUtil})
        return true
end


function isJ2SE(::Type{J2MEUtil})
        return false
end


function isHTML(::Type{J2MEUtil})
        return false
end

