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

# extends BaseTouchInput: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NoButtonsBuilder <: JObject
    logUtil::Any
    NoButtonsBuilder() = new()
end


function initFieldsNoButtonsBuilder(this::NoButtonsBuilder)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end

function initNoButtonsBuilder(this::NoButtonsBuilder)
    initBaseTouchInput(this)
    initFieldsNoButtonsBuilder(this)
end

function newNoButtonsBuilder()
    this = NoButtonsBuilder()
    initNoButtonsBuilder(this)
    this
end


function getList(this::NoButtonsBuilder)
        try
            AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
            local list = AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil))
            return list
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.GET_LIST, e)
            return AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil))
        end
end

