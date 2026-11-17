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
# package org.allbinary.game.graphics.hud

mutable struct BasicHud <: JObject
    logUtil::Any
    commonStrings::Any
    canvasStrings::Any
    basicSetColorUtil::Any
    displayInfo::Any
    updateMyFontProcessor::Any
    myFontProcessor::Any
    location::Int32
    direction::Int32
    bufferZone::Int32
    bufferZoneY::Int32
    hudGraphicsPosition::Any
    x::Int32
    y::Int32
    basicColor::Any
    color::Int32
    updateMaxWidth::Int32
    updateMaxHeight::Int32
    offsetY::Int32
    BasicHud() = new()
end


function initFieldsBasicHud(this::BasicHud)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.canvasStrings = nothing
    this.basicSetColorUtil = nothing
    this.displayInfo = nothing
    this.updateMyFontProcessor = nothing
    this.myFontProcessor = nothing
    this.location = Int32(0)
    this.direction = Int32(0)
    this.bufferZone = Int32(0)
    this.bufferZoneY = Int32(0)
    this.hudGraphicsPosition = nothing
    this.x = Int32(0)
    this.y = Int32(0)
    this.basicColor = nothing
    this.color = Int32(0)
    this.updateMaxWidth = Int32(0)
    this.updateMaxHeight = Int32(0)
    this.offsetY = Int32(0)
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.canvasStrings = AllBinary.getInstance(CanvasStrings)
    this.basicSetColorUtil = AllBinary.getInstance(BasicColorSetUtil)
    this.displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    this.location = Int32(0)
    this.direction = Int32(0)
    this.bufferZone = Int32(0)
    this.bufferZoneY = Int32(0)
    this.hudGraphicsPosition = staticGet_NULL_HUD_GRAPHICS_POSITION(HudGraphicsPosition)
    this.x = Int32(0)
    this.y = Int32(0)
    this.basicColor = AllBinary.getInstance(BasicColorFactory).BLACK
    
    this.updateMaxWidth = Int32(0)
    this.updateMaxHeight = Int32(0)
    this.offsetY = Int32(0)
    nothing
end


function initBasicHud(this::BasicHud, location, direction, bufferZone, basicColor)
        initFieldsBasicHud(this)
        AllBinary.setLocation(this, location)
        AllBinary.setDirection(this, direction)
        AllBinary.setBufferZone(this, bufferZone)
        AllBinary.onDisplayChangeEvent(this, AllBinary.getInstance(DisplayInfoSingleton).displayChangeEvent)
        AllBinary.setBasicColorP(this, basicColor)
        this.color = AllBinary.intValue(basicColor)
        nothing
end

function newBasicHud(location, direction, bufferZone, basicColor)
    this = BasicHud()
    initBasicHud(this, location, direction, bufferZone, basicColor)
    this
end


function updateMeasurement(this::BasicHud, graphics)
        try
            this.hudGraphicsPosition = AllBinary.getHudGraphicsPositionWH(this, AllBinary.getLastWidth(this.displayInfo), AllBinary.getLastHeight(this.displayInfo), this.updateMaxWidth, this.updateMaxHeight)
            this.x = AllBinary.getX(AllBinary.getPoint(this.hudGraphicsPosition))
            AllBinary.setY(this, AllBinary.getY(AllBinary.getPoint(this.hudGraphicsPosition)))
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        end
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function getLocation(this::BasicHud)
        return this.location
end


function getDirection(this::BasicHud)
        return this.direction
end


function getHudGraphicsPositionWH(this::BasicHud, width, height, maxWidth, maxHeight)
        local x::Int32 = Int32(0)
        local y::Int32 = Int32(0)
        local anchor::Int32 = Int32(0)
        local basicHudFactory = AllBinary.getInstance(BasicHudFactory)
        if basicHudFactory.BOTTOMLEFT == AllBinary.getLocation(this)
            x = this.bufferZone + Int32(2)
            y = height - maxHeight - this.bufferZone
            anchor = staticGet_BOTTOM(Graphics) & staticGet_LEFT(Graphics)
        elseif basicHudFactory.BOTTOMRIGHT == AllBinary.getLocation(this)
            x = width - maxWidth
            y = height - maxHeight - this.bufferZone
            anchor = staticGet_BOTTOM(Graphics) & staticGet_RIGHT(Graphics)
        elseif basicHudFactory.TOPLEFT == AllBinary.getLocation(this)
            x = this.bufferZone + Int32(2)
            y = this.bufferZoneY
            anchor = staticGet_TOP_LEFT(Anchor)
        elseif basicHudFactory.TOPRIGHT == AllBinary.getLocation(this)
            x = width - maxWidth
            y = this.bufferZoneY
            anchor = staticGet_TOP(Graphics) & staticGet_RIGHT(Graphics)
        elseif basicHudFactory.TOPCENTER == AllBinary.getLocation(this)
            x = ((width - maxWidth) ÷ Int32(2))
            y = this.bufferZoneY
            anchor = staticGet_TOP(Graphics) & staticGet_HCENTER(Graphics)
        elseif basicHudFactory.BOTTOMCENTER == AllBinary.getLocation(this)
            x = ((width - maxWidth) ÷ Int32(2))
            y = height - maxHeight - this.bufferZone
            anchor = staticGet_BOTTOM(Graphics) & staticGet_HCENTER(Graphics)
        elseif basicHudFactory.ABSOLUTE == AllBinary.getLocation(this)
            x = maxHeight
            y = maxWidth
            anchor = Int32(0)
        end
        return newHudGraphicsPosition(AllBinary.getPoint(this, x, y), anchor)
end


function onEvent(this::BasicHud, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function onDisplayChangeEvent(this::BasicHud, displayChangeEvent)
        this.myFontProcessor = this.updateMyFontProcessor
        nothing
end


function getPoint(this::BasicHud, x, y)
        return AllBinary.createXY(AllBinary.getInstance(PointFactory), x, y)
end


function getBufferZone(this::BasicHud)
        return this.bufferZone
end


function setBufferZone(this::BasicHud, bufferZone)
        this.bufferZone = bufferZone
        if AllBinary.isHTML(J2MEUtil)
            this.bufferZoneY = this.bufferZone
        else
            this.bufferZoneY = this.bufferZone + Int32(5)
        end
        nothing
end


function setLocation(this::BasicHud, location)
        this.location = location
        nothing
end


function setDirection(this::BasicHud, direction)
        this.direction = direction
        nothing
end


function getHudGraphicsPosition(this::BasicHud)
        return this.hudGraphicsPosition
end


function getColor(this::BasicHud)
        return this.color
end


function getX(this::BasicHud)
        return this.x
end


function setX(this::BasicHud, x)
        this.x = x
        nothing
end


function setBasicColorP(this::BasicHud, basicColor)
        this.basicColor = basicColor
        nothing
end


function getBasicColorP(this::BasicHud)
        return this.basicColor
end


function setY(this::BasicHud, y)
        this.y = y
        nothing
end


function getY(this::BasicHud)
        return this.y
end


function paintSSO(this::BasicHud, graphics, string, string2, offset)
        AllBinary.process(this.myFontProcessor, graphics)
        AllBinary.setBasicColorP(this.basicSetColorUtil, graphics, AllBinary.getBasicColorP(this))
        AllBinary.drawString(graphics, string, this.x, AllBinary.getY(this), AllBinary.getAnchor(this.hudGraphicsPosition))
        AllBinary.drawString(graphics, string2, this.x + offset, AllBinary.getY(this), AllBinary.getAnchor(this.hudGraphicsPosition))
        nothing
end


function paintSSOO(this::BasicHud, graphics, string, string2, offset, offset2)
        AllBinary.process(this.myFontProcessor, graphics)
        AllBinary.setColor(graphics, AllBinary.getColor(this))
        AllBinary.drawString(graphics, string, this.x + offset, AllBinary.getY(this), AllBinary.getAnchor(this.hudGraphicsPosition))
        AllBinary.drawString(graphics, string2, this.x + offset2, AllBinary.getY(this), AllBinary.getAnchor(this.hudGraphicsPosition))
        nothing
end


function paintDXY(this::BasicHud, graphics, charArray, offset, len, charArray2, offset2, len2, xOffset, xOffset2)
        AllBinary.process(this.myFontProcessor, graphics)
        AllBinary.setBasicColorP(this.basicSetColorUtil, graphics, AllBinary.getBasicColorP(this))
        local y::Int32 = AllBinary.getY(this)
        AllBinary.drawChars(graphics, charArray, offset, len, this.x + xOffset, y, AllBinary.getAnchor(this.hudGraphicsPosition))
        AllBinary.drawChars(graphics, charArray2, offset2, len2, this.x + xOffset2, y, AllBinary.getAnchor(this.hudGraphicsPosition))
        nothing
end


function paintDX(this::BasicHud, graphics, charArray, offset, len, charArray2, offset2, len2, xOffset)
        AllBinary.process(this.myFontProcessor, graphics)
        AllBinary.setBasicColorP(this.basicSetColorUtil, graphics, AllBinary.getBasicColorP(this))
        local y::Int32 = AllBinary.getY(this)
        AllBinary.drawChars(graphics, charArray, offset, len, this.x, y, AllBinary.getAnchor(this.hudGraphicsPosition))
        AllBinary.drawChars(graphics, charArray2, offset2, len2, this.x + xOffset, y, AllBinary.getAnchor(this.hudGraphicsPosition))
        nothing
end


function paintOffsetAndLength(this::BasicHud, graphics, charArray, offset, len)
        AllBinary.process(this.myFontProcessor, graphics)
        AllBinary.setBasicColorP(this.basicSetColorUtil, graphics, AllBinary.getBasicColorP(this))
        local y::Int32 = AllBinary.getY(this)
        AllBinary.drawChars(graphics, charArray, offset, len, this.x, y, AllBinary.getAnchor(this.hudGraphicsPosition))
        nothing
end


function paintString(this::BasicHud, graphics, string)
        AllBinary.process(this.myFontProcessor, graphics)
        AllBinary.setBasicColorP(this.basicSetColorUtil, graphics, AllBinary.getBasicColorP(this))
        local y::Int32 = AllBinary.getY(this) + this.offsetY
        AllBinary.drawString(graphics, string, this.x, y, AllBinary.getAnchor(this.hudGraphicsPosition))
        nothing
end

