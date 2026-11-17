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
# package org.allbinary.game.ag.ai

mutable struct DiveAndDirectionalTrackingAICompositeVisitorFactory <: JObject
    DiveAndDirectionalTrackingAICompositeVisitorFactory() = new()
end


function initFieldsDiveAndDirectionalTrackingAICompositeVisitorFactory(this::DiveAndDirectionalTrackingAICompositeVisitorFactory)
    nothing
end

function initDiveAndDirectionalTrackingAICompositeVisitorFactory(this::DiveAndDirectionalTrackingAICompositeVisitorFactory)
    initFieldsDiveAndDirectionalTrackingAICompositeVisitorFactory(this)
end

function newDiveAndDirectionalTrackingAICompositeVisitorFactory()
    this = DiveAndDirectionalTrackingAICompositeVisitorFactory()
    initDiveAndDirectionalTrackingAICompositeVisitorFactory(this)
    this
end


function getInstance(this::DiveAndDirectionalTrackingAICompositeVisitorFactory, diveBombAI)
        return AllBinary.getInstance(Visitor)
end

