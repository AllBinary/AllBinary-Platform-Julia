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
# package org.allbinary.graphics.draw

mutable struct DrawVerticalStringUtil <: JObject
    EMPTY_STRING::Any
    anchor::Int32
    charHeight::Int32
    offsetY::Int32
    offsetXArray::Any
    DrawVerticalStringUtil() = new()
end

const DrawVerticalStringUtil_instanceValue = Ref{Any}(nothing)
const DrawVerticalStringUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{DrawVerticalStringUtil})
    if !DrawVerticalStringUtil_instanceSet[]
        DrawVerticalStringUtil_instanceSet[] = true
        DrawVerticalStringUtil_instanceValue[] = newDrawVerticalStringUtil()
    end
    DrawVerticalStringUtil_instanceValue[]
end
function staticSet_instance(::Type{DrawVerticalStringUtil}, value)
    DrawVerticalStringUtil_instanceSet[] = true
    DrawVerticalStringUtil_instanceValue[] = value
end

function initFieldsDrawVerticalStringUtil(this::DrawVerticalStringUtil)
    this.EMPTY_STRING = nothing
    this.anchor = Int32(0)
    this.charHeight = Int32(0)
    this.offsetY = Int32(0)
    this.offsetXArray = nothing
    this.EMPTY_STRING = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.anchor = staticGet_TOP_LEFT(Anchor)
    this.charHeight = Int32(0)
    this.offsetY = Int32(0)
    this.offsetXArray = AllBinary.getInstance(NullUtil).NULL_INT_ARRAY
    nothing
end

function initDrawVerticalStringUtil(this::DrawVerticalStringUtil)
    initFieldsDrawVerticalStringUtil(this)
end

function newDrawVerticalStringUtil()
    this = DrawVerticalStringUtil()
    initDrawVerticalStringUtil(this)
    this
end


function getInstance(::Type{DrawVerticalStringUtil})
        return staticGet_instance(DrawVerticalStringUtil)
end


function updateMeasurement(this::DrawVerticalStringUtil, graphics, string)
        local openGLFeatureUtil = AllBinary.getInstance(OpenGLFeatureUtil)
        local font = AllBinary.getFont(graphics)
        this.charHeight = AllBinary.getHeight(font)
        this.offsetY = Int32(0)
        if AllBinary.isHTML(J2MEUtil)
            this.charHeight += Int32(1)
        elseif AllBinary.isAnyThreed(openGLFeatureUtil)
            this.charHeight += Int32(2)
            if AllBinary.isAndroid(AndroidUtil)
                nothing
            else
                this.offsetY = Int32(2) + (this.charHeight * Int32(2) ÷ Int32(3))
            end
        end
        local size::Int32 = jLength(string)
        local aChar::UInt16 = UInt16(0)
        local offsetXArray = jNewArray(Int32, size, Int32(0))
        let
            local index::Int32 = size - Int32(1)
            while index >= Int32(0)
            try
            aChar = jCharAt(string, index)
            if AllBinary.isAnyThreed(openGLFeatureUtil)
                offsetXArray[index + 1] = AllBinary.charWidth(font, aChar) ÷ Int32(2)
            end
            finally
                index -= Int32(1)
            end
            end
        end
        this.offsetXArray = offsetXArray
        nothing
end


function paintVerticle(this::DrawVerticalStringUtil, graphics, string, x, y, anchor)
        local size::Int32 = jLength(string)
        local aChar::UInt16 = UInt16(0)
        let
            local index::Int32 = size - Int32(1)
            while index >= Int32(0)
            try
            aChar = jCharAt(string, index)
            AllBinary.drawChar(graphics, aChar, x + this.offsetXArray[index + 1], y + (this.charHeight * index) + this.offsetY, anchor)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end


function drawCenterString(this::DrawVerticalStringUtil, graphics, string, offset, length, x, y)
        local width::Int32 = (AllBinary.substringWidth(AllBinary.getFont(graphics), string, offset, length) >> Int32(1))
        try
            AllBinary.drawSubstring(graphics, string, offset, length, x - width, y, this.anchor)
        catch e
            AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(AllBinary.appendint(AllBinary.append(AllBinary.appendint(AllBinary.append(newStringMaker(), "Exception: stringLength: "), jLength(string)), " offset: "), offset), " currentLength: "), length)), this, "drawCenterString")
        end
        nothing
end


function drawCenterStrings(this::DrawVerticalStringUtil, graphics, stringArray, maxWidth, x, y)
        local extraLines::Int32 = Int32(0)
        let
            local index::Int32 = Int32(0)
            while index < Int32(Base.length(stringArray))
            try
            local string = stringArray[index + 1]
            if string != this.EMPTY_STRING
                local width::Int32 = AllBinary.stringWidth(AllBinary.getFont(graphics), string)
                local minTotalLines::Int32 = Int32(1)
                if width > maxWidth
                    minTotalLines = (width ÷ maxWidth) + Int32(1)
                end
                local linePortion::Int32 = jLength(string) ÷ minTotalLines
                local offset::Int32 = Int32(0)
                local currentLength::Int32 = linePortion
                local size::Int32 = jLength(string)
                while offset < size
                    if offset + currentLength > size
                        currentLength = size - offset
                    end
                    if offset + currentLength != size
                        while currentLength > Int32(0) && AllBinary.charAt(stringArray[index + 1], offset + currentLength) != UInt16(' ')
                            currentLength -= Int32(1)
                        end
                        if currentLength <= Int32(4)
                            currentLength = linePortion
                        end
                    end
                    AllBinary.drawCenterString(this, graphics, string, offset, currentLength, x, y + ((index + (let old = extraLines; extraLines += Int32(1); old end)) * this.charHeight))
                    offset = offset + currentLength
                    currentLength = linePortion
                end
                extraLines -= Int32(1)
            end
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

