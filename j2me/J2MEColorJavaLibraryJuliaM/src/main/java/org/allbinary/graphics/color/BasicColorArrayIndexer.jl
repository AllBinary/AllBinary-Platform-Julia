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
# package org.allbinary.graphics.color

mutable struct BasicColorArrayIndexer <: JObject
    basicColorArray::Any
    circularIndexUtil::Any
    BasicColorArrayIndexer() = new()
end


function initFieldsBasicColorArrayIndexer(this::BasicColorArrayIndexer)
    this.basicColorArray = nothing
    this.circularIndexUtil = nothing
    
    
    nothing
end


function initBasicColorArrayIndexer(this::BasicColorArrayIndexer, basicColorArray)
        initFieldsBasicColorArrayIndexer(this)
        this.basicColorArray = basicColorArray
        this.circularIndexUtil = AllBinary.createInstance(CircularIndexUtil, Int32(Base.length(this.basicColorArray)))
        nothing
end

function newBasicColorArrayIndexer(basicColorArray)
    this = BasicColorArrayIndexer()
    initBasicColorArrayIndexer(this, basicColorArray)
    this
end


function next(this::BasicColorArrayIndexer)
        AllBinary.next(this.circularIndexUtil)
        nothing
end


function get(this::BasicColorArrayIndexer)
        return this.basicColorArray[AllBinary.getIndex(this.circularIndexUtil) + 1]
end


function getBasicColorArray(this::BasicColorArrayIndexer)
        return this.basicColorArray
end

