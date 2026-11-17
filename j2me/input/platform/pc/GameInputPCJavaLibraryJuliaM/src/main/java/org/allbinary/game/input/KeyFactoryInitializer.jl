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

# extends Init: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct KeyFactoryInitializer <: JObject
    logUtil::Any
    KeyFactoryInitializer() = new()
end


function initFieldsKeyFactoryInitializer(this::KeyFactoryInitializer)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end

function initKeyFactoryInitializer(this::KeyFactoryInitializer)
    initInit(this)
    initFieldsKeyFactoryInitializer(this)
end

function newKeyFactoryInitializer()
    this = KeyFactoryInitializer()
    initKeyFactoryInitializer(this)
    this
end


function init(this::KeyFactoryInitializer)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.INIT)
        AllBinary.initWithRange(AllBinary.getInstance(SmallIntegerSingletonFactory), Int32(0x2D0), Int32(6))
        nothing
end

