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

# extends ValidatorBase: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TextFieldItemValidator <: JObject
    textFieldItem::Any
    min::Int32
    max::Int32
    allowOnEmpty::Bool
    TextFieldItemValidator() = new()
end


function initFieldsTextFieldItemValidator(this::TextFieldItemValidator)
    this.textFieldItem = nothing
    this.min = Int32(0)
    this.max = Int32(0)
    this.allowOnEmpty = false
    
    
    
    
    nothing
end


function initTextFieldItemValidator(this::TextFieldItemValidator, textFieldItem, min, max, allowOnEmpty)
        initValidatorBase(this)
        initFieldsTextFieldItemValidator(this)
        this.textFieldItem = textFieldItem
        this.min = min
        this.max = max
        this.allowOnEmpty = allowOnEmpty
        nothing
end

function newTextFieldItemValidator(textFieldItem, min, max, allowOnEmpty)
    this = TextFieldItemValidator()
    initTextFieldItemValidator(this, textFieldItem, min, max, allowOnEmpty)
    this
end


function isValid(this::TextFieldItemValidator)
        local booleanFactory = AllBinary.getInstance(BooleanFactory)
        local result = booleanFactory.TRUE
        local string = AllBinary.getString(this.textFieldItem)
        local textLength::Int32 = jLength(string)
        if (textLength == Int32(0) && this.allowOnEmpty) || textLength > this.min && textLength < this.max
            nothing
        else
            if textLength < this.min
                result = booleanFactory.FALSE
            elseif textLength > this.max
                result = booleanFactory.FALSE
            end
        end
        return result
end


function toList(this::TextFieldItemValidator)
        local list = newBasicArrayListD()
        local string = AllBinary.getString(this.textFieldItem)
        local textLength::Int32 = jLength(string)
        if textLength > this.min && textLength < this.max
            nothing
        else
            local label = AllBinary.getLabel(this.textFieldItem)
            local name = jSubstring(label, Int32(0), jLength(label) - Int32(2))
            if textLength < this.min
                AllBinary.add(list, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), name), " is to short")))
            elseif textLength > this.max
                AllBinary.add(list, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), name), " is to long")))
            end
        end
        return list
end

