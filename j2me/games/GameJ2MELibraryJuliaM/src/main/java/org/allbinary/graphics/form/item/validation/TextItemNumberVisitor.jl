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
mutable struct TextItemNumberVisitor <: JObject
    logUtil::Any
    TextItemNumberVisitor() = new()
end


function initFieldsTextItemNumberVisitor(this::TextItemNumberVisitor)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end


function initTextItemNumberVisitor(this::TextItemNumberVisitor)
        initVisitor(this)
        initFieldsTextItemNumberVisitor(this)
        nothing
        nothing
end

function newTextItemNumberVisitor()
    this = TextItemNumberVisitor()
    initTextItemNumberVisitor(this)
    this
end


function visit(this::TextItemNumberVisitor, anyType)
        local value = (anyType)
        if jLength(value) < Int32(2)
            local stringValidationUtil = AllBinary.getInstance(StringValidationUtil)
            if AllBinary.isNumber(stringValidationUtil, value)
                return AllBinary.getInstance(BooleanFactory).TRUE
            else
                try
                    AllBinary.fireError(AllBinary.getInstance(TextNotificationUtil), "Numbers Only")
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

