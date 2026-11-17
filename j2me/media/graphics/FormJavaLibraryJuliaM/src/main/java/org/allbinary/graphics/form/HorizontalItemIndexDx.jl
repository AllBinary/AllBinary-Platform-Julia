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

# extends ItemIndexDx: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HorizontalItemIndexDx <: JObject
    scrollCurrentSelectionForm::Any
    HorizontalItemIndexDx() = new()
end


function initFieldsHorizontalItemIndexDx(this::HorizontalItemIndexDx)
    this.scrollCurrentSelectionForm = nothing
    
    nothing
end


function initHorizontalItemIndexDx(this::HorizontalItemIndexDx, scrollCurrentSelectionForm)
        initItemIndexDx(this)
        initFieldsHorizontalItemIndexDx(this)
        this.scrollCurrentSelectionForm = scrollCurrentSelectionForm
        nothing
end

function newHorizontalItemIndexDx(scrollCurrentSelectionForm)
    this = HorizontalItemIndexDx()
    initHorizontalItemIndexDx(this, scrollCurrentSelectionForm)
    this
end


function getDx(this::HorizontalItemIndexDx, index, item, dx, dy)
        return AllBinary.getXHorizontalForm(this.scrollCurrentSelectionForm, index, item, dx, dy)
end

