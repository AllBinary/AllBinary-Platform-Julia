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
# package org.allbinary.logic.system.security.licensing

mutable struct LockedFeatureNotificationUtil <: JObject
    gameNotificationEvent::Any
    LockedFeatureNotificationUtil() = new()
end

const LockedFeatureNotificationUtil_instanceValue = Ref{Any}(nothing)
const LockedFeatureNotificationUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{LockedFeatureNotificationUtil})
    if !LockedFeatureNotificationUtil_instanceSet[]
        LockedFeatureNotificationUtil_instanceSet[] = true
        LockedFeatureNotificationUtil_instanceValue[] = newLockedFeatureNotificationUtil()
    end
    LockedFeatureNotificationUtil_instanceValue[]
end
function staticSet_instance(::Type{LockedFeatureNotificationUtil}, value)
    LockedFeatureNotificationUtil_instanceSet[] = true
    LockedFeatureNotificationUtil_instanceValue[] = value
end

function initFieldsLockedFeatureNotificationUtil(this::LockedFeatureNotificationUtil)
    this.gameNotificationEvent = nothing
    this.gameNotificationEvent = newGameNotificationEvent(this, AllBinary.getInstance(LicenseStrings).LOCKED, AllBinary.getAt(AllBinary.getInstance(SmallIntegerSingletonFactory), Int32(3)), AllBinary.getInstance(BasicColorFactory).RED, AllBinary.getInstance(BooleanFactory).FALSE)
    nothing
end

function initLockedFeatureNotificationUtil(this::LockedFeatureNotificationUtil)
    initFieldsLockedFeatureNotificationUtil(this)
end

function newLockedFeatureNotificationUtil()
    this = LockedFeatureNotificationUtil()
    initLockedFeatureNotificationUtil(this)
    this
end


function getInstance(::Type{LockedFeatureNotificationUtil})
        return staticGet_instance(LockedFeatureNotificationUtil)
end


function fire(this::LockedFeatureNotificationUtil)
        AllBinary.add(AllBinary.getInstance(PrimaryPlayerQueueFactory), AllBinary.getInstance(ErrorSound))
        AllBinary.fireEvent(AllBinary.getInstance(GameNotificationEventHandler), this.gameNotificationEvent)
        nothing
end


function fireWithColor(this::LockedFeatureNotificationUtil, basicColor)
        AllBinary.add(AllBinary.getInstance(PrimaryPlayerQueueFactory), AllBinary.getInstance(ErrorSound))
        AllBinary.setBasicColorP(this.gameNotificationEvent, basicColor)
        AllBinary.fireEvent(AllBinary.getInstance(GameNotificationEventHandler), this.gameNotificationEvent)
        nothing
end

