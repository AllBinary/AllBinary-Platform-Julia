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
# package org.allbinary.logic.string

mutable struct StringValidationJSEUtil <: JObject
    StringValidationJSEUtil() = new()
end


function initFieldsStringValidationJSEUtil(this::StringValidationJSEUtil)
    nothing
end


function initStringValidationJSEUtil(this::StringValidationJSEUtil)
        initFieldsStringValidationJSEUtil(this)
        nothing
        nothing
end

function newStringValidationJSEUtil()
    this = StringValidationJSEUtil()
    initStringValidationJSEUtil(this)
    this
end


function isBlank(::Type{StringValidationJSEUtil}, string)
        local len::Int32 = jLength(string)
        let
            local i::Int32 = Int32(0)
            while i < len
            try
            local c::UInt16 = jCharAt(string, i)
            if AllBinary.isWhitespace(Character, c) == false
                return false
            end
            finally
                i += Int32(1)
            end
            end
        end
        return true
end

