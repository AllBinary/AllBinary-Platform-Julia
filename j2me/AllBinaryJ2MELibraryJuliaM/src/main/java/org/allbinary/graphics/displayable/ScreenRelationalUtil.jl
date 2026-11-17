# Generated Code Do Not Modify
# package org.allbinary.graphics.displayable

mutable struct ScreenRelationalUtil <: JObject
    ScreenRelationalUtil() = new()
end

const ScreenRelationalUtil_instanceValue = Ref{Any}(nothing)
const ScreenRelationalUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{ScreenRelationalUtil})
    if !ScreenRelationalUtil_instanceSet[]
        ScreenRelationalUtil_instanceSet[] = true
        ScreenRelationalUtil_instanceValue[] = newScreenRelationalUtil()
    end
    ScreenRelationalUtil_instanceValue[]
end
function staticSet_instance(::Type{ScreenRelationalUtil}, value)
    ScreenRelationalUtil_instanceSet[] = true
    ScreenRelationalUtil_instanceValue[] = value
end

function initFieldsScreenRelationalUtil(this::ScreenRelationalUtil)
    nothing
end

function initScreenRelationalUtil(this::ScreenRelationalUtil)
    initFieldsScreenRelationalUtil(this)
end

function newScreenRelationalUtil()
    this = ScreenRelationalUtil()
    initScreenRelationalUtil(this)
    this
end


function getInstance(::Type{ScreenRelationalUtil})
        return staticGet_instance(ScreenRelationalUtil)
end


function getScaleImage(this::ScreenRelationalUtil, image)
        return AllBinary.getScaleWH(this, AllBinary.getWidth(image), AllBinary.getHeight(image))
end


function getScaleWH(this::ScreenRelationalUtil, aWidth, aHeight)
        return AllBinary.getScaleWHA(this, aWidth, aHeight, Int32(20))
end


function getScaleWHA(this::ScreenRelationalUtil, aWidth, aHeight, add)
        local displayInfoSingleton = AllBinary.getInstance(DisplayInfoSingleton)
        local last = AllBinary.getLast(displayInfoSingleton)
        local width::Float32 = Float32(last[displayInfoSingleton.WIDTH + 1])
        local height::Float32 = Float32(last[displayInfoSingleton.HEIGHT + 1])
        local largestSize::Float32 = width
        if largestSize < height
            largestSize = height
        end
        local scale::Float32 = (largestSize) ÷ Float32(aWidth)
        return scale
end


function getScaledHeight(this::ScreenRelationalUtil, aWidth, aHeight)
        return (jToInt32((AllBinary.getScaleWH(this, aWidth, aHeight) * Float32(aHeight))) % Int32)
end


function getScaledHeightAdd(this::ScreenRelationalUtil, aWidth, aHeight, add)
        return (jToInt32((AllBinary.getScaleWHA(this, aWidth, aHeight, add) * Float32(aHeight))) % Int32)
end

