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
mutable struct VerticalItemIndexDx <: JObject
    scrollCurrentSelectionForm::Any
    VerticalItemIndexDx() = new()
end


function initFieldsVerticalItemIndexDx(this::VerticalItemIndexDx)
    this.scrollCurrentSelectionForm = nothing
    
    nothing
end


function initVerticalItemIndexDx(this::VerticalItemIndexDx, scrollCurrentSelectionForm)
        initItemIndexDx(this)
        initFieldsVerticalItemIndexDx(this)
        this.scrollCurrentSelectionForm = scrollCurrentSelectionForm
        nothing
end

function newVerticalItemIndexDx(scrollCurrentSelectionForm)
    this = VerticalItemIndexDx()
    initVerticalItemIndexDx(this, scrollCurrentSelectionForm)
    this
end


function getDx(this::VerticalItemIndexDx, index, item, dx, dy)
        return AllBinary.getXVerticalForm(this.scrollCurrentSelectionForm, index, item, dx, dy)
end

