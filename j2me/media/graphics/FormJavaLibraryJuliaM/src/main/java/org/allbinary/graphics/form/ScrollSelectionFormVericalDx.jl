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
mutable struct ScrollSelectionFormVericalDx <: JObject
    scrollSelectionForm::Any
    ScrollSelectionFormVericalDx() = new()
end


function initFieldsScrollSelectionFormVericalDx(this::ScrollSelectionFormVericalDx)
    this.scrollSelectionForm = nothing
    
    nothing
end


function initScrollSelectionFormVericalDx(this::ScrollSelectionFormVericalDx, scrollSelectionForm)
        initItemIndexDx(this)
        initFieldsScrollSelectionFormVericalDx(this)
        this.scrollSelectionForm = scrollSelectionForm
        nothing
end

function newScrollSelectionFormVericalDx(scrollSelectionForm)
    this = ScrollSelectionFormVericalDx()
    initScrollSelectionFormVericalDx(this, scrollSelectionForm)
    this
end


function getDx(this::ScrollSelectionFormVericalDx, index, item, dx, dy)
        return AllBinary.getSelectedIndexForPointVerticalDx(this.scrollSelectionForm, index, item, dx, dy)
end

