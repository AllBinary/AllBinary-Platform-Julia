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
# package org.allbinary.content

mutable struct NotificationUtil <: JObject
    NotificationUtil() = new()
end

const NotificationUtil_SINGLETONValue = Ref{Any}(nothing)
const NotificationUtil_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{NotificationUtil})
    if !NotificationUtil_SINGLETONSet[]
        NotificationUtil_SINGLETONSet[] = true
        NotificationUtil_SINGLETONValue[] = newNotificationUtil()
    end
    NotificationUtil_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{NotificationUtil}, value)
    NotificationUtil_SINGLETONSet[] = true
    NotificationUtil_SINGLETONValue[] = value
end

function initFieldsNotificationUtil(this::NotificationUtil)
    nothing
end

function initNotificationUtil(this::NotificationUtil)
    initFieldsNotificationUtil(this)
end

function newNotificationUtil()
    this = NotificationUtil()
    initNotificationUtil(this)
    this
end


function getInstance(::Type{NotificationUtil})
        return staticGet_SINGLETON(NotificationUtil)
end


function notify(this::NotificationUtil, command, resource, message)
        nothing
        nothing
end

