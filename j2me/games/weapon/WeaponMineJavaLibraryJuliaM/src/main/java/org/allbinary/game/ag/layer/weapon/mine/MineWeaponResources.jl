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
# package org.allbinary.game.ag.layer.weapon.mine

# extends BasicGameResources: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct MineWeaponResources <: JObject
    DROP_TEXT_RESOURCE::Any
    DROP_RESOURCE::Any
    DROP_ICON_RESOURCE::Any
    MineWeaponResources() = new()
end

const MineWeaponResources_instanceValue = Ref{Any}(nothing)
const MineWeaponResources_instanceSet = Ref(false)
function staticGet_instance(::Type{MineWeaponResources})
    if !MineWeaponResources_instanceSet[]
        MineWeaponResources_instanceSet[] = true
        MineWeaponResources_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    MineWeaponResources_instanceValue[]
end
function staticSet_instance(::Type{MineWeaponResources}, value)
    MineWeaponResources_instanceSet[] = true
    MineWeaponResources_instanceValue[] = value
end

function initFieldsMineWeaponResources(this::MineWeaponResources)
    this.DROP_TEXT_RESOURCE = nothing
    this.DROP_RESOURCE = nothing
    this.DROP_ICON_RESOURCE = nothing
    this.DROP_TEXT_RESOURCE = "/mine_drop_text_20_by_20.png"
    this.DROP_RESOURCE = "/mine_drop_20_by_20.png"
    this.DROP_ICON_RESOURCE = "/mine_drop_icon_20_by_20.png"
    nothing
end


function getInstance(::Type{MineWeaponResources})
        if staticGet_instance(MineWeaponResources) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(MineWeaponResources, newMineWeaponResources())
        end
        return (staticGet_instance(MineWeaponResources))
end


function initMineWeaponResources(this::MineWeaponResources)
        initBasicGameResources(this)
        initFieldsMineWeaponResources(this)
        local ROOT = "/mine"
        local SMALL = "_20_by_20.png"
        local MEDIUM = SMALL
        local SIZE_FOUR = SMALL
        local SIZE_FIVE = SMALL
        local SIZE_SIX = SMALL
        local SIZE = Any[SMALL, MEDIUM, SIZE_FOUR, SIZE_FIVE, SIZE_SIX]
        AllBinary.init(this, ROOT, SIZE)
        nothing
end

function newMineWeaponResources()
    this = MineWeaponResources()
    initMineWeaponResources(this)
    this
end

