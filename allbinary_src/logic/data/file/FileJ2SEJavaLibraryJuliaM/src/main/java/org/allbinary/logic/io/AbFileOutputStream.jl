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

# extends FileOutputStream: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AbFileOutputStream <: JObject
    AbFileOutputStream() = new()
end


function initFieldsAbFileOutputStream(this::AbFileOutputStream)
    nothing
end


function createFromAbFile(::Type{AbFileOutputStream}, file)
        return newAbFileOutputStream(AllBinary.getPath(file), false)
end


function createFromAbFileAppend(::Type{AbFileOutputStream}, file, append)
        return newAbFileOutputStream(AllBinary.getPath(file), append)
end


function createFromFilePath(::Type{AbFileOutputStream}, name)
        return newAbFileOutputStream(name, false)
end


function createFromFilePathAppend(::Type{AbFileOutputStream}, name, append)
        return newAbFileOutputStream(name, append)
end


function initAbFileOutputStream(this::AbFileOutputStream, name, append)
        initFileOutputStream(this, name, append)
        nothing
end

function newAbFileOutputStream(name, append)
    this = AbFileOutputStream()
    initAbFileOutputStream(this, name, append)
    this
end

