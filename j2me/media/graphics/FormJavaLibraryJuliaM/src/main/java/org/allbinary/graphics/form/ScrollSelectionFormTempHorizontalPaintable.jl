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

# extends ItemIndexPaintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ScrollSelectionFormTempHorizontalPaintable <: JObject
    scrollSelectionForm::Any
    ScrollSelectionFormTempHorizontalPaintable() = new()
end


function initFieldsScrollSelectionFormTempHorizontalPaintable(this::ScrollSelectionFormTempHorizontalPaintable)
    this.scrollSelectionForm = nothing
    
    nothing
end


function initScrollSelectionFormTempHorizontalPaintable(this::ScrollSelectionFormTempHorizontalPaintable, scrollSelectionForm)
        initItemIndexPaintable(this)
        initFieldsScrollSelectionFormTempHorizontalPaintable(this)
        this.scrollSelectionForm = scrollSelectionForm
        nothing
end

function newScrollSelectionFormTempHorizontalPaintable(scrollSelectionForm)
    this = ScrollSelectionFormTempHorizontalPaintable()
    initScrollSelectionFormTempHorizontalPaintable(this, scrollSelectionForm)
    this
end


function paint(this::ScrollSelectionFormTempHorizontalPaintable, graphics, index, item, dx, dy)
        return AllBinary.paintItemTempHorizontal(this.scrollSelectionForm, graphics, index, item, dx, dy)
end

