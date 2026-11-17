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
# package org.allbinary.input.motion.button

mutable struct BaseTouchInput <: JObject
    commonStrings::Any
    basicArrayListUtil::Any
    BaseTouchInput() = new()
end


function initFieldsBaseTouchInput(this::BaseTouchInput)
    this.commonStrings = nothing
    this.basicArrayListUtil = nothing
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.basicArrayListUtil = AllBinary.getInstance(BasicArrayListUtil)
    nothing
end


function initBaseTouchInput(this::BaseTouchInput)
        initFieldsBaseTouchInput(this)
        nothing
        nothing
end

function newBaseTouchInput()
    this = BaseTouchInput()
    initBaseTouchInput(this)
    this
end


function getList(this::BaseTouchInput)
        return AllBinary.getImmutableInstance(this.basicArrayListUtil)
end


function toString(this::BaseTouchInput)
        return jClassName(this)
end

