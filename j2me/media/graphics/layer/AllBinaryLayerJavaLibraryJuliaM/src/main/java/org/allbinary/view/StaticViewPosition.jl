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
# package org.allbinary.view

# extends ViewPosition: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct StaticViewPosition <: JObject
    StaticViewPosition() = new()
end


function initFieldsStaticViewPosition(this::StaticViewPosition)
    nothing
end


function initStaticViewPosition(this::StaticViewPosition, x, y, z)
        initViewPosition(this, x, y, z)
        nothing
end

function newStaticViewPosition(x, y, z)
    this = StaticViewPosition()
    initStaticViewPosition(this, x, y, z)
    this
end


function getX(this::StaticViewPosition)
        return AllBinary.getRawX(this)
end


function getY(this::StaticViewPosition)
        return AllBinary.getRawY(this)
end


function getZ(this::StaticViewPosition)
        return AllBinary.getRawZ(this)
end

