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
mutable struct MultipleScrollSelectionFormVerticalPaintable <: JObject
    multipleScrollSelectionForm::Any
    MultipleScrollSelectionFormVerticalPaintable() = new()
end


function initFieldsMultipleScrollSelectionFormVerticalPaintable(this::MultipleScrollSelectionFormVerticalPaintable)
    this.multipleScrollSelectionForm = nothing
    
    nothing
end


function initMultipleScrollSelectionFormVerticalPaintable(this::MultipleScrollSelectionFormVerticalPaintable, multipleScrollSelectionForm)
        initItemIndexPaintable(this)
        initFieldsMultipleScrollSelectionFormVerticalPaintable(this)
        this.multipleScrollSelectionForm = multipleScrollSelectionForm
        nothing
end

function newMultipleScrollSelectionFormVerticalPaintable(multipleScrollSelectionForm)
    this = MultipleScrollSelectionFormVerticalPaintable()
    initMultipleScrollSelectionFormVerticalPaintable(this, multipleScrollSelectionForm)
    this
end


function paint(this::MultipleScrollSelectionFormVerticalPaintable, graphics, index, item, dx, dy)
        return AllBinary.paintVertical(this.multipleScrollSelectionForm, graphics, index, item, dx, dy)
end

