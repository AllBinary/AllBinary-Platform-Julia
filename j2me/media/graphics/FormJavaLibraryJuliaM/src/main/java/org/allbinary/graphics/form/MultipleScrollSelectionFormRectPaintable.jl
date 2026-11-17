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

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct MultipleScrollSelectionFormRectPaintable <: JObject
    multipleScrollSelectionForm::Any
    MultipleScrollSelectionFormRectPaintable() = new()
end


function initFieldsMultipleScrollSelectionFormRectPaintable(this::MultipleScrollSelectionFormRectPaintable)
    this.multipleScrollSelectionForm = nothing
    
    nothing
end


function initMultipleScrollSelectionFormRectPaintable(this::MultipleScrollSelectionFormRectPaintable, multipleScrollSelectionForm)
        initPaintable(this)
        initFieldsMultipleScrollSelectionFormRectPaintable(this)
        this.multipleScrollSelectionForm = multipleScrollSelectionForm
        nothing
end

function newMultipleScrollSelectionFormRectPaintable(multipleScrollSelectionForm)
    this = MultipleScrollSelectionFormRectPaintable()
    initMultipleScrollSelectionFormRectPaintable(this, multipleScrollSelectionForm)
    this
end


function paint(this::MultipleScrollSelectionFormRectPaintable, graphics)
        AllBinary.fillRect(this.multipleScrollSelectionForm, graphics)
        nothing
end

