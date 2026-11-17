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
# package org.allbinary.graphics

mutable struct Line <: JObject
    p1::Any
    p2::Any
    deltaX::Float64
    deltaY::Float64
    Line() = new()
end


function initFieldsLine(this::Line)
    this.p1 = nothing
    this.p2 = nothing
    this.deltaX = 0.0
    this.deltaY = 0.0
    
    
    this.deltaX = 0.0
    this.deltaY = 0.0
    nothing
end


function initLine(this::Line, p1, p2)
        initFieldsLine(this)
        this.p1 = AllBinary.getInstance(PointFactory).ZERO_ZERO
        this.p2 = this.p1
        AllBinary.setP1(this, p1)
        AllBinary.setP2(this, p2)
        nothing
end

function newLine(p1, p2)
    this = Line()
    initLine(this, p1, p2)
    this
end


function getGradient(this::Line)
        return AllBinary.getDeltaY(this) / AllBinary.getDeltaX(this)
end


function update(this::Line)
        this.deltaX = Float64(AllBinary.getX(AllBinary.getP1(this))) - AllBinary.getX(AllBinary.getP2(this))
        this.deltaY = Float64(AllBinary.getY(AllBinary.getP1(this))) - AllBinary.getY(AllBinary.getP2(this))
        nothing
end


function getDeltaX(this::Line)
        return this.deltaX
end


function getDeltaY(this::Line)
        return this.deltaY
end


function getP1(this::Line)
        return this.p1
end


function getP2(this::Line)
        return this.p2
end


function setP1(this::Line, p1)
        this.p1 = p1
        AllBinary.update(this)
        nothing
end


function setP2(this::Line, p2)
        this.p2 = p2
        AllBinary.update(this)
        nothing
end

