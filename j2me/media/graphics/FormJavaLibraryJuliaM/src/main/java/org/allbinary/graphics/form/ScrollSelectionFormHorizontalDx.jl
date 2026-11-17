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
mutable struct ScrollSelectionFormHorizontalDx <: JObject
    scrollSelectionForm::Any
    ScrollSelectionFormHorizontalDx() = new()
end


function initFieldsScrollSelectionFormHorizontalDx(this::ScrollSelectionFormHorizontalDx)
    this.scrollSelectionForm = nothing
    
    nothing
end


function initScrollSelectionFormHorizontalDx(this::ScrollSelectionFormHorizontalDx, scrollSelectionForm)
        initItemIndexDx(this)
        initFieldsScrollSelectionFormHorizontalDx(this)
        this.scrollSelectionForm = scrollSelectionForm
        nothing
end

function newScrollSelectionFormHorizontalDx(scrollSelectionForm)
    this = ScrollSelectionFormHorizontalDx()
    initScrollSelectionFormHorizontalDx(this, scrollSelectionForm)
    this
end


function getDx(this::ScrollSelectionFormHorizontalDx, index, item, dx, dy)
        return AllBinary.getSelectedIndexForPointHorizontalDx(this.scrollSelectionForm, index, item, dx, dy)
end

