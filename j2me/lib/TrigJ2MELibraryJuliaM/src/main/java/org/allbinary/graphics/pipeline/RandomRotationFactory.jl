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

mutable struct RandomRotationFactory <: JObject
    myRandomFactory::Any
    angleFactory::Any
    RandomRotationFactory() = new()
end

const RandomRotationFactory_instanceValue = Ref{Any}(nothing)
const RandomRotationFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{RandomRotationFactory})
    if !RandomRotationFactory_instanceSet[]
        RandomRotationFactory_instanceSet[] = true
        RandomRotationFactory_instanceValue[] = newRandomRotationFactory()
    end
    RandomRotationFactory_instanceValue[]
end
function staticSet_instance(::Type{RandomRotationFactory}, value)
    RandomRotationFactory_instanceSet[] = true
    RandomRotationFactory_instanceValue[] = value
end

function initFieldsRandomRotationFactory(this::RandomRotationFactory)
    this.myRandomFactory = nothing
    this.angleFactory = nothing
    this.myRandomFactory = AllBinary.getInstance(MyRandomFactory)
    this.angleFactory = AllBinary.getInstance(AngleFactory)
    nothing
end

function initRandomRotationFactory(this::RandomRotationFactory)
    initFieldsRandomRotationFactory(this)
end

function newRandomRotationFactory()
    this = RandomRotationFactory()
    initRandomRotationFactory(this)
    this
end


function getInstance(::Type{RandomRotationFactory})
        return staticGet_instance(RandomRotationFactory)
end


function getInstanceList(this::RandomRotationFactory, vector, howMuch)
        local graphicsPipe = newBasicGraphicsPipeline(vector)
        AllBinary.createMatrix(graphicsPipe)
        AllBinary.rotateToAngle(graphicsPipe, AllBinary.getAt(this.angleFactory, AllBinary.getNextRandomAngle(this, howMuch)))
        return AllBinary.getMatrix(graphicsPipe)
end


function getNextRandomAngle(this::RandomRotationFactory, howMuch)
        return AllBinary.getNextInt(this.myRandomFactory, howMuch * Int32(10))
end

