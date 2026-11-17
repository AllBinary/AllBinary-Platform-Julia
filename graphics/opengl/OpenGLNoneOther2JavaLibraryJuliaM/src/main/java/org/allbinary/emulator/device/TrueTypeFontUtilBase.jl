#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.emulator.device

mutable struct TrueTypeFontUtilBase <: JObject
    TrueTypeFontUtilBase() = new()
end


function initFieldsTrueTypeFontUtilBase(this::TrueTypeFontUtilBase)
    nothing
end


function initTrueTypeFontUtilBase(this::TrueTypeFontUtilBase, scale)
        initFieldsTrueTypeFontUtilBase(this)
        nothing
        nothing
end

function newTrueTypeFontUtilBase(scale)
    this = TrueTypeFontUtilBase()
    initTrueTypeFontUtilBase(this, scale)
    this
end


function getAsTextureSize(this::TrueTypeFontUtilBase, textureSize)
        return -Int32(1)
end


function getCellSize(this::TrueTypeFontUtilBase, cellSize)
        return -Int32(1)
end

