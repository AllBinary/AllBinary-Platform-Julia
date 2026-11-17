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
# package org.allbinary.game.ag.layer.hud.basic

# extends GameNotificationHud: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PlayerGameNotificationHud <: JObject
    gameTickTimeDelayHelper::Any
    EMPTY_STRING::Any
    displayInfo::Any
    timeDelayHelper::Any
    circularIndexUtil::Any
    gameNotification::Any
    permanentGameNotification::Any
    setAndRemoveProcessor::Any
    nextUnremoveableProcessor::Any
    processor::Any
    PERMANENT_GAME_NOTIFICATION::Any
    lastString::Any
    string::Any
    point::Any
    width::Int32
    PlayerGameNotificationHud() = new()
end


function initFieldsPlayerGameNotificationHud(this::PlayerGameNotificationHud)
    this.gameTickTimeDelayHelper = nothing
    this.EMPTY_STRING = nothing
    this.displayInfo = nothing
    this.timeDelayHelper = nothing
    this.circularIndexUtil = nothing
    this.gameNotification = nothing
    this.permanentGameNotification = nothing
    this.setAndRemoveProcessor = nothing
    this.nextUnremoveableProcessor = nothing
    this.processor = nothing
    this.PERMANENT_GAME_NOTIFICATION = nothing
    this.lastString = nothing
    this.string = nothing
    this.point = nothing
    this.width = Int32(0)
    this.gameTickTimeDelayHelper = AllBinary.getInstance(GameTickTimeDelayHelperFactory)
    this.EMPTY_STRING = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
    this.timeDelayHelper = newTimeDelayHelper(Int32(0))
    
    this.gameNotification = newGameNotification()
    this.permanentGameNotification = newGameNotification()
    this.setAndRemoveProcessor = newSetAndRemoveProcessor(this)
    this.nextUnremoveableProcessor = newNextUnremoveableProcessor(this)
    this.processor = AllBinary.getInstance(Processor)
    this.PERMANENT_GAME_NOTIFICATION = "Permanent Game Notification: "
    this.lastString = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.string = this.EMPTY_STRING
    this.point = staticGet_NULL_CUSTOM_POINT(CustomGPoint)
    this.width = Int32(0)
    nothing
end


function initPlayerGameNotificationHud(this::PlayerGameNotificationHud, location, direction, bufferZone, basicColor)
        initGameNotificationHud(this, location, direction, bufferZone, basicColor)
        initFieldsPlayerGameNotificationHud(this)
        this.circularIndexUtil = AllBinary.createInstance(CircularIndexUtil, Int32(0))
        local gameNotificationEventHandler = AllBinary.getInstance(GameNotificationEventHandler)
        AllBinary.removeAllListeners(gameNotificationEventHandler)
        AllBinary.addListenerInterface(gameNotificationEventHandler, this)
        nothing
end

function newPlayerGameNotificationHud(location, direction, bufferZone, basicColor)
    this = PlayerGameNotificationHud()
    initPlayerGameNotificationHud(this, location, direction, bufferZone, basicColor)
    this
end


function updateMeasurement(this::PlayerGameNotificationHud, graphics)
        try
            AllBinary.updateMeasurement(this, graphics)
            local font = AllBinary.getFont(graphics)
            this.width = AllBinary.stringWidth(font, this.string)
            AllBinary.process(this.processor)
            this.processor = AllBinary.getInstance(Processor)
        catch e
            local logUtil = AllBinary.getInstance(LogUtil)
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(logUtil, commonStrings.EXCEPTION, this, commonStrings.UPDATE, e)
        end
        nothing
end


function getPoint(this::PlayerGameNotificationHud, x, y)
        this.point = AllBinary.getInstance3(CustomGPoint, Int32(0), Int32(0))
        AllBinary.setX(this.point, x)
        AllBinary.setY(this.point, y)
        return this.point
end


function add(this::PlayerGameNotificationHud, string, seconds, basicColor, permanent)
        if AllBinary.booleanValue(permanent)
            if this.lastString != string
                this.lastString = string
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.PERMANENT_GAME_NOTIFICATION), string)), this, this.commonStrings.ADD)
            end
            AllBinary.add(this.permanentGameNotification, string, seconds, basicColor)
            AllBinary.setSize(this.circularIndexUtil, AllBinary.getSize(this.permanentGameNotification))
        else
            AllBinary.add(this.gameNotification, string, seconds, basicColor)
        end
        nothing
end


function processTick(this::PlayerGameNotificationHud)
        if AllBinary.isTime(this.timeDelayHelper, this.gameTickTimeDelayHelper.startTime)
            local gameAdState = AllBinary.getCurrentInstance(AllBinary.getInstance(GameAdStateFactory))
            if AllBinary.isShowingAtLocation(gameAdState, AllBinary.getLocation(this))
                this.offsetY = -Int32(54)
            else
                this.offsetY = Int32(0)
            end
            if AllBinary.getSize(this.gameNotification) > Int32(0)
                AllBinary.setAndRemove(this)
            elseif AllBinary.getSize(this.permanentGameNotification) > Int32(0)
                AllBinary.setNextUnremoveable(this)
            else
                this.string = this.EMPTY_STRING
            end
        end
        nothing
end


function setAndRemove(this::PlayerGameNotificationHud)
        this.string = (AllBinary.removeAt(this.gameNotification.stringList, Int32(0)))
        this.processor = this.setAndRemoveProcessor
        nothing
end


function setAndRemoveProcess(this::PlayerGameNotificationHud)
        AllBinary.setX(this, (AllBinary.getLastWidth(this.displayInfo) - this.width) >> Int32(1))
        AllBinary.setX(this.point, AllBinary.getX(this))
        AllBinary.setY(this.point, AllBinary.getY(this))
        local time = (AllBinary.removeAt(this.gameNotification.timeList, Int32(0)))
        local iTime::Int32 = AllBinary.intValue(time) * Int32(1000)
        if iTime == Int32(0)
            iTime = Int32(500)
        end
        this.timeDelayHelper.delay = iTime
        AllBinary.setBasicColorP(this, (AllBinary.removeAt(this.gameNotification.colorList, Int32(0))))
        nothing
end


function setNextUnremoveable(this::PlayerGameNotificationHud)
        local index::Int32 = AllBinary.getIndex(this.circularIndexUtil)
        this.string = (this.permanentGameNotification.stringList.objectArray[index + 1])
        this.processor = this.nextUnremoveableProcessor
        nothing
end


function setNextUnremoveableProcess(this::PlayerGameNotificationHud)
        local index::Int32 = AllBinary.getIndex(this.circularIndexUtil)
        AllBinary.setX(this, (AllBinary.getLastWidth(this.displayInfo) - this.width) >> Int32(1))
        AllBinary.setX(this.point, AllBinary.getX(this))
        AllBinary.setY(this.point, AllBinary.getY(this))
        local time = (this.permanentGameNotification.timeList.objectArray[index + 1])
        this.timeDelayHelper.delay = AllBinary.intValue(time) * Int32(1000)
        AllBinary.setBasicColorP(this, (this.permanentGameNotification.colorList.objectArray[index + 1]))
        AllBinary.next(this.circularIndexUtil)
        nothing
end


function clear(this::PlayerGameNotificationHud)
        AllBinary.clear(this.gameNotification)
        AllBinary.clear(this.permanentGameNotification)
        nothing
end


function paint(this::PlayerGameNotificationHud, graphics)
        AllBinary.process(this.myFontProcessor, graphics)
        AllBinary.paintString(this, graphics, this.string)
        nothing
end

