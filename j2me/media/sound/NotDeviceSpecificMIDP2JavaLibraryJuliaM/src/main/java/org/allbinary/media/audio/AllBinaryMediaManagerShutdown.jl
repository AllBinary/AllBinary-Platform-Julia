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
# package org.allbinary.media.audio

mutable struct AllBinaryMediaManagerShutdown <: JObject
    AllBinaryMediaManagerShutdown() = new()
end

const AllBinaryMediaManagerShutdown_instanceValue = Ref{Any}(nothing)
const AllBinaryMediaManagerShutdown_instanceSet = Ref(false)
function staticGet_instance(::Type{AllBinaryMediaManagerShutdown})
    if !AllBinaryMediaManagerShutdown_instanceSet[]
        AllBinaryMediaManagerShutdown_instanceSet[] = true
        AllBinaryMediaManagerShutdown_instanceValue[] = newAllBinaryMediaManagerShutdown()
    end
    AllBinaryMediaManagerShutdown_instanceValue[]
end
function staticSet_instance(::Type{AllBinaryMediaManagerShutdown}, value)
    AllBinaryMediaManagerShutdown_instanceSet[] = true
    AllBinaryMediaManagerShutdown_instanceValue[] = value
end

function initFieldsAllBinaryMediaManagerShutdown(this::AllBinaryMediaManagerShutdown)
    nothing
end

function initAllBinaryMediaManagerShutdown(this::AllBinaryMediaManagerShutdown)
    initFieldsAllBinaryMediaManagerShutdown(this)
end

function newAllBinaryMediaManagerShutdown()
    this = AllBinaryMediaManagerShutdown()
    initAllBinaryMediaManagerShutdown(this)
    this
end


function shutdown(::Type{AllBinaryMediaManagerShutdown}, soundsFactoryInterface)
        local logUtil = AllBinary.getInstance(LogUtil)
        local commonStrings = AllBinary.getInstance(CommonStrings)
        AllBinary.putF(logUtil, commonStrings.START, staticGet_instance(AllBinaryMediaManagerShutdown), "shutdown")
        AllBinary.shutdown(AllBinaryMediaManager, soundsFactoryInterface)
        nothing
end

