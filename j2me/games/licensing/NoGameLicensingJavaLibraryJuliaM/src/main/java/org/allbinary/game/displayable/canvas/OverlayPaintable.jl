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
# package org.allbinary.game.displayable.canvas

# extends InitUpdatePaintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct OverlayPaintable <: JObject
    logUtil::Any
    OverlayPaintable() = new()
end


function initFieldsOverlayPaintable(this::OverlayPaintable)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end


function initOverlayPaintable(this::OverlayPaintable)
        initInitUpdatePaintable(this)
        initFieldsOverlayPaintable(this)
        nothing
        nothing
end

function newOverlayPaintable()
    this = OverlayPaintable()
    initOverlayPaintable(this)
    this
end


function update(this::OverlayPaintable)
        try
            nothing
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.UPDATE, e)
        end
        nothing
end


function paint(this::OverlayPaintable, graphics)
        nothing
        nothing
end

