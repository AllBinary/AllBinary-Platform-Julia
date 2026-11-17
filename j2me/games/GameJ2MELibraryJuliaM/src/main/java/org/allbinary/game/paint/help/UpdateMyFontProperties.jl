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
# package org.allbinary.game.paint.help

mutable struct UpdateMyFontProperties <: JObject
    actionStringArray::Any
    keymappingBeginWidthArray::Any
    actionStringDeltaXArray::Any
    inputDeltaXArray::Any
    sepArray::Any
    sepWidthArray::Any
    charHeight::Int32
    UpdateMyFontProperties() = new()
end


function initFieldsUpdateMyFontProperties(this::UpdateMyFontProperties)
    this.actionStringArray = nothing
    this.keymappingBeginWidthArray = nothing
    this.actionStringDeltaXArray = nothing
    this.inputDeltaXArray = nothing
    this.sepArray = nothing
    this.sepWidthArray = nothing
    this.charHeight = Int32(0)
    this.actionStringArray = AllBinary.getArrayInstance(AllBinary.getInstance(StringUtil))
    this.keymappingBeginWidthArray = AllBinary.getInstance(NullUtil).NULL_INT_ARRAY
    this.actionStringDeltaXArray = AllBinary.getInstance(NullUtil).NULL_INT_ARRAY
    this.inputDeltaXArray = AllBinary.getInstance(NullUtil).NULL_INT_ARRAY_ARRAY
    this.sepArray = AllBinary.getInstance(StringUtil).ONE_EMPTY_STRING_ARRAY_OF_ARRAYS
    this.sepWidthArray = AllBinary.getInstance(NullUtil).NULL_INT_ARRAY_ARRAY
    this.charHeight = Int32(0)
    nothing
end

function initUpdateMyFontProperties(this::UpdateMyFontProperties)
    initFieldsUpdateMyFontProperties(this)
end

function newUpdateMyFontProperties()
    this = UpdateMyFontProperties()
    initUpdateMyFontProperties(this)
    this
end

