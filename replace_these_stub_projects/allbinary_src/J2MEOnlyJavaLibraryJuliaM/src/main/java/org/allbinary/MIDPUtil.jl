#=
 
  AllBinary Open License Version 1
  Copyright (c) 2026 AllBinary
 
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
 
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 
  Created By: Travis Berthelot
  
=#
# Generated Code Do Not Modify
# package org.allbinary

#like microemu-playn, so the languages without overloading can be generated. J2ME uses the MIDP overloads.
mutable struct MIDPUtil <: JObject
    MIDPUtil() = new()
end

const MIDPUtil_instanceValue = Ref{Any}(nothing)
const MIDPUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{MIDPUtil})
    if !MIDPUtil_instanceSet[]
        MIDPUtil_instanceSet[] = true
        MIDPUtil_instanceValue[] = newMIDPUtil()
    end
    MIDPUtil_instanceValue[]
end
function staticSet_instance(::Type{MIDPUtil}, value)
    MIDPUtil_instanceSet[] = true
    MIDPUtil_instanceValue[] = value
end

function initFieldsMIDPUtil(this::MIDPUtil)
    nothing
end

function initMIDPUtil(this::MIDPUtil)
    initFieldsMIDPUtil(this)
end

function newMIDPUtil()
    this = MIDPUtil()
    initMIDPUtil(this)
    this
end


function getInstance(::Type{MIDPUtil})
        return staticGet_instance(MIDPUtil)
end


function createImageWH(this::MIDPUtil, width, height)
        return AllBinary.createImage(Image, width, height)
end


function createImageFromByteArray(this::MIDPUtil, imageData, imageOffset, imageLength)
        return AllBinary.createImage(Image, imageData, imageOffset, imageLength)
end


function createImageFromInputStream(this::MIDPUtil, inputStream)
        return AllBinary.createImage(Image, inputStream)
end


function createPlayerFromInputStream(this::MIDPUtil, inputStream, type_)
        return AllBinary.createPlayer(Manager, inputStream, type_)
end


function appendItem(this::MIDPUtil, form, item)
        return AllBinary.append(form, item)
end

