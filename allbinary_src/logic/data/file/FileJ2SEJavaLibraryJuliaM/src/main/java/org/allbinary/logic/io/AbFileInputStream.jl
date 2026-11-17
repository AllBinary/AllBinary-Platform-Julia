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
# package org.allbinary.logic.io

# extends FileInputStream: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AbFileInputStream <: JObject
    AbFileInputStream() = new()
end


function initFieldsAbFileInputStream(this::AbFileInputStream)
    nothing
end


function initAbFileInputStream(this::AbFileInputStream, name)
        initFileInputStream(this, name)
        nothing
end

function newAbFileInputStream(name)
    this = AbFileInputStream()
    initAbFileInputStream(this, name)
    this
end


function createFromAbFile(::Type{AbFileInputStream}, file)
        return newAbFileInputStream(AllBinary.getPath(AllBinary.get(AbFileNativeUtil, file)))
end


function createFromFile(::Type{AbFileInputStream}, file)
        return newAbFileInputStream(AllBinary.getPath(file))
end

