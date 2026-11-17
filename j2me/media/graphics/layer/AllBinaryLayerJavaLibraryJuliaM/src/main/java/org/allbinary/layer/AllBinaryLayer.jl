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
# package org.allbinary.layer

# extends Layer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AllBinaryLayer <: JObject
    viewPositionEvent::Any
    halfWidth::Int32
    halfHeight::Int32
    name::Any
    viewPosition::Any
    AllBinaryLayer() = new()
end

const AllBinaryLayer_NULL_ALLBINARY_LAYERValue = Ref{Any}(nothing)
const AllBinaryLayer_NULL_ALLBINARY_LAYERSet = Ref(false)
function staticGet_NULL_ALLBINARY_LAYER(::Type{AllBinaryLayer})
    if !AllBinaryLayer_NULL_ALLBINARY_LAYERSet[]
        AllBinaryLayer_NULL_ALLBINARY_LAYERSet[] = true
        AllBinaryLayer_NULL_ALLBINARY_LAYERValue[] = newAllBinaryLayer(AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SINGLETON(RectangleFactory), staticGet_NULL_VIEW_POSITION(ViewPositionBase))
    end
    AllBinaryLayer_NULL_ALLBINARY_LAYERValue[]
end
function staticSet_NULL_ALLBINARY_LAYER(::Type{AllBinaryLayer}, value)
    AllBinaryLayer_NULL_ALLBINARY_LAYERSet[] = true
    AllBinaryLayer_NULL_ALLBINARY_LAYERValue[] = value
end
const AllBinaryLayer_TYPEValue = Ref{Any}(nothing)
const AllBinaryLayer_TYPESet = Ref(false)
function staticGet_TYPE(::Type{AllBinaryLayer})
    if !AllBinaryLayer_TYPESet[]
        AllBinaryLayer_TYPESet[] = true
        AllBinaryLayer_TYPEValue[] = "Type: "
    end
    AllBinaryLayer_TYPEValue[]
end
function staticSet_TYPE(::Type{AllBinaryLayer}, value)
    AllBinaryLayer_TYPESet[] = true
    AllBinaryLayer_TYPEValue[] = value
end

function initFieldsAllBinaryLayer(this::AllBinaryLayer)
    this.viewPositionEvent = nothing
    this.halfWidth = Int32(0)
    this.halfHeight = Int32(0)
    this.name = nothing
    this.viewPosition = nothing
    this.viewPositionEvent = newViewPositionEvent(this)
    this.halfWidth = Int32(0)
    this.halfHeight = Int32(0)
    
    this.viewPosition = staticGet_NULL_VIEW_POSITION(ViewPositionBase)
    nothing
end


function initAllBinaryLayer(this::AllBinaryLayer, name, rectangle, viewPosition)
        initLayer(this, AllBinary.getWidth(rectangle), AllBinary.getHeight(rectangle))
        initFieldsAllBinaryLayer(this)
        local localName = nothing
        localName = AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(newStringMaker(), name), AllBinary.getInstance(CommonSeps).COLON), AllBinary.toHexString(Integer, AllBinary.hashCode(AllBinary.getInstance(TsUtil), this))))
        this.name = localName
        local point = AllBinary.getPoint(rectangle)
        AllBinary.setPosition(this, AllBinary.getX(point), AllBinary.getY(point), AllBinary.getZ(point))
        AllBinary.setHalfWidth(this, (AllBinary.getWidth(this) >> Int32(1)))
        AllBinary.setHalfHeight(this, (AllBinary.getHeight(this) >> Int32(1)))
        this.viewPosition = viewPosition
        AllBinary.setAllbinaryLayer(this.viewPosition, this)
        nothing
end

function newAllBinaryLayer(name, rectangle, viewPosition)
    this = AllBinaryLayer()
    initAllBinaryLayer(this, name, rectangle, viewPosition)
    this
end


function setPosition(this::AllBinaryLayer, x, y, z)
        AllBinary.setPosition(this, x, y, z)
        nothing
end


function moveDXYZ(this::AllBinaryLayer, dx, dy, dz)
        AllBinary.moveDXYZ(this, dx, dy, dz)
        nothing
end


function getXP(this::AllBinaryLayer)
        return AllBinary.getXP(this)
end


function getYP(this::AllBinaryLayer)
        return AllBinary.getYP(this)
end


function getZP(this::AllBinaryLayer)
        return AllBinary.getZP(this)
end


function getWidth(this::AllBinaryLayer)
        return AllBinary.getWidth(this)
end


function getHeight(this::AllBinaryLayer)
        return AllBinary.getHeight(this)
end


function setVisible(this::AllBinaryLayer, visible)
        AllBinary.setVisible(this, visible)
        nothing
end


function isVisible(this::AllBinaryLayer)
        return AllBinary.isVisible(this)
end


function paint(this::AllBinaryLayer, graphics)
        AllBinary.paint(this, graphics)
        nothing
end


function onChangeEvent(this::AllBinaryLayer, layerManagerEvent)
        nothing
        nothing
end


function paintThreed(this::AllBinaryLayer, graphics)
        nothing
        nothing
end


function getX2(this::AllBinaryLayer)
        return AllBinary.getXP(this) + AllBinary.getWidth(this)
end


function getY2(this::AllBinaryLayer)
        return AllBinary.getYP(this) + AllBinary.getHeight(this)
end


function getZ2(this::AllBinaryLayer)
        return (((AllBinary.getZP(this) + AllBinary.getDepth(this))) % Int32)
end


function getName(this::AllBinaryLayer)
        return this.name
end


function setHalfWidth(this::AllBinaryLayer, halfWidth)
        this.halfWidth = halfWidth
        nothing
end


function getHalfWidth(this::AllBinaryLayer)
        return this.halfWidth
end


function setHalfHeight(this::AllBinaryLayer, halfHeight)
        this.halfHeight = halfHeight
        nothing
end


function getHalfHeight(this::AllBinaryLayer)
        return this.halfHeight
end


function getHalfDepth(this::AllBinaryLayer)
        return ((AllBinary.getDepth(this)) % Int32) ÷ Int32(2)
end


function getViewPosition(this::AllBinaryLayer)
        return this.viewPosition
end


function setViewPosition(this::AllBinaryLayer, viewPosition)
        this.viewPosition = viewPosition
        nothing
end


function getGroupInterface(this::AllBinaryLayer)
        return AllBinary.getInstance(BasicGroupFactory).NONE_ARRAY
end


function implmentsTickableInterface(this::AllBinaryLayer)
        return false
end


function implmentsGameInputInterface(this::AllBinaryLayer)
        return false
end


function implmentsArtificialIntelligenceCompositeInterface(this::AllBinaryLayer)
        return false
end


function implmentsCollidableInterface(this::AllBinaryLayer)
        return false
end


function implementsThreedInterface(this::AllBinaryLayer)
        return AllBinary.isAnyThreed(AllBinary.getInstance(OpenGLFeatureUtil))
end


function getType(this::AllBinaryLayer)
        return -Int32(1)
end


function getMultiPlayerType(this::AllBinaryLayer)
        return -Int32(1)
end


function toStringAppend(this::AllBinaryLayer, stringBuffer)
        local commonSeps = AllBinary.getInstance(CommonSeps)
        local positionStrings = AllBinary.getInstance(PositionStrings)
        local commonLabels = AllBinary.getInstance(CommonLabels)
        AllBinary.append(stringBuffer, AllBinary.getName(this))
        AllBinary.append(stringBuffer, commonSeps.COLON)
        AllBinary.append(stringBuffer, staticGet_TYPE(AllBinaryLayer))
        AllBinary.appendint(stringBuffer, AllBinary.getType(this))
        AllBinary.append(stringBuffer, commonSeps.SPACE)
        AllBinary.append(stringBuffer, positionStrings.X_LABEL)
        AllBinary.appendint(stringBuffer, AllBinary.getXP(this))
        AllBinary.append(stringBuffer, commonSeps.SPACE)
        AllBinary.append(stringBuffer, positionStrings.Y_LABEL)
        AllBinary.appendint(stringBuffer, AllBinary.getYP(this))
        AllBinary.append(stringBuffer, commonSeps.SPACE)
        AllBinary.append(stringBuffer, positionStrings.Z_LABEL)
        AllBinary.appendint(stringBuffer, AllBinary.getZP(this))
        AllBinary.append(stringBuffer, commonSeps.SPACE)
        AllBinary.append(stringBuffer, commonLabels.WIDTH_LABEL)
        AllBinary.appendint(stringBuffer, AllBinary.getWidth(this))
        AllBinary.append(stringBuffer, commonSeps.SPACE)
        AllBinary.append(stringBuffer, commonLabels.HEIGHT_LABEL)
        AllBinary.appendint(stringBuffer, AllBinary.getHeight(this))
        nothing
end


function toString(this::AllBinaryLayer)
        local stringBuffer = newStringMaker()
        AllBinary.toStringAppend(this, stringBuffer)
        return AllBinary.toString(stringBuffer)
end

