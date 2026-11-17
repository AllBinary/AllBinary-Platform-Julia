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
# package org.allbinary.string

mutable struct CommonSeps <: JObject
    NEW_LINE::Any
    SEMICOLON::Any
    EQUALS::Any
    SPACE::Any
    COMMA::Any
    COLON::Any
    PERIOD::Any
    UNDERSCORE::Any
    COLON_SEP::Any
    COMMA_SEP::Any
    PARENTHESIS_OPEN::Any
    PARENTHESIS_CLOSE::Any
    BRACE_OPEN::Any
    BRACE_CLOSE::Any
    BRACKET_OPEN::Any
    BRACKET_CLOSE::Any
    DASH::Any
    PERCENT::Any
    AMPERSAND::Any
    FORWARD_SLASH::Any
    BACK_SLASH::Any
    QUESTION::Any
    QUOTE::Any
    QUOTE_END::Any
    COMMENT::Any
    INDENT::Any
    CommonSeps() = new()
end

const CommonSeps_instanceValue = Ref{Any}(nothing)
const CommonSeps_instanceSet = Ref(false)
function staticGet_instance(::Type{CommonSeps})
    if !CommonSeps_instanceSet[]
        CommonSeps_instanceSet[] = true
        CommonSeps_instanceValue[] = newCommonSeps()
    end
    CommonSeps_instanceValue[]
end
function staticSet_instance(::Type{CommonSeps}, value)
    CommonSeps_instanceSet[] = true
    CommonSeps_instanceValue[] = value
end

function initFieldsCommonSeps(this::CommonSeps)
    this.NEW_LINE = nothing
    this.SEMICOLON = nothing
    this.EQUALS = nothing
    this.SPACE = nothing
    this.COMMA = nothing
    this.COLON = nothing
    this.PERIOD = nothing
    this.UNDERSCORE = nothing
    this.COLON_SEP = nothing
    this.COMMA_SEP = nothing
    this.PARENTHESIS_OPEN = nothing
    this.PARENTHESIS_CLOSE = nothing
    this.BRACE_OPEN = nothing
    this.BRACE_CLOSE = nothing
    this.BRACKET_OPEN = nothing
    this.BRACKET_CLOSE = nothing
    this.DASH = nothing
    this.PERCENT = nothing
    this.AMPERSAND = nothing
    this.FORWARD_SLASH = nothing
    this.BACK_SLASH = nothing
    this.QUESTION = nothing
    this.QUOTE = nothing
    this.QUOTE_END = nothing
    this.COMMENT = nothing
    this.INDENT = nothing
    this.NEW_LINE = "\n"
    this.SEMICOLON = ";"
    this.EQUALS = "="
    this.SPACE = " "
    this.COMMA = ","
    this.COLON = ":"
    this.PERIOD = "."
    this.UNDERSCORE = "_"
    this.COLON_SEP = AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.COLON), this.SPACE))
    this.COMMA_SEP = AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.COMMA), this.SPACE))
    this.PARENTHESIS_OPEN = "("
    this.PARENTHESIS_CLOSE = ")"
    this.BRACE_OPEN = "{"
    this.BRACE_CLOSE = "}"
    this.BRACKET_OPEN = "["
    this.BRACKET_CLOSE = "]"
    this.DASH = "-"
    this.PERCENT = "%"
    this.AMPERSAND = "&"
    this.FORWARD_SLASH = "/"
    this.BACK_SLASH = "\\"
    this.QUESTION = "?"
    this.QUOTE = "\""
    this.QUOTE_END = "\","
    this.COMMENT = "//"
    this.INDENT = "    "
    nothing
end

function initCommonSeps(this::CommonSeps)
    initFieldsCommonSeps(this)
end

function newCommonSeps()
    this = CommonSeps()
    initCommonSeps(this)
    this
end


function getInstance(::Type{CommonSeps})
        return staticGet_instance(CommonSeps)
end

