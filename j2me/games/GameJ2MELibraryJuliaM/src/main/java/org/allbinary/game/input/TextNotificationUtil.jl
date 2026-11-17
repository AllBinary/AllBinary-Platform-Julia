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
# package org.allbinary.game.input

mutable struct TextNotificationUtil <: JObject
    TWO::Any
    FALSE::Any
    gameNotificationEventHandler::Any
    TextNotificationUtil() = new()
end

const TextNotificationUtil_instanceValue = Ref{Any}(nothing)
const TextNotificationUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{TextNotificationUtil})
    if !TextNotificationUtil_instanceSet[]
        TextNotificationUtil_instanceSet[] = true
        TextNotificationUtil_instanceValue[] = newTextNotificationUtil()
    end
    TextNotificationUtil_instanceValue[]
end
function staticSet_instance(::Type{TextNotificationUtil}, value)
    TextNotificationUtil_instanceSet[] = true
    TextNotificationUtil_instanceValue[] = value
end

function initFieldsTextNotificationUtil(this::TextNotificationUtil)
    this.TWO = nothing
    this.FALSE = nothing
    this.gameNotificationEventHandler = nothing
    this.TWO = AllBinary.getAt(AllBinary.getInstance(SmallIntegerSingletonFactory), Int32(2))
    this.FALSE = AllBinary.getInstance(BooleanFactory).FALSE
    this.gameNotificationEventHandler = AllBinary.getInstance(GameNotificationEventHandler)
    nothing
end

function initTextNotificationUtil(this::TextNotificationUtil)
    initFieldsTextNotificationUtil(this)
end

function newTextNotificationUtil()
    this = TextNotificationUtil()
    initTextNotificationUtil(this)
    this
end


function getInstance(::Type{TextNotificationUtil})
        return staticGet_instance(TextNotificationUtil)
end


function fireError(this::TextNotificationUtil, message)
        AllBinary.add(AllBinary.getInstance(PrimaryPlayerQueueFactory), AllBinary.getInstance(ErrorSound))
        AllBinary.fire(this, message)
        nothing
end


function fireNew(this::TextNotificationUtil, message)
        AllBinary.add(AllBinary.getInstance(PrimaryPlayerQueueFactory), AllBinary.getInstance(SelectSound))
        AllBinary.fire(this, message)
        nothing
end


function fireSuccess(this::TextNotificationUtil, message)
        AllBinary.add(AllBinary.getInstance(PrimaryPlayerQueueFactory), AllBinary.getInstance(SelectSound))
        AllBinary.fire(this, message)
        nothing
end


function fire(this::TextNotificationUtil, message)
        local gameNotificationEvent = newGameNotificationEvent(this, message, this.TWO, AllBinary.getInstance(BasicColorFactory).RED, this.FALSE)
        AllBinary.fireEvent(this.gameNotificationEventHandler, gameNotificationEvent)
        nothing
end

