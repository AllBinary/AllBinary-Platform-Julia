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
# package org.allbinary.game.ag.ai

# extends Visitor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct LastKeyAIVisitor <: JObject
    logUtil::Any
    TRUE::Any
    LastKeyAIVisitor() = new()
end


function initFieldsLastKeyAIVisitor(this::LastKeyAIVisitor)
    this.logUtil = nothing
    this.TRUE = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.TRUE = AllBinary.getInstance(BooleanFactory).TRUE
    nothing
end


function initLastKeyAIVisitor(this::LastKeyAIVisitor)
        initVisitor(this)
        initFieldsLastKeyAIVisitor(this)
        nothing
        nothing
end

function newLastKeyAIVisitor()
    this = LastKeyAIVisitor()
    initLastKeyAIVisitor(this)
    this
end


function visit(this::LastKeyAIVisitor, anyType)
        try
            local basicAI = (anyType)
            local key::Int32 = AllBinary.getLastKey(basicAI)
            if key != -Int32(1)
                AllBinary.processKeyAI(basicAI, key)
            end
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.VISIT, e)
        end
        return this.TRUE
end

