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
# package org.allbinary.game.layer

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SWTBlackPaintable <: JObject
    basicSetColorUtil::Any
    BLACK::Any
    SWTBlackPaintable() = new()
end


function initFieldsSWTBlackPaintable(this::SWTBlackPaintable)
    this.basicSetColorUtil = nothing
    this.BLACK = nothing
    this.basicSetColorUtil = AllBinary.getInstance(BasicColorSetUtil)
    this.BLACK = AllBinary.getInstance(BasicColorFactory).BLACK
    nothing
end

function initSWTBlackPaintable(this::SWTBlackPaintable)
    initPaintable(this)
    initFieldsSWTBlackPaintable(this)
end

function newSWTBlackPaintable()
    this = SWTBlackPaintable()
    initSWTBlackPaintable(this)
    this
end


function paint(this::SWTBlackPaintable, graphics)
        AllBinary.setBasicColorP(this.basicSetColorUtil, graphics, this.BLACK)
        nothing
end

