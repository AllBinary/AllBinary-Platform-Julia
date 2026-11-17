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
mutable struct ScrollSelectionFormTempHorizontalDx <: JObject
    scrollSelectionForm::Any
    ScrollSelectionFormTempHorizontalDx() = new()
end


function initFieldsScrollSelectionFormTempHorizontalDx(this::ScrollSelectionFormTempHorizontalDx)
    this.scrollSelectionForm = nothing
    
    nothing
end


function initScrollSelectionFormTempHorizontalDx(this::ScrollSelectionFormTempHorizontalDx, scrollSelectionForm)
        initItemIndexDx(this)
        initFieldsScrollSelectionFormTempHorizontalDx(this)
        this.scrollSelectionForm = scrollSelectionForm
        nothing
end

function newScrollSelectionFormTempHorizontalDx(scrollSelectionForm)
    this = ScrollSelectionFormTempHorizontalDx()
    initScrollSelectionFormTempHorizontalDx(this, scrollSelectionForm)
    this
end


function getDx(this::ScrollSelectionFormTempHorizontalDx, index, item, dx, dy)
        return AllBinary.getSelectedIndexForPointTempHorizontalDx(this.scrollSelectionForm, index, item, dx, dy)
end

