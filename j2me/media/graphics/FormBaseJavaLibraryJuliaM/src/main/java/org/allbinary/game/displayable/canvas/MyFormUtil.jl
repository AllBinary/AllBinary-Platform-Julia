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
# package org.allbinary.game.displayable.canvas

mutable struct MyFormUtil <: JObject
    logUtil::Any
    commonStrings::Any
    popupMenuRectangle::Any
    MyFormUtil() = new()
end

const MyFormUtil_instanceValue = Ref{Any}(nothing)
const MyFormUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{MyFormUtil})
    if !MyFormUtil_instanceSet[]
        MyFormUtil_instanceSet[] = true
        MyFormUtil_instanceValue[] = newMyFormUtil()
    end
    MyFormUtil_instanceValue[]
end
function staticSet_instance(::Type{MyFormUtil}, value)
    MyFormUtil_instanceSet[] = true
    MyFormUtil_instanceValue[] = value
end

function initFieldsMyFormUtil(this::MyFormUtil)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.popupMenuRectangle = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.popupMenuRectangle = staticGet_SINGLETON(RectangleFactory)
    nothing
end

function initMyFormUtil(this::MyFormUtil)
    initFieldsMyFormUtil(this)
end

function newMyFormUtil()
    this = MyFormUtil()
    initMyFormUtil(this)
    this
end


function getInstance(::Type{MyFormUtil})
        return staticGet_instance(MyFormUtil)
end


function updateMeasurement(this::MyFormUtil, graphics)
        local font = AllBinary.getFont(graphics)
        local displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
        local features = AllBinary.getInstance(Features)
        local isOpenGL::Bool = AllBinary.isDefault(features, AllBinary.getInstance(OpenGLFeatureFactory).OPENGL)
        local TOTAL_CHAR_WIDTH::Int32 = (AllBinary.isJOGL(AllBinary.getInstance(SWTJOGLProcessor)) && isOpenGL ? Int32(2) : Int32(3))
        local width::Int32 = AllBinary.defaultStringWidth(MyFontProcessor, font, TOTAL_CHAR_WIDTH)
        local pointFactory = AllBinary.getInstance(PointFactory)
        if AllBinary.getLastHeight(displayInfo) < Int32(320)
            this.popupMenuRectangle = newRectangle(AllBinary.createXY(pointFactory, Int32(0), Int32(25)), width, (AllBinary.getHeight(font) * Int32(4)) + Int32(2))
        else
            this.popupMenuRectangle = newRectangle(AllBinary.createXY(pointFactory, Int32(0), AllBinary.getLastHalfHeight(displayInfo) - Int32(70)), width, (AllBinary.getHeight(font) * Int32(5)))
        end
        nothing
end


function getPopupMenuRectangle(this::MyFormUtil)
        return this.popupMenuRectangle
end

