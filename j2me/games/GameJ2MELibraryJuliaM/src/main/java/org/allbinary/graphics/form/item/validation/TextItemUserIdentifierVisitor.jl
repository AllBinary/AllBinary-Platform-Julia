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
mutable struct TextItemUserIdentifierVisitor <: JObject
    logUtil::Any
    TextItemUserIdentifierVisitor() = new()
end


function initFieldsTextItemUserIdentifierVisitor(this::TextItemUserIdentifierVisitor)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end


function initTextItemUserIdentifierVisitor(this::TextItemUserIdentifierVisitor)
        initVisitor(this)
        initFieldsTextItemUserIdentifierVisitor(this)
        nothing
        nothing
end

function newTextItemUserIdentifierVisitor()
    this = TextItemUserIdentifierVisitor()
    initTextItemUserIdentifierVisitor(this)
    this
end


function visit(this::TextItemUserIdentifierVisitor, anyType)
        local value = (anyType)
        if jLength(value) < Int32(2)
            local charValue::UInt16 = jCharAt(value, Int32(0))
            local stringValidationUtil = AllBinary.getInstance(StringValidationUtil)
            if AllBinary.isNumber(stringValidationUtil, value)
                return AllBinary.getInstance(BooleanFactory).TRUE
            elseif AllBinary.isLetter(this, charValue)
                return AllBinary.getInstance(BooleanFactory).TRUE
            else
                try
                    AllBinary.fireError(AllBinary.getInstance(TextNotificationUtil), "Only Letters & Numbers Allowed")
                catch e
                    local commonStrings = AllBinary.getInstance(CommonStrings)
                    AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.VISIT, e)
                end
                return AllBinary.getInstance(BooleanFactory).FALSE
            end
        else
            return AllBinary.getInstance(BooleanFactory).FALSE
        end
end


function isLetter(this::TextItemUserIdentifierVisitor, charValue)
        local value::Int32 = ((charValue) % Int32)
        return (value > Int32(64) && value < Int32(91)) || (value > Int32(96) && value < Int32(123))
end

