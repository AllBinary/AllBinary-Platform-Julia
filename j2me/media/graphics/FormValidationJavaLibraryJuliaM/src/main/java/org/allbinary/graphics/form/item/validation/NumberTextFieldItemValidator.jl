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
mutable struct NumberTextFieldItemValidator <: JObject
    textFieldItem::Any
    min::Int32
    max::Int32
    maxChars::Int32
    NumberTextFieldItemValidator() = new()
end


function initFieldsNumberTextFieldItemValidator(this::NumberTextFieldItemValidator)
    this.textFieldItem = nothing
    this.min = Int32(0)
    this.max = Int32(0)
    this.maxChars = Int32(0)
    
    
    
    
    nothing
end


function initNumberTextFieldItemValidator(this::NumberTextFieldItemValidator, textFieldItem, maxChars, min, max)
        initValidatorBase(this)
        initFieldsNumberTextFieldItemValidator(this)
        this.textFieldItem = textFieldItem
        this.min = min
        this.max = max
        this.maxChars = maxChars
        nothing
end

function newNumberTextFieldItemValidator(textFieldItem, maxChars, min, max)
    this = NumberTextFieldItemValidator()
    initNumberTextFieldItemValidator(this, textFieldItem, maxChars, min, max)
    this
end


function isNumberValid(this::NumberTextFieldItemValidator, value)
        return AllBinary.getInstance(BooleanFactory).TRUE
end


function toNumberVector(this::NumberTextFieldItemValidator, value)
        return newBasicArrayListD()
end


function isValid(this::NumberTextFieldItemValidator)
        local result = AllBinary.getInstance(BooleanFactory).TRUE
        local string = AllBinary.getString(this.textFieldItem)
        local textLength::Int32 = jLength(string)
        if textLength > Int32(0) && textLength < this.maxChars
            try
                Base.parse(Int32, AllBinary.getString(this.textFieldItem))
            catch e
                result = AllBinary.getInstance(BooleanFactory).FALSE
            end
        else
            if textLength < Int32(1)
                result = AllBinary.getInstance(BooleanFactory).FALSE
            elseif textLength > this.maxChars
                result = AllBinary.getInstance(BooleanFactory).FALSE
            end
        end
        return result
end


function toList(this::NumberTextFieldItemValidator)
        local list = newBasicArrayListD()
        local string = AllBinary.getString(this.textFieldItem)
        local textLength::Int32 = jLength(string)
        local label = AllBinary.getLabel(this.textFieldItem)
        local name = jSubstring(label, Int32(0), jLength(label) - Int32(2))
        local smallIntegerSingletonFactory = AllBinary.getInstance(SmallIntegerSingletonFactory)
        local stringMaker = newStringMaker()
        if textLength > Int32(0) && textLength < this.maxChars
            try
                local number = AllBinary.createInstance(smallIntegerSingletonFactory, Base.parse(Int32, AllBinary.getString(this.textFieldItem)))
                if AllBinary.intValue(number) > this.min
                    AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                    AllBinary.add(list, AllBinary.toString(AllBinary.append(AllBinary.append(stringMaker, name), " is to small")))
                elseif AllBinary.intValue(number) > this.max
                    AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                    AllBinary.add(list, AllBinary.toString(AllBinary.append(AllBinary.append(stringMaker, name), " is to large")))
                end
            catch e
                AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                AllBinary.add(list, AllBinary.toString(AllBinary.append(AllBinary.append(stringMaker, name), " is not a number")))
            end
        else
            if textLength < Int32(1)
                AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                AllBinary.add(list, AllBinary.toString(AllBinary.append(AllBinary.append(stringMaker, name), " is to short")))
            elseif textLength > this.maxChars
                AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                AllBinary.add(list, AllBinary.toString(AllBinary.append(AllBinary.append(stringMaker, name), " is to long")))
            end
        end
        return list
end

