#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.animation.text

# extends CustomTextBox: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CustomTextBox2 <: JObject
    CustomTextBox2() = new()
end


function initFieldsCustomTextBox2(this::CustomTextBox2)
    nothing
end


function initCustomTextBox2(this::CustomTextBox2, cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)
        initCustomTextBox(this, cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)
        AllBinary.setFocus(AllBinary.getTextFieldItem(this), true)
        nothing
end

function newCustomTextBox2(cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)
    this = CustomTextBox2()
    initCustomTextBox2(this, cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)
    this
end

