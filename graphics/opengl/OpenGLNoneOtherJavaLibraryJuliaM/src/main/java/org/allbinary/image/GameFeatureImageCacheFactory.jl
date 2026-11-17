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
# package org.allbinary.image

mutable struct GameFeatureImageCacheFactory <: JObject
    GameFeatureImageCacheFactory() = new()
end


function initFieldsGameFeatureImageCacheFactory(this::GameFeatureImageCacheFactory)
    nothing
end

function initGameFeatureImageCacheFactory(this::GameFeatureImageCacheFactory)
    initFieldsGameFeatureImageCacheFactory(this)
end

function newGameFeatureImageCacheFactory()
    this = GameFeatureImageCacheFactory()
    initGameFeatureImageCacheFactory(this)
    this
end


function getInstance(::Type{GameFeatureImageCacheFactory})
        return AllBinary.getInstance(ImageCacheFactory)
end


function init(::Type{GameFeatureImageCacheFactory})
        AllBinary.init(ImageCacheFactory)
        nothing
end


function releaseAll(::Type{GameFeatureImageCacheFactory})
        AllBinary.releaseAll(AllBinary.getInstance(ImageCacheFactory))
        nothing
end

