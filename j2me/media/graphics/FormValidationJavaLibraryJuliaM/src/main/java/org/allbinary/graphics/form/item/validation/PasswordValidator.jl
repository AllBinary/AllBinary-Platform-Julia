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

# extends TextFieldItemValidator: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PasswordValidator <: JObject
    PasswordValidator() = new()
end


function initFieldsPasswordValidator(this::PasswordValidator)
    nothing
end


function initPasswordValidator(this::PasswordValidator, textFieldItem, min, max, allowOnEmpty)
        initTextFieldItemValidator(this, textFieldItem, min, max, allowOnEmpty)
        nothing
end

function newPasswordValidator(textFieldItem, min, max, allowOnEmpty)
    this = PasswordValidator()
    initPasswordValidator(this, textFieldItem, min, max, allowOnEmpty)
    this
end

