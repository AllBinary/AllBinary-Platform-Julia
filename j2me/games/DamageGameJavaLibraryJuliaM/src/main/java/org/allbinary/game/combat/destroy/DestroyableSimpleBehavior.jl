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
# package org.allbinary.game.combat.destroy

# extends DestroyableBaseBehavior: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DestroyableSimpleBehavior <: JObject
    ownerLayer::Any
    destroyed::Bool
    DestroyableSimpleBehavior() = new()
end


function initFieldsDestroyableSimpleBehavior(this::DestroyableSimpleBehavior)
    this.ownerLayer = nothing
    this.destroyed = false
    
    this.destroyed = false
    nothing
end


function initDestroyableSimpleBehavior(this::DestroyableSimpleBehavior, ownerLayer)
        initDestroyableBaseBehavior(this)
        initFieldsDestroyableSimpleBehavior(this)
        this.ownerLayer = ownerLayer
        nothing
end

function newDestroyableSimpleBehavior(ownerLayer)
    this = DestroyableSimpleBehavior()
    initDestroyableSimpleBehavior(this, ownerLayer)
    this
end


function isDestroyed(this::DestroyableSimpleBehavior)
        return this.destroyed
end


function setDestroyed(this::DestroyableSimpleBehavior, destroyed)
        this.destroyed = destroyed
        if AllBinary.isDestroyed(this)
            AllBinary.add(AllBinary.getInstance(DestroyedLayerProcessor), this.ownerLayer)
        end
        nothing
end

