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
mutable struct ThrustAIVisitor <: JObject
    logUtil::Any
    TRUE::Any
    ThrustAIVisitor() = new()
end


function initFieldsThrustAIVisitor(this::ThrustAIVisitor)
    this.logUtil = nothing
    this.TRUE = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.TRUE = AllBinary.getInstance(BooleanFactory).TRUE
    nothing
end


function initThrustAIVisitor(this::ThrustAIVisitor)
        initVisitor(this)
        initFieldsThrustAIVisitor(this)
        nothing
        nothing
end

function newThrustAIVisitor()
    this = ThrustAIVisitor()
    initThrustAIVisitor(this)
    this
end


function visit(this::ThrustAIVisitor, anyType)
        try
            local basicAI = (anyType)
            AllBinary.processKeyAI(basicAI, staticGet_UP(Canvas))
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.VISIT, e)
        end
        return this.TRUE
end

