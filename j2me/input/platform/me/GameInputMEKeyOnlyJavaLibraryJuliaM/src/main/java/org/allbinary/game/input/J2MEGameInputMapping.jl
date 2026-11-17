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
# package org.allbinary.game.input

# extends PersistentInputMapping: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct J2MEGameInputMapping <: JObject
    J2MEGameInputMapping() = new()
end


function initFieldsJ2MEGameInputMapping(this::J2MEGameInputMapping)
    nothing
end


function initJ2MEGameInputMapping(this::J2MEGameInputMapping)
        initPersistentInputMapping(this, AllBinary.getInstance(GamePersistanceStrings).SAVED_INPUT_CONFIGURATION_RECORD_ID)
        nothing
end

function newJ2MEGameInputMapping()
    this = J2MEGameInputMapping()
    initJ2MEGameInputMapping(this)
    this
end


function init(this::J2MEGameInputMapping, abeClientInformation)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.INIT)
        AllBinary.init(AllBinary.getInstance(J2MEKeyFactory))
        AllBinary.init(this, abeClientInformation)
        if AllBinary.getTotalMapped(this) == Int32(0) || AllBinary.isDefaultNew(this)
            AllBinary.addMapping(AllBinary.getInputMapping(this), AllBinary.getDefault(this))
            AllBinary.save(this, abeClientInformation)
        end
        nothing
end


function isDelete(this::J2MEGameInputMapping, input)
        if input === AllBinary.getInstance(GameKeyFactory).GAME_D
            return true
        else
            return false
        end
end


function isSystemInput(this::J2MEGameInputMapping, input)
        return false
end

