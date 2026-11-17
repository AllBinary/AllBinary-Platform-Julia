# Generated Code Do Not Modify
# package org.allbinary

mutable struct KotlinUtil <: JObject
    KotlinUtil() = new()
end


function initFieldsKotlinUtil(this::KotlinUtil)
    nothing
end

function initKotlinUtil(this::KotlinUtil)
    initFieldsKotlinUtil(this)
end

function newKotlinUtil()
    this = KotlinUtil()
    initKotlinUtil(this)
    this
end


function isKotlin(::Type{KotlinUtil})
        return false
end


function getShortName(::Type{KotlinUtil})
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end

