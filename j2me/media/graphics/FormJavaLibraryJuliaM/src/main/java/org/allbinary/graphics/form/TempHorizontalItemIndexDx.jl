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
mutable struct TempHorizontalItemIndexDx <: JObject
    scrollCurrentSelectionForm::Any
    TempHorizontalItemIndexDx() = new()
end


function initFieldsTempHorizontalItemIndexDx(this::TempHorizontalItemIndexDx)
    this.scrollCurrentSelectionForm = nothing
    
    nothing
end


function initTempHorizontalItemIndexDx(this::TempHorizontalItemIndexDx, scrollCurrentSelectionForm)
        initItemIndexDx(this)
        initFieldsTempHorizontalItemIndexDx(this)
        this.scrollCurrentSelectionForm = scrollCurrentSelectionForm
        nothing
end

function newTempHorizontalItemIndexDx(scrollCurrentSelectionForm)
    this = TempHorizontalItemIndexDx()
    initTempHorizontalItemIndexDx(this, scrollCurrentSelectionForm)
    this
end


function getDx(this::TempHorizontalItemIndexDx, index, item, dx, dy)
        return AllBinary.getXTempHorizontalForm(this.scrollCurrentSelectionForm, index, item, dx, dy)
end

