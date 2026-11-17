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
# package org.allbinary.game.tracking

mutable struct TrackingEventFactory <: JObject
    TrackingEventFactory() = new()
end


function initFieldsTrackingEventFactory(this::TrackingEventFactory)
    nothing
end


function initTrackingEventFactory(this::TrackingEventFactory)
        initFieldsTrackingEventFactory(this)
        nothing
        nothing
end

function newTrackingEventFactory()
    this = TrackingEventFactory()
    initTrackingEventFactory(this)
    this
end


function getInstance(this::TrackingEventFactory)
        return newTrackingEvent(AllBinary.getInstance(TrackingEventHandler))
end

