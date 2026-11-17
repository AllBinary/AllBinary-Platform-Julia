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
# package org.allbinary.layer

mutable struct AllBinaryLayerFactory <: JObject
    rectangle::Any
    AllBinaryLayerFactory() = new()
end


function initFieldsAllBinaryLayerFactory(this::AllBinaryLayerFactory)
    this.rectangle = nothing
    
    nothing
end


function initAllBinaryLayerFactory(this::AllBinaryLayerFactory, rectangle)
        initFieldsAllBinaryLayerFactory(this)
        this.rectangle = rectangle
        nothing
end

function newAllBinaryLayerFactory(rectangle)
    this = AllBinaryLayerFactory()
    initAllBinaryLayerFactory(this, rectangle)
    this
end


function getInstance(this::AllBinaryLayerFactory)
        return newAllBinaryLayer(AllBinary.getInstance(StringUtil).EMPTY_STRING, this.rectangle, AllBinary.getInstanceD(ViewPosition))
end

