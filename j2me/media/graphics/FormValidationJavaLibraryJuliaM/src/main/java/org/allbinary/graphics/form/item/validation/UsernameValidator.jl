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
mutable struct UsernameValidator <: JObject
    UsernameValidator() = new()
end


function initFieldsUsernameValidator(this::UsernameValidator)
    nothing
end


function initUsernameValidator(this::UsernameValidator, textFieldItem, min, max, allowOnEmpty)
        initTextFieldItemValidator(this, textFieldItem, min, max, allowOnEmpty)
        nothing
end

function newUsernameValidator(textFieldItem, min, max, allowOnEmpty)
    this = UsernameValidator()
    initUsernameValidator(this, textFieldItem, min, max, allowOnEmpty)
    this
end

