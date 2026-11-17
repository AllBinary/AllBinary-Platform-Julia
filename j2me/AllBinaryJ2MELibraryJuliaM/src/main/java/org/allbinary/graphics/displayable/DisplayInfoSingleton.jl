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
# package org.allbinary.graphics.displayable

mutable struct DisplayInfoSingleton <: JObject
    logUtil::Any
    commonLabels::Any
    commonSeps::Any
    commonStrings::Any
    ORIENTATION::Any
    ADJUSTING_FOR_SCALING_IN_PORTRAIT::Any
    ADJUSTING_FOR_SCALING_IN_LANDSCAPE::Any
    last::Any
    lastHalf::Any
    full::Any
    top::Int32
    left::Int32
    xOffset::Int32
    yOffset::Int32
    scaleLargestTo::Float32
    WIDTH::Int32
    HEIGHT::Int32
    CUSTOM_WIDTH::Int32
    CUSTOM_HEIGHT::Int32
    scalableListener::Any
    displayRatio::Float32
    ratio::Float32
    SET_LAST_SIZE_METHOD_NAME::Any
    FULL_WIDTH::Any
    FULL_HEIGHT::Any
    LAST_WIDTH::Any
    LAST_HEIGHT::Any
    PORTRAIT::Any
    LANDSCAPE::Any
    displayChangeEvent::Any
    FIRE_METHOD_NAME::Any
    REASON::Any
    UPDATE_FROM_ORIENTATION_CHANGE::Any
    list::Any
    DISPLAY_INFO::Any
    FULL::Any
    LAST::Any
    LAST_HALF::Any
    DisplayInfoSingleton() = new()
end

const DisplayInfoSingleton_SINGLETONValue = Ref{Any}(nothing)
const DisplayInfoSingleton_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{DisplayInfoSingleton})
    if !DisplayInfoSingleton_SINGLETONSet[]
        DisplayInfoSingleton_SINGLETONSet[] = true
        DisplayInfoSingleton_SINGLETONValue[] = newDisplayInfoSingleton()
    end
    DisplayInfoSingleton_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{DisplayInfoSingleton}, value)
    DisplayInfoSingleton_SINGLETONSet[] = true
    DisplayInfoSingleton_SINGLETONValue[] = value
end

function initFieldsDisplayInfoSingleton(this::DisplayInfoSingleton)
    this.logUtil = nothing
    this.commonLabels = nothing
    this.commonSeps = nothing
    this.commonStrings = nothing
    this.ORIENTATION = nothing
    this.ADJUSTING_FOR_SCALING_IN_PORTRAIT = nothing
    this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE = nothing
    this.last = nothing
    this.lastHalf = nothing
    this.full = nothing
    this.top = Int32(0)
    this.left = Int32(0)
    this.xOffset = Int32(0)
    this.yOffset = Int32(0)
    this.scaleLargestTo = 0.0f0
    this.WIDTH = Int32(0)
    this.HEIGHT = Int32(0)
    this.CUSTOM_WIDTH = Int32(0)
    this.CUSTOM_HEIGHT = Int32(0)
    this.scalableListener = nothing
    this.displayRatio = 0.0f0
    this.ratio = 0.0f0
    this.SET_LAST_SIZE_METHOD_NAME = nothing
    this.FULL_WIDTH = nothing
    this.FULL_HEIGHT = nothing
    this.LAST_WIDTH = nothing
    this.LAST_HEIGHT = nothing
    this.PORTRAIT = nothing
    this.LANDSCAPE = nothing
    this.displayChangeEvent = nothing
    this.FIRE_METHOD_NAME = nothing
    this.REASON = nothing
    this.UPDATE_FROM_ORIENTATION_CHANGE = nothing
    this.list = nothing
    this.DISPLAY_INFO = nothing
    this.FULL = nothing
    this.LAST = nothing
    this.LAST_HALF = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonLabels = AllBinary.getInstance(CommonLabels)
    this.commonSeps = AllBinary.getInstance(CommonSeps)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.ORIENTATION = "ORIENTATION"
    this.ADJUSTING_FOR_SCALING_IN_PORTRAIT = "Adjusting for Scaling in portrait display ratio: "
    this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE = "Adjusting for Scaling in landscape display ratio: "
    this.last = jNewArray(Int32, Int32(4), Int32(0))
    this.lastHalf = jNewArray(Int32, Int32(4), Int32(0))
    this.full = jNewArray(Int32, Int32(4), Int32(0))
    this.top = Int32(0)
    this.left = Int32(0)
    this.xOffset = Int32(0)
    this.yOffset = Int32(0)
    this.scaleLargestTo = 0.0f0
    this.WIDTH = Int32(0)
    this.HEIGHT = Int32(1)
    this.CUSTOM_WIDTH = Int32(2)
    this.CUSTOM_HEIGHT = Int32(3)
    this.scalableListener = newBaseScalable()
    this.displayRatio = 0.0f0
    this.ratio = 1.0f0
    this.SET_LAST_SIZE_METHOD_NAME = "setLastSize"
    this.FULL_WIDTH = " FullWidth: "
    this.FULL_HEIGHT = " FullHeight: "
    this.LAST_WIDTH = "LastWidth: "
    this.LAST_HEIGHT = " LastHeight: "
    this.PORTRAIT = "Portrait"
    this.LANDSCAPE = "Landscape"
    this.displayChangeEvent = newDisplayChangeEvent(this)
    this.FIRE_METHOD_NAME = "fire"
    this.REASON = "reason: "
    this.UPDATE_FROM_ORIENTATION_CHANGE = "Updating from Orientation Change "
    this.list = newBasicArrayListD()
    this.DISPLAY_INFO = "Display Info: "
    this.FULL = "full"
    this.LAST = "last"
    this.LAST_HALF = "lastHalf"
    nothing
end


function getInstance(::Type{DisplayInfoSingleton})
        return staticGet_SINGLETON(DisplayInfoSingleton)
end


function initDisplayInfoSingleton(this::DisplayInfoSingleton)
        initFieldsDisplayInfoSingleton(this)
        local size::Int32 = Int32(Base.length(this.last))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            this.last[index + 1] = Int32(0)
            this.lastHalf[index + 1] = Int32(0)
            this.full[index + 1] = Int32(0)
            finally
                index += Int32(1)
            end
            end
        end
        if AllBinary.isAndroid(AndroidUtil)
            this.scaleLargestTo = 640.0f0
        else
            this.scaleLargestTo = 1080.0f0
        end
        nothing
end

function newDisplayInfoSingleton()
    this = DisplayInfoSingleton()
    initDisplayInfoSingleton(this)
    this
end


function getLastHalf(this::DisplayInfoSingleton)
        return this.lastHalf
end


function getLast(this::DisplayInfoSingleton)
        return this.last
end


function getFull(this::DisplayInfoSingleton)
        return this.full
end


function getScaleLargestTo(this::DisplayInfoSingleton)
        return this.scaleLargestTo
end


function setScaleLargestTo(this::DisplayInfoSingleton, scaleLargestTo)
        this.scaleLargestTo = Float32(scaleLargestTo)
        nothing
end


function setLastSize(this::DisplayInfoSingleton, aLastWidth, aLastHeight, reason)
        if this.full[this.WIDTH + 1] != aLastWidth || this.full[this.HEIGHT + 1] != aLastHeight
            AllBinary.setLastSizeForce(this, aLastWidth, aLastHeight, reason)
        end
        nothing
end


function setLastSizeForce(this::DisplayInfoSingleton, aLastWidth, aLastHeight, reason)
        local stringMaker = newStringMaker()
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(stringMaker, AllBinary.getInstance(CommonLabels).START_LABEL), reason)), this, this.SET_LAST_SIZE_METHOD_NAME)
        local aFullWidth::Int32 = aLastWidth
        local aFullHeight::Int32 = aLastHeight
        AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.appendint(AllBinary.append(AllBinary.appendint(AllBinary.append(stringMaker, this.FULL_WIDTH), aFullWidth), this.FULL_HEIGHT), aFullHeight), AllBinary.toString(this))), this, this.SET_LAST_SIZE_METHOD_NAME)
        local operatingSystemInterface = AllBinary.getOperatingSystemInstance(AllBinary.getInstance(OperatingSystemFactory))
        if AllBinary.isOverScan(operatingSystemInterface)
            aLastWidth = aLastWidth * AllBinary.getOverScanXPercent(operatingSystemInterface) ÷ Int32(100)
            aLastHeight = aLastHeight * AllBinary.getOverScanYPercent(operatingSystemInterface) ÷ Int32(100)
        end
        if AllBinary.isScalable(operatingSystemInterface)
            if AllBinary.isPortraitWH(this, aLastWidth, aLastHeight)
                if Float32(aLastHeight) > this.scaleLargestTo
                    this.displayRatio = this.scaleLargestTo ÷ Float32(aLastHeight)
                    this.ratio = Float32(aLastHeight) ÷ this.scaleLargestTo
                    AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                    AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendfloat(AllBinary.append(stringMaker, this.ADJUSTING_FOR_SCALING_IN_PORTRAIT), this.displayRatio)), this, this.SET_LAST_SIZE_METHOD_NAME)
                    aLastWidth = (jToInt32((Float32(aLastWidth) * this.displayRatio)) % Int32)
                    aLastHeight = (jToInt32((Float32(aLastHeight) * this.displayRatio)) % Int32)
                    AllBinary.scale(this.scalableListener, this.ratio)
                else
                    this.ratio = 1.0f0
                    AllBinary.scale(this.scalableListener, this.ratio)
                end
            else
                if Float32(aLastWidth) > this.scaleLargestTo
                    this.displayRatio = this.scaleLargestTo ÷ Float32(aLastWidth)
                    this.ratio = Float32(aLastWidth) ÷ this.scaleLargestTo
                    AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                    AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendfloat(AllBinary.append(stringMaker, this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE), this.displayRatio)), this, this.SET_LAST_SIZE_METHOD_NAME)
                    aLastWidth = (jToInt32((Float32(aLastWidth) * this.displayRatio)) % Int32)
                    aLastHeight = (jToInt32((Float32(aLastHeight) * this.displayRatio)) % Int32)
                    AllBinary.scale(this.scalableListener, this.ratio)
                else
                    this.ratio = 1.0f0
                    AllBinary.scale(this.scalableListener, this.ratio)
                end
            end
        end
        AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(AllBinary.appendint(AllBinary.append(stringMaker, this.LAST_WIDTH), aLastWidth), this.LAST_HEIGHT), aLastHeight)), this, this.SET_LAST_SIZE_METHOD_NAME)
        this.xOffset = aFullWidth - aLastWidth
        this.yOffset = aFullHeight - aLastHeight
        this.left = AllBinary.getLeft(this.scalableListener, this.xOffset)
        this.top = AllBinary.getTop(this.scalableListener, this.yOffset)
        this.full[this.WIDTH + 1] = aFullWidth
        this.full[this.HEIGHT + 1] = aFullHeight
        this.last[this.WIDTH + 1] = aLastWidth
        this.lastHalf[this.WIDTH + 1] = (this.last[this.WIDTH + 1] >> Int32(1))
        this.last[this.HEIGHT + 1] = aLastHeight
        this.lastHalf[this.HEIGHT + 1] = (this.last[this.HEIGHT + 1] >> Int32(1))
        AllBinary.setCustom(AllBinary.getInstance(SWTJOGLProcessor), aLastWidth, aLastHeight, this.ratio)
        AllBinary.add(this, this.SET_LAST_SIZE_METHOD_NAME)
        nothing
end


function isPortraitWH(this::DisplayInfoSingleton, lastWidth, lastHeight)
        if lastHeight > lastWidth
            return true
        else
            return false
        end
end


function isPortrait(this::DisplayInfoSingleton)
        return AllBinary.isPortraitWH(this, this.last[this.WIDTH + 1], this.last[this.HEIGHT + 1])
end


function add(this::DisplayInfoSingleton, reason)
        local stringMaker = newStringMaker()
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(stringMaker, this.REASON), reason)), this, this.FIRE_METHOD_NAME)
        AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
        AllBinary.putF(this.logUtil, AllBinary.toStringAppend(this, stringMaker), this, this.FIRE_METHOD_NAME)
        AllBinary.add(this.list, reason)
        nothing
end


function process(this::DisplayInfoSingleton)
        try
            if AllBinary.size(this.list) > Int32(0)
                AllBinary.processForced(this)
            end
            AllBinary.clear(this.list)
        catch e
            AllBinary.putOE(PreLogUtil, this.commonStrings.EXCEPTION, this, this.FIRE_METHOD_NAME, e)
        end
        nothing
end


function processForced(this::DisplayInfoSingleton)
        try
            local swtJOGLProcessor = AllBinary.getInstance(SWTJOGLProcessor)
            AllBinary.clear(swtJOGLProcessor)
            AllBinary.fireEvent(AllBinary.getInstance(DisplayChangeEventHandler), this.displayChangeEvent)
            AllBinary.fireEvent(AllBinary.getInstance(LastDisplayChangeEventHandler), this.displayChangeEvent)
            AllBinary.onSurfaceChanged(swtJOGLProcessor)
        catch e
            AllBinary.putOE(PreLogUtil, this.commonStrings.EXCEPTION, this, this.FIRE_METHOD_NAME, e)
        end
        nothing
end


function update(this::DisplayInfoSingleton, displayable, reason)
        local aLastWidth::Int32 = AllBinary.getWidth(displayable)
        local aLastHeight::Int32 = AllBinary.getHeight(displayable)
        local aFullWidth::Int32 = aLastWidth
        local aFullHeight::Int32 = aLastHeight
        local stringMaker = newStringMaker()
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.appendint(AllBinary.append(AllBinary.appendint(AllBinary.append(AllBinary.append(AllBinary.append(stringMaker, AllBinary.getInstance(CommonLabels).START_LABEL), reason), this.LAST_WIDTH), aLastWidth), this.LAST_HEIGHT), aLastHeight), this.commonSeps.SPACE), AllBinary.toString(this))), this, this.commonStrings.UPDATE)
        if aLastWidth > Int32(0) && aLastHeight > Int32(0)
            local features = AllBinary.getInstance(Features)
            local openGLFeatureFactory = AllBinary.getInstance(OpenGLFeatureFactory)
            if !AllBinary.isDefault(features, openGLFeatureFactory.OPENGL) || this.last[this.WIDTH + 1] != aLastWidth || this.last[this.HEIGHT + 1] != aLastHeight
                AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(stringMaker, this.UPDATE_FROM_ORIENTATION_CHANGE)), this, this.commonStrings.UPDATE)
                local operatingSystemInterface = AllBinary.getOperatingSystemInstance(AllBinary.getInstance(OperatingSystemFactory))
                if AllBinary.isOverScan(operatingSystemInterface)
                    aLastWidth = aLastWidth * AllBinary.getOverScanXPercent(operatingSystemInterface) ÷ Int32(100)
                    aLastHeight = aLastHeight * AllBinary.getOverScanYPercent(operatingSystemInterface) ÷ Int32(100)
                end
                if AllBinary.isScalable(operatingSystemInterface)
                    if AllBinary.isPortraitWH(this, aLastWidth, aLastHeight)
                        if Float32(aLastHeight) > this.scaleLargestTo
                            this.displayRatio = this.scaleLargestTo ÷ Float32(aLastHeight)
                            this.ratio = Float32(aLastHeight) ÷ this.scaleLargestTo
                            AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendfloat(AllBinary.append(stringMaker, this.ADJUSTING_FOR_SCALING_IN_PORTRAIT), this.displayRatio)), this, this.commonStrings.UPDATE)
                            aLastWidth = (jToInt32((Float32(aLastWidth) * this.displayRatio)) % Int32)
                            aLastHeight = (jToInt32((Float32(aLastHeight) * this.displayRatio)) % Int32)
                            AllBinary.scale(this.scalableListener, this.ratio)
                        else
                            this.ratio = 1.0f0
                            AllBinary.scale(this.scalableListener, this.ratio)
                        end
                    else
                        if Float32(aLastWidth) > this.scaleLargestTo
                            this.displayRatio = this.scaleLargestTo ÷ Float32(aLastWidth)
                            this.ratio = Float32(aLastWidth) ÷ this.scaleLargestTo
                            AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendfloat(AllBinary.append(stringMaker, this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE), this.displayRatio)), this, this.commonStrings.UPDATE)
                            aLastWidth = (jToInt32((Float32(aLastWidth) * this.displayRatio)) % Int32)
                            aLastHeight = (jToInt32((Float32(aLastHeight) * this.displayRatio)) % Int32)
                            AllBinary.scale(this.scalableListener, this.ratio)
                        else
                            this.ratio = 1.0f0
                            AllBinary.scale(this.scalableListener, this.ratio)
                        end
                    end
                end
                AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(AllBinary.appendint(AllBinary.append(AllBinary.append(stringMaker, this.UPDATE_FROM_ORIENTATION_CHANGE), this.LAST_WIDTH), aLastWidth), this.LAST_HEIGHT), aLastHeight)), this, this.commonStrings.UPDATE)
                this.xOffset = aFullWidth - aLastWidth
                this.yOffset = aFullHeight - aLastHeight
                this.left = AllBinary.getLeft(this.scalableListener, this.xOffset)
                this.top = AllBinary.getTop(this.scalableListener, this.yOffset)
                this.full[this.WIDTH + 1] = aFullWidth
                this.full[this.HEIGHT + 1] = aFullHeight
                this.last[this.WIDTH + 1] = aLastWidth
                this.lastHalf[this.WIDTH + 1] = (this.last[this.WIDTH + 1] >> Int32(1))
                this.last[this.HEIGHT + 1] = aLastHeight
                this.lastHalf[this.HEIGHT + 1] = (this.last[this.HEIGHT + 1] >> Int32(1))
                AllBinary.setCustom(AllBinary.getInstance(SWTJOGLProcessor), aLastWidth, aLastHeight, this.ratio)
                AllBinary.add(this, this.commonStrings.UPDATE)
            end
        end
        nothing
end


function toString(this::DisplayInfoSingleton)
        local stringBuffer = newStringMaker()
        return AllBinary.toStringAppend(this, stringBuffer)
end


function toStringAppend(this::DisplayInfoSingleton, stringBuffer)
        AllBinary.append(stringBuffer, this.DISPLAY_INFO)
        AllBinary.append(stringBuffer, this.FULL)
        AllBinary.append(stringBuffer, this.commonLabels.WIDTH_LABEL)
        AllBinary.appendint(stringBuffer, this.full[this.WIDTH + 1])
        AllBinary.append(stringBuffer, this.commonSeps.SPACE)
        AllBinary.append(stringBuffer, this.FULL)
        AllBinary.append(stringBuffer, this.commonLabels.HEIGHT_LABEL)
        AllBinary.appendint(stringBuffer, this.full[this.HEIGHT + 1])
        AllBinary.append(stringBuffer, this.commonSeps.SPACE)
        AllBinary.append(stringBuffer, this.LAST)
        AllBinary.append(stringBuffer, this.commonLabels.WIDTH_LABEL)
        AllBinary.appendint(stringBuffer, this.last[this.WIDTH + 1])
        AllBinary.append(stringBuffer, this.commonSeps.SPACE)
        AllBinary.append(stringBuffer, this.LAST)
        AllBinary.append(stringBuffer, this.commonLabels.HEIGHT_LABEL)
        AllBinary.appendint(stringBuffer, this.last[this.HEIGHT + 1])
        AllBinary.append(stringBuffer, this.commonSeps.SPACE)
        AllBinary.append(stringBuffer, this.LAST_HALF)
        AllBinary.append(stringBuffer, this.commonLabels.WIDTH_LABEL)
        AllBinary.appendint(stringBuffer, this.lastHalf[this.WIDTH + 1])
        AllBinary.append(stringBuffer, this.commonSeps.SPACE)
        AllBinary.append(stringBuffer, this.LAST_HALF)
        AllBinary.append(stringBuffer, this.commonLabels.HEIGHT_LABEL)
        AllBinary.appendint(stringBuffer, this.lastHalf[this.HEIGHT + 1])
        AllBinary.append(stringBuffer, this.commonSeps.SPACE)
        AllBinary.append(stringBuffer, (AllBinary.isPortrait(this) ? this.PORTRAIT : this.LANDSCAPE))
        return AllBinary.toString(stringBuffer)
end


function getTop(this::DisplayInfoSingleton)
        return this.top
end


function getLeft(this::DisplayInfoSingleton)
        return this.left
end


function getLastWidth(this::DisplayInfoSingleton)
        return this.last[this.WIDTH + 1]
end


function getLastHeight(this::DisplayInfoSingleton)
        return this.last[this.HEIGHT + 1]
end


function getLastHalfWidth(this::DisplayInfoSingleton)
        return this.lastHalf[this.WIDTH + 1]
end


function getLastHalfHeight(this::DisplayInfoSingleton)
        return this.lastHalf[this.HEIGHT + 1]
end


function getCustomLastWidth(this::DisplayInfoSingleton)
        return this.last[this.CUSTOM_WIDTH + 1]
end


function getCustomLastHeight(this::DisplayInfoSingleton)
        return this.last[this.CUSTOM_HEIGHT + 1]
end


function getRawLastWidth(this::DisplayInfoSingleton)
        return this.last[this.WIDTH + 1]
end


function getRawLastHeight(this::DisplayInfoSingleton)
        return this.last[this.HEIGHT + 1]
end


function setCustom(this::DisplayInfoSingleton, width, height)
        this.last[this.CUSTOM_WIDTH + 1] = width
        this.lastHalf[this.CUSTOM_WIDTH + 1] = (this.last[this.CUSTOM_WIDTH + 1] >> Int32(1))
        this.last[this.CUSTOM_HEIGHT + 1] = height
        this.lastHalf[this.CUSTOM_HEIGHT + 1] = (this.last[this.CUSTOM_HEIGHT + 1] >> Int32(1))
        nothing
end


function setScalableListener(this::DisplayInfoSingleton, scalableListener)
        this.scalableListener = scalableListener
        nothing
end


function getScalableListener(this::DisplayInfoSingleton)
        return this.scalableListener
end


function getRatio(this::DisplayInfoSingleton)
        return this.ratio
end


function getDisplayRatio(this::DisplayInfoSingleton)
        return this.displayRatio
end


function setOffset(this::DisplayInfoSingleton, left, top)
        this.left = left
        nothing
end


function getxOffset(this::DisplayInfoSingleton)
        return this.xOffset
end


function getyOffset(this::DisplayInfoSingleton)
        return this.yOffset
end

