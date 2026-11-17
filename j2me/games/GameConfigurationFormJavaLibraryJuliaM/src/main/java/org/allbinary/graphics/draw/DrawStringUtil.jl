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

mutable struct DrawStringUtil <: JObject
    EMPTY_STRING::Any
    anchor::Int32
    DrawStringUtil() = new()
end

const DrawStringUtil_instanceValue = Ref{Any}(nothing)
const DrawStringUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{DrawStringUtil})
    if !DrawStringUtil_instanceSet[]
        DrawStringUtil_instanceSet[] = true
        DrawStringUtil_instanceValue[] = newDrawStringUtil()
    end
    DrawStringUtil_instanceValue[]
end
function staticSet_instance(::Type{DrawStringUtil}, value)
    DrawStringUtil_instanceSet[] = true
    DrawStringUtil_instanceValue[] = value
end

function initFieldsDrawStringUtil(this::DrawStringUtil)
    this.EMPTY_STRING = nothing
    this.anchor = Int32(0)
    this.EMPTY_STRING = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.anchor = staticGet_TOP_LEFT(Anchor)
    nothing
end

function initDrawStringUtil(this::DrawStringUtil)
    initFieldsDrawStringUtil(this)
end

function newDrawStringUtil()
    this = DrawStringUtil()
    initDrawStringUtil(this)
    this
end


function getInstance(::Type{DrawStringUtil})
        return staticGet_instance(DrawStringUtil)
end


function drawCenterString(this::DrawStringUtil, graphics, string, offset, length, x, y)
        local width::Int32 = (AllBinary.substringWidth(AllBinary.getFont(graphics), string, offset, length) >> Int32(1))
        try
            AllBinary.drawSubstring(graphics, string, offset, length, x - width, y, this.anchor)
        catch e
            AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(AllBinary.appendint(AllBinary.append(AllBinary.appendint(AllBinary.append(newStringMaker(), "Exception: stringLength: "), jLength(string)), " offset: "), offset), " currentLength: "), length)), this, "drawCenterString")
        end
        nothing
end


function drawCenterStrings(this::DrawStringUtil, graphics, stringArray, maxWidth, charHeight, x, y)
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
                    AllBinary.drawCenterString(this, graphics, string, offset, currentLength, x, y + ((index + (let old = extraLines; extraLines += Int32(1); old end)) * charHeight))
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

