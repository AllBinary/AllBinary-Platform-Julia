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
# package org.allbinary.bounds.event

# extends AllBinaryEventObject: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BoundsChangeEvent <: JObject
    BoundsChangeEvent() = new()
end


function initFieldsBoundsChangeEvent(this::BoundsChangeEvent)
    nothing
end


function initBoundsChangeEvent(this::BoundsChangeEvent, rectangle)
        initAllBinaryEventObject(this, rectangle)
        nothing
end

function newBoundsChangeEvent(rectangle)
    this = BoundsChangeEvent()
    initBoundsChangeEvent(this, rectangle)
    this
end


function getRectangle(this::BoundsChangeEvent)
        return (AllBinary.getSource(this))
end

