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
# package org.allbinary.logic.math.vector

mutable struct Vertex <: JObject
    x::Any
    y::Any
    z::Any
    Vertex() = new()
end


function initFieldsVertex(this::Vertex)
    this.x = nothing
    this.y = nothing
    this.z = nothing
    this.x = newBasicDecimal(Int32(0))
    this.y = newBasicDecimal(Int32(0))
    this.z = newBasicDecimal(Int32(0))
    nothing
end


function initVertex(this::Vertex)
        initFieldsVertex(this)
        nothing
        nothing
end

function newVertex()
    this = Vertex()
    initVertex(this)
    this
end


function toString(this::Vertex)
        local stringBuffer = newStringMaker()
        local positionStrings = AllBinary.getInstance(PositionStrings)
        AllBinary.append(stringBuffer, positionStrings.X_LABEL)
        AllBinary.append(stringBuffer, AllBinary.toString(this.x))
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
        AllBinary.append(stringBuffer, positionStrings.Y_LABEL)
        AllBinary.append(stringBuffer, AllBinary.toString(this.y))
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
        AllBinary.append(stringBuffer, positionStrings.Z_LABEL)
        AllBinary.append(stringBuffer, AllBinary.toString(this.z))
        return AllBinary.toString(stringBuffer)
end

