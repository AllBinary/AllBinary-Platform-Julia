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
# package org.allbinary.graphics.form

# extends ItemPaintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct LockablePaintable <: JObject
    animation::Any
    lockedIndex::Int32
    LockablePaintable() = new()
end


function initFieldsLockablePaintable(this::LockablePaintable)
    this.animation = nothing
    this.lockedIndex = Int32(0)
    this.animation = AllBinary.getInstance(AllBinary.get(AllBinary.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory), AllBinary.getInstance(LockedResources).LOCKED_DEMO_GAME_FEATURE_RESOURCE), Int32(0))
    
    nothing
end


function initLockablePaintable(this::LockablePaintable, lockedIndex)
        initItemPaintable(this)
        initFieldsLockablePaintable(this)
        this.lockedIndex = lockedIndex
        nothing
end

function newLockablePaintable(lockedIndex)
    this = LockablePaintable()
    initLockablePaintable(this, lockedIndex)
    this
end


function paint(this::LockablePaintable, graphics, currentIndex, x, y)
        if AllBinary.isLocked(AllBinary.getInstance(LockedUtil)) && currentIndex >= AllBinary.getLockedIndex(this)
            AllBinary.paintXY(AllBinary.getAnimation(this), graphics, x, y)
        end
        nothing
end


function getLockedIndex(this::LockablePaintable)
        return this.lockedIndex
end


function getAnimation(this::LockablePaintable)
        return this.animation
end

