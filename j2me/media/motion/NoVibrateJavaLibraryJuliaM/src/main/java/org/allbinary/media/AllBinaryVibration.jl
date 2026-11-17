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
mutable struct AllBinaryVibration <: JObject
    AllBinaryVibration() = new()
end

const AllBinaryVibration_VIBRATIONValue = Ref{Any}(nothing)
const AllBinaryVibration_VIBRATIONSet = Ref(false)
function staticGet_VIBRATION(::Type{AllBinaryVibration})
    if !AllBinaryVibration_VIBRATIONSet[]
        AllBinaryVibration_VIBRATIONSet[] = true
        AllBinaryVibration_VIBRATIONValue[] = staticGet_NO_VIBRATION(AllBinaryNoVibration)
    end
    AllBinaryVibration_VIBRATIONValue[]
end
function staticSet_VIBRATION(::Type{AllBinaryVibration}, value)
    AllBinaryVibration_VIBRATIONSet[] = true
    AllBinaryVibration_VIBRATIONValue[] = value
end

function initFieldsAllBinaryVibration(this::AllBinaryVibration)
    nothing
end


function initAllBinaryVibration(this::AllBinaryVibration)
        initAllBinaryVibrationME(this)
        initFieldsAllBinaryVibration(this)
        nothing
        nothing
end

function newAllBinaryVibration()
    this = AllBinaryVibration()
    initAllBinaryVibration(this)
    this
end


function getInstance(::Type{AllBinaryVibration})
        return staticGet_VIBRATION(AllBinaryVibration)
end


function init(::Type{AllBinaryVibration})
        if AllBinary.intValue(AllBinary.getValue(AllBinary.getInstance(GameConfigurationCentral).VIBRATION)) == Int32(0)
            staticSet_VIBRATION(AllBinaryVibration, staticGet_NO_VIBRATION(AllBinaryNoVibration))
        else
            staticSet_VIBRATION(AllBinaryVibration, newAllBinaryVibration())
        end
        nothing
end


function vibrate(this::AllBinaryVibration, duration, type_, volume)
        nothing
        nothing
end

