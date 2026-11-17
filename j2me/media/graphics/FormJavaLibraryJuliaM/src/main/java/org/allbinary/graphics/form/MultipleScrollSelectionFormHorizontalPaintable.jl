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
mutable struct MultipleScrollSelectionFormHorizontalPaintable <: JObject
    multipleScrollSelectionForm::Any
    MultipleScrollSelectionFormHorizontalPaintable() = new()
end


function initFieldsMultipleScrollSelectionFormHorizontalPaintable(this::MultipleScrollSelectionFormHorizontalPaintable)
    this.multipleScrollSelectionForm = nothing
    
    nothing
end


function initMultipleScrollSelectionFormHorizontalPaintable(this::MultipleScrollSelectionFormHorizontalPaintable, multipleScrollSelectionForm)
        initItemIndexPaintable(this)
        initFieldsMultipleScrollSelectionFormHorizontalPaintable(this)
        this.multipleScrollSelectionForm = multipleScrollSelectionForm
        nothing
end

function newMultipleScrollSelectionFormHorizontalPaintable(multipleScrollSelectionForm)
    this = MultipleScrollSelectionFormHorizontalPaintable()
    initMultipleScrollSelectionFormHorizontalPaintable(this, multipleScrollSelectionForm)
    this
end


function paint(this::MultipleScrollSelectionFormHorizontalPaintable, graphics, index, item, dx, dy)
        return AllBinary.paintHorizontal(this.multipleScrollSelectionForm, graphics, index, item, dx, dy)
end

