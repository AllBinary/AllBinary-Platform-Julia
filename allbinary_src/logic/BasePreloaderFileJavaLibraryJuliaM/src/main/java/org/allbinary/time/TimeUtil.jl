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
# package org.allbinary.time

mutable struct TimeUtil <: JObject
    TimeUtil() = new()
end

const TimeUtil_instanceValue = Ref{Any}(nothing)
const TimeUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{TimeUtil})
    if !TimeUtil_instanceSet[]
        TimeUtil_instanceSet[] = true
        TimeUtil_instanceValue[] = newTimeUtil()
    end
    TimeUtil_instanceValue[]
end
function staticSet_instance(::Type{TimeUtil}, value)
    TimeUtil_instanceSet[] = true
    TimeUtil_instanceValue[] = value
end
const TimeUtil_calendarValue = Ref{Any}(nothing)
const TimeUtil_calendarSet = Ref(false)
function staticGet_calendar(::Type{TimeUtil})
    if !TimeUtil_calendarSet[]
        TimeUtil_calendarSet[] = true
        TimeUtil_calendarValue[] = AllBinary.getInstance(Calendar)
    end
    TimeUtil_calendarValue[]
end
function staticSet_calendar(::Type{TimeUtil}, value)
    TimeUtil_calendarSet[] = true
    TimeUtil_calendarValue[] = value
end

function initFieldsTimeUtil(this::TimeUtil)
    nothing
end

function initTimeUtil(this::TimeUtil)
    initFieldsTimeUtil(this)
end

function newTimeUtil()
    this = TimeUtil()
    initTimeUtil(this)
    this
end


function getInstance(::Type{TimeUtil})
        return staticGet_instance(TimeUtil)
end


function setCalendar(this::TimeUtil, calendar, yearString, monthString, dayString, hourString)
        local year::Int32 = AllBinary.intValue(yearString)
        local month::Int32 = AllBinary.intValue(monthString)
        local day::Int32 = AllBinary.intValue(dayString)
        local hour::Int32 = AllBinary.intValue(hourString)
        AllBinary.set(calendar, year, month, day, hour, Int32(0))
        nothing
end


function setCalendarWithTime(this::TimeUtil, calendar, yearString, monthString, dayString, hourString, minuteString, secondString)
        local year::Int32 = AllBinary.intValue(yearString)
        local month::Int32 = AllBinary.intValue(monthString)
        local day::Int32 = AllBinary.intValue(dayString)
        local hour::Int32 = AllBinary.intValue(hourString)
        local minute::Int32 = AllBinary.intValue(minuteString)
        local second::Int32 = AllBinary.intValue(secondString)
        AllBinary.set(calendar, year, month, day, hour, minute, second)
        nothing
end


function setExpirationCalendar(this::TimeUtil, calendar, yearsString, monthsString, daysString, hoursString, minutesString, secondsString)
        local year::Int32 = AllBinary.get(calendar, staticGet_YEAR(Calendar)) + AllBinary.intValue(yearsString)
        local month::Int32 = AllBinary.get(calendar, staticGet_MONTH(Calendar)) + AllBinary.intValue(monthsString)
        local day::Int32 = AllBinary.get(calendar, staticGet_DAY_OF_MONTH(Calendar)) + AllBinary.intValue(daysString)
        local hour::Int32 = AllBinary.get(calendar, staticGet_HOUR(Calendar)) + AllBinary.intValue(hoursString)
        local minute::Int32 = AllBinary.get(calendar, staticGet_MINUTE(Calendar)) + AllBinary.intValue(minutesString)
        local second::Int32 = AllBinary.get(calendar, staticGet_SECOND(Calendar)) + AllBinary.intValue(secondsString)
        AllBinary.set(calendar, year, month, day, hour, minute, second)
        nothing
end


function getTotalTime(this::TimeUtil, yearString, monthString, dayString, hourString, minuteString, secondString)
        local time::Int64 = AllBinary.getTimeInMillis(staticGet_calendar(TimeUtil))
        AllBinary.setExpirationCalendar(this, staticGet_calendar(TimeUtil), yearString, monthString, dayString, hourString, minuteString, secondString)
        local timeDelta::Int64 = AllBinary.getTimeInMillis(staticGet_calendar(TimeUtil))
        return timeDelta - time
end

