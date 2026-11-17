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

# extends DataInputStream: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AbDataInputStream <: JObject
    AbDataInputStream() = new()
end


function initFieldsAbDataInputStream(this::AbDataInputStream)
    nothing
end


function initAbDataInputStream(this::AbDataInputStream, out)
        initDataInputStream(this, out)
        nothing
end

function newAbDataInputStream(out)
    this = AbDataInputStream()
    initAbDataInputStream(this, out)
    this
end

