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
# package org.allbinary.game.collision.layer

mutable struct AllBinaryCollisionManager <: JObject
    AllBinaryCollisionManager() = new()
end

const AllBinaryCollisionManager_allBinaryCollisionManagerValue = Ref{Any}(nothing)
const AllBinaryCollisionManager_allBinaryCollisionManagerSet = Ref(false)
function staticGet_allBinaryCollisionManager(::Type{AllBinaryCollisionManager})
    if !AllBinaryCollisionManager_allBinaryCollisionManagerSet[]
        AllBinaryCollisionManager_allBinaryCollisionManagerSet[] = true
        AllBinaryCollisionManager_allBinaryCollisionManagerValue[] = newAllBinaryCollisionManager()
    end
    AllBinaryCollisionManager_allBinaryCollisionManagerValue[]
end
function staticSet_allBinaryCollisionManager(::Type{AllBinaryCollisionManager}, value)
    AllBinaryCollisionManager_allBinaryCollisionManagerSet[] = true
    AllBinaryCollisionManager_allBinaryCollisionManagerValue[] = value
end

function initFieldsAllBinaryCollisionManager(this::AllBinaryCollisionManager)
    nothing
end


function initAllBinaryCollisionManager(this::AllBinaryCollisionManager)
        initFieldsAllBinaryCollisionManager(this)
        nothing
        nothing
end

function newAllBinaryCollisionManager()
    this = AllBinaryCollisionManager()
    initAllBinaryCollisionManager(this)
    this
end


function getInstance(::Type{AllBinaryCollisionManager})
        return staticGet_allBinaryCollisionManager(AllBinaryCollisionManager)
end


function process(this::AllBinaryCollisionManager, layerManager, collidableInterfaceCompositeInterface, startIndex)
        local size::Int32 = AllBinary.getSize(layerManager)
        let
            local index::Int32 = startIndex + Int32(1)
            while index < size
            try
            local collidableInterfaceCompositeInterface2 = (AllBinary.getLayerAt(layerManager, index))
            AllBinary.collide(this, layerManager, collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function collide(this::AllBinaryCollisionManager, layerManager, collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
        local collidableBase2 = AllBinary.getCollidableInferface(collidableInterfaceCompositeInterface2)
        local collidableBase = AllBinary.getCollidableInferface(collidableInterfaceCompositeInterface)
        if AllBinary.isCollidable(collidableBase2, (collidableInterfaceCompositeInterface))
            if AllBinary.isCollisionInterface(collidableBase, (collidableInterfaceCompositeInterface), collidableInterfaceCompositeInterface2)
                AllBinary.collideInterface(collidableBase, (collidableInterfaceCompositeInterface), collidableInterfaceCompositeInterface2)
                AllBinary.collideInterface(collidableBase2, (collidableInterfaceCompositeInterface), collidableInterfaceCompositeInterface)
            end
        end
        nothing
end

