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

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BasicPopupMenuPaintable <: JObject
    basicSetColorUtil::Any
    drawStringUtil::Any
    label::Any
    foregroundBasicColor::Any
    myFontProcessor::Any
    rectangle::Any
    BORDER::Int32
    heightOffset::Int32
    offset::Int32
    animationInterface::Any
    BasicPopupMenuPaintable() = new()
end

const BasicPopupMenuPaintable_NAMEValue = Ref{Any}(nothing)
const BasicPopupMenuPaintable_NAMESet = Ref(false)
function staticGet_NAME(::Type{BasicPopupMenuPaintable})
    if !BasicPopupMenuPaintable_NAMESet[]
        BasicPopupMenuPaintable_NAMESet[] = true
        BasicPopupMenuPaintable_NAMEValue[] = "MENU"
    end
    BasicPopupMenuPaintable_NAMEValue[]
end
function staticSet_NAME(::Type{BasicPopupMenuPaintable}, value)
    BasicPopupMenuPaintable_NAMESet[] = true
    BasicPopupMenuPaintable_NAMEValue[] = value
end

function initFieldsBasicPopupMenuPaintable(this::BasicPopupMenuPaintable)
    this.basicSetColorUtil = nothing
    this.drawStringUtil = nothing
    this.label = nothing
    this.foregroundBasicColor = nothing
    this.myFontProcessor = nothing
    this.rectangle = nothing
    this.BORDER = Int32(0)
    this.heightOffset = Int32(0)
    this.offset = Int32(0)
    this.animationInterface = nothing
    this.basicSetColorUtil = AllBinary.getInstance(BasicColorSetUtil)
    this.drawStringUtil = AllBinary.getInstance(DrawVerticalStringUtil)
    
    
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    
    this.BORDER = Int32(0)
    this.heightOffset = Int32(0)
    this.offset = Int32(0)
    this.animationInterface = nothing
    nothing
end


function initBasicPopupMenuPaintable(this::BasicPopupMenuPaintable, rectangle, backgroundBasicColor, foregroundBasicColor)
        initPaintable(this)
        initFieldsBasicPopupMenuPaintable(this)
        this.foregroundBasicColor = foregroundBasicColor
        this.label = staticGet_NAME(BasicPopupMenuPaintable)
        this.rectangle = rectangle
        if AllBinary.isJ2ME(J2MEUtil) || AllBinary.isHTML(J2MEUtil)
            this.animationInterface = AllBinary.getInstance(AllBinary.getFactoryInstance(NullAnimationFactory), Int32(0))
        else
            this.animationInterface = newRectangleFilledAnimation(AllBinary.getWidth(this.rectangle), AllBinary.getHeight(this.rectangle), AllBinary.getInstance(BasicColorFactory).TRANSPARENT_GREY)
        end
        AllBinary.init(this, rectangle)
        nothing
end

function newBasicPopupMenuPaintable(rectangle, backgroundBasicColor, foregroundBasicColor)
    this = BasicPopupMenuPaintable()
    initBasicPopupMenuPaintable(this, rectangle, backgroundBasicColor, foregroundBasicColor)
    this
end


function updateMeasurement(this::BasicPopupMenuPaintable, graphics)
        local font = AllBinary.getFont(graphics)
        local features = AllBinary.getInstance(Features)
        local isOpenGL::Bool = AllBinary.isDefault(features, AllBinary.getInstance(OpenGLFeatureFactory).OPENGL)
        AllBinary.updateMeasurement(this.drawStringUtil, graphics, this.label)
        local BORDER::Int32 = Int32(0)
        if AllBinary.isHTML(J2MEUtil) || isOpenGL
            BORDER = AllBinary.defaultCharWidth(MyFontProcessor, font) ÷ Int32(2)
        elseif AllBinary.isAndroid(AndroidUtil) || AllBinary.isJ2SE(J2MEUtil) || staticGet_isSWT(SWTUtil)
            BORDER = AllBinary.defaultCharWidth(MyFontProcessor, font)
        else
            BORDER = AllBinary.defaultCharWidth(MyFontProcessor, font) * Int32(2)
        end
        this.BORDER = BORDER
        this.heightOffset = AllBinary.getHeight(this.rectangle) - (AllBinary.getHeight(font) * AllBinary.length(staticGet_NAME(BasicPopupMenuPaintable)))
        if AllBinary.isAnyThreed(AllBinary.getInstance(OpenGLFeatureUtil))
            this.heightOffset -= AllBinary.getHeight(font) + Int32(2)
            if AllBinary.isAndroid(AndroidUtil)
                this.heightOffset = AllBinary.getHeight(font)
            else
                this.heightOffset -= AllBinary.getHeight(font) + Int32(2)
            end
        end
        this.offset = (this.heightOffset >> Int32(1)) + ((AllBinary.isJOGL(AllBinary.getInstance(SWTJOGLProcessor)) ? Int32(4) : Int32(0)))
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function init(this::BasicPopupMenuPaintable, rectangle)
        this.rectangle = rectangle
        local width::Int32 = AllBinary.getWidth(this.rectangle)
        local height::Int32 = AllBinary.getHeight(this.rectangle)
        if AllBinary.isJ2ME(J2MEUtil) || AllBinary.isHTML(J2MEUtil)
            nothing
        else
            local rectangleFilledAnimation = (this.animationInterface)
            AllBinary.setWidth(rectangleFilledAnimation, width)
            AllBinary.setHeight(rectangleFilledAnimation, height)
        end
        nothing
end


function paint(this::BasicPopupMenuPaintable, graphics)
        AllBinary.process(this.myFontProcessor, graphics)
        local point = AllBinary.getPoint(this.rectangle)
        local x::Int32 = AllBinary.getX(point)
        local y::Int32 = AllBinary.getY(point)
        local width::Int32 = AllBinary.getWidth(this.rectangle)
        local height::Int32 = AllBinary.getHeight(this.rectangle)
        AllBinary.paintXY(this.animationInterface, graphics, x, y)
        AllBinary.setBasicColorP(this.basicSetColorUtil, graphics, this.foregroundBasicColor)
        AllBinary.paintVerticle(this.drawStringUtil, graphics, this.label, x + this.BORDER, y + this.offset, Int32(0))
        AllBinary.drawRect(graphics, x, y, width, height)
        nothing
end

