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
mutable struct ScrollSelectionFormHorizontalPaintable <: JObject
    scrollSelectionForm::Any
    ScrollSelectionFormHorizontalPaintable() = new()
end


function initFieldsScrollSelectionFormHorizontalPaintable(this::ScrollSelectionFormHorizontalPaintable)
    this.scrollSelectionForm = nothing
    
    nothing
end


function initScrollSelectionFormHorizontalPaintable(this::ScrollSelectionFormHorizontalPaintable, scrollSelectionForm)
        initItemIndexPaintable(this)
        initFieldsScrollSelectionFormHorizontalPaintable(this)
        this.scrollSelectionForm = scrollSelectionForm
        nothing
end

function newScrollSelectionFormHorizontalPaintable(scrollSelectionForm)
    this = ScrollSelectionFormHorizontalPaintable()
    initScrollSelectionFormHorizontalPaintable(this, scrollSelectionForm)
    this
end


function paint(this::ScrollSelectionFormHorizontalPaintable, graphics, index, item, dx, dy)
        return AllBinary.paintItemHorizontal(this.scrollSelectionForm, graphics, index, item, dx, dy)
end

