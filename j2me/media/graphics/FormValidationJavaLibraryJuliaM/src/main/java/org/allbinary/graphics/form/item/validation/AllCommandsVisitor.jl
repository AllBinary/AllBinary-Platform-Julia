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
# package org.allbinary.graphics.form.item.validation

# extends Visitor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AllCommandsVisitor <: JObject
    AllCommandsVisitor() = new()
end


function initFieldsAllCommandsVisitor(this::AllCommandsVisitor)
    nothing
end


function initAllCommandsVisitor(this::AllCommandsVisitor)
        initVisitor(this)
        initFieldsAllCommandsVisitor(this)
        nothing
        nothing
end

function newAllCommandsVisitor()
    this = AllCommandsVisitor()
    initAllCommandsVisitor(this)
    this
end


function visit(this::AllCommandsVisitor, anyType)
        return AllBinary.getInstance(BooleanFactory).TRUE
end

