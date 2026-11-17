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

# extends AbFileInputStream: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AbFileLocalInputStream <: JObject
    AbFileLocalInputStream() = new()
end


function initFieldsAbFileLocalInputStream(this::AbFileLocalInputStream)
    nothing
end


function initAbFileLocalInputStream(this::AbFileLocalInputStream, file)
        initAbFileInputStream(this, AllBinary.getPath(AllBinary.get(AbFileNativeUtil, file)))
        nothing
end

function newAbFileLocalInputStream(file)
    this = AbFileLocalInputStream()
    initAbFileLocalInputStream(this, file)
    this
end

