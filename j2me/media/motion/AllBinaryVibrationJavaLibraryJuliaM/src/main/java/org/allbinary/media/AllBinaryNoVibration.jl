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
# package org.allbinary.media

# extends AllBinaryVibrationME: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AllBinaryNoVibration <: JObject
    AllBinaryNoVibration() = new()
end

const AllBinaryNoVibration_NO_VIBRATIONValue = Ref{Any}(nothing)
const AllBinaryNoVibration_NO_VIBRATIONSet = Ref(false)
function staticGet_NO_VIBRATION(::Type{AllBinaryNoVibration})
    if !AllBinaryNoVibration_NO_VIBRATIONSet[]
        AllBinaryNoVibration_NO_VIBRATIONSet[] = true
        AllBinaryNoVibration_NO_VIBRATIONValue[] = newAllBinaryNoVibration()
    end
    AllBinaryNoVibration_NO_VIBRATIONValue[]
end
function staticSet_NO_VIBRATION(::Type{AllBinaryNoVibration}, value)
    AllBinaryNoVibration_NO_VIBRATIONSet[] = true
    AllBinaryNoVibration_NO_VIBRATIONValue[] = value
end

function initFieldsAllBinaryNoVibration(this::AllBinaryNoVibration)
    nothing
end

function initAllBinaryNoVibration(this::AllBinaryNoVibration)
    initAllBinaryVibrationME(this)
    initFieldsAllBinaryNoVibration(this)
end

function newAllBinaryNoVibration()
    this = AllBinaryNoVibration()
    initAllBinaryNoVibration(this)
    this
end


function vibrate(this::AllBinaryNoVibration, duration, type_, volume)
        nothing
        nothing
end

