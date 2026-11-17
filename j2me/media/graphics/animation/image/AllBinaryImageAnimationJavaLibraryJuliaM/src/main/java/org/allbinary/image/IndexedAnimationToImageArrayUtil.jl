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

mutable struct IndexedAnimationToImageArrayUtil <: JObject
    IndexedAnimationToImageArrayUtil() = new()
end


function initFieldsIndexedAnimationToImageArrayUtil(this::IndexedAnimationToImageArrayUtil)
    nothing
end

function initIndexedAnimationToImageArrayUtil(this::IndexedAnimationToImageArrayUtil)
    initFieldsIndexedAnimationToImageArrayUtil(this)
end

function newIndexedAnimationToImageArrayUtil()
    this = IndexedAnimationToImageArrayUtil()
    initIndexedAnimationToImageArrayUtil(this)
    this
end


function getInstance(::Type{IndexedAnimationToImageArrayUtil}, width, height, sequentialAnimationInterface)
        local size::Int32 = AllBinary.getAnimationSize(sequentialAnimationInterface)
        local imageArray = jNewArray(Any, size, nothing)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            AllBinary.setFrame(sequentialAnimationInterface, index)
            imageArray[index + 1] = AllBinary.getInstanceWH(AllBinary.getInstance(AnimationFrameToImageUtil), width, height, sequentialAnimationInterface)
            finally
                index += Int32(1)
            end
            end
        end
        return imageArray
end

