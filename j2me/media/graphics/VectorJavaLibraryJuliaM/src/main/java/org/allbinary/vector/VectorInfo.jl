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
# package org.allbinary.vector

mutable struct VectorInfo <: JObject
    width::Int32
    height::Int32
    points::Any
    totalFrames::Int32
    VectorInfo() = new()
end


function initFieldsVectorInfo(this::VectorInfo)
    this.width = Int32(0)
    this.height = Int32(0)
    this.points = nothing
    this.totalFrames = Int32(0)
    
    
    
    
    nothing
end


function initVectorInfo(this::VectorInfo, width, height, points, totalFrames)
        initFieldsVectorInfo(this)
        this.width = width
        this.height = height
        this.points = points
        this.totalFrames = totalFrames
        nothing
end

function newVectorInfo(width, height, points, totalFrames)
    this = VectorInfo()
    initVectorInfo(this, width, height, points, totalFrames)
    this
end


function getWidth(this::VectorInfo)
        return this.width
end


function setWidth(this::VectorInfo, width)
        this.width = width
        nothing
end


function getHeight(this::VectorInfo)
        return this.height
end


function setHeight(this::VectorInfo, height)
        this.height = height
        nothing
end


function getPoints(this::VectorInfo)
        return this.points
end


function setPoints(this::VectorInfo, points)
        this.points = points
        nothing
end


function getTotalFrames(this::VectorInfo)
        return this.totalFrames
end


function setTotalFrames(this::VectorInfo, totalFrames)
        this.totalFrames = totalFrames
        nothing
end

