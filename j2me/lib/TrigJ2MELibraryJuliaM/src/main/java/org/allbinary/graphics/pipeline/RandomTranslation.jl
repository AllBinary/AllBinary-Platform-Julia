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
# package org.allbinary.graphics.pipeline

mutable struct RandomTranslation <: JObject
    RandomTranslation() = new()
end


function initFieldsRandomTranslation(this::RandomTranslation)
    nothing
end

function initRandomTranslation(this::RandomTranslation)
    initFieldsRandomTranslation(this)
end

function newRandomTranslation()
    this = RandomTranslation()
    initRandomTranslation(this)
    this
end


function getInstance(::Type{RandomTranslation}, vector, howMuch)
        local myRandomFactory = AllBinary.getInstance(MyRandomFactory)
        local x::Int32 = -AllBinary.getNextInt(myRandomFactory, howMuch)
        local y::Int32 = AllBinary.getNextInt(myRandomFactory, howMuch)
        local graphicsPipe = newBasicGraphicsPipeline(vector)
        AllBinary.createMatrix(graphicsPipe)
        AllBinary.translate(graphicsPipe, x, y)
        return AllBinary.getMatrix(graphicsPipe)
end

