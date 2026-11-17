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

mutable struct CanvasUtil <: JObject
    CanvasUtil() = new()
end


function initFieldsCanvasUtil(this::CanvasUtil)
    nothing
end


function initCanvasUtil(this::CanvasUtil)
        initFieldsCanvasUtil(this)
        nothing
        nothing
end

function newCanvasUtil()
    this = CanvasUtil()
    initCanvasUtil(this)
    this
end


function getKeyName(::Type{CanvasUtil}, key)
        local commonPhoneStrings = AllBinary.getInstance(CommonPhoneStrings)
        if key == staticGet_UP(Canvas)
            return commonPhoneStrings.UP
        elseif key == staticGet_DOWN(Canvas)
            return commonPhoneStrings.DOWN
        elseif key == staticGet_RIGHT(Canvas)
            return commonPhoneStrings.RIGHT
        elseif key == staticGet_LEFT(Canvas)
            return commonPhoneStrings.LEFT
        elseif key == staticGet_FIRE(Canvas)
            return commonPhoneStrings.FIRE
        end
        return "UNKNOWN KEY"
end

