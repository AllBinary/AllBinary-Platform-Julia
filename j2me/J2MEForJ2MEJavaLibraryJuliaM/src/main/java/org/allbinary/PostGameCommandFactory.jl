#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary

mutable struct PostGameCommandFactory <: JObject
    PostGameCommandFactory() = new()
end

const PostGameCommandFactory_instanceValue = Ref{Any}(nothing)
const PostGameCommandFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{PostGameCommandFactory})
    if !PostGameCommandFactory_instanceSet[]
        PostGameCommandFactory_instanceSet[] = true
        PostGameCommandFactory_instanceValue[] = newPostGameCommandFactory()
    end
    PostGameCommandFactory_instanceValue[]
end
function staticSet_instance(::Type{PostGameCommandFactory}, value)
    PostGameCommandFactory_instanceSet[] = true
    PostGameCommandFactory_instanceValue[] = value
end

function initFieldsPostGameCommandFactory(this::PostGameCommandFactory)
    nothing
end

function initPostGameCommandFactory(this::PostGameCommandFactory)
    initFieldsPostGameCommandFactory(this)
end

function newPostGameCommandFactory()
    this = PostGameCommandFactory()
    initPostGameCommandFactory(this)
    this
end


function getInstance(::Type{PostGameCommandFactory})
        return staticGet_instance(PostGameCommandFactory)
end


function addCommands(this::PostGameCommandFactory, canvas)
        AllBinary.addCommands(AllBinary.getInstance(MultiPlayerGameFeatureFactory), canvas)
        nothing
end

