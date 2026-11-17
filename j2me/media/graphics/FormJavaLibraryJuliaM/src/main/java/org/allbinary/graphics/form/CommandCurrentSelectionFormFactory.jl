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
# package org.allbinary.graphics.form

mutable struct CommandCurrentSelectionFormFactory <: JObject
    CommandCurrentSelectionFormFactory() = new()
end


function initFieldsCommandCurrentSelectionFormFactory(this::CommandCurrentSelectionFormFactory)
    nothing
end

function initCommandCurrentSelectionFormFactory(this::CommandCurrentSelectionFormFactory)
    initFieldsCommandCurrentSelectionFormFactory(this)
end

function newCommandCurrentSelectionFormFactory()
    this = CommandCurrentSelectionFormFactory()
    initCommandCurrentSelectionFormFactory(this)
    this
end


function getInstance(::Type{CommandCurrentSelectionFormFactory}, title, items, rectangle, formType, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
        if AllBinary.isFeature(AllBinary.getInstance(Features), AllBinary.getInstance(TouchFeatureFactory).TOUCH_ENABLED)
            local scrollSelectionForm = newCommandCurrentSelectionForm(title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
            AllBinary.init(scrollSelectionForm, rectangle, formType)
            return scrollSelectionForm
        else
            return AllBinary.getInstance(ScrollSelectionFormNoneFactory)
        end
end

