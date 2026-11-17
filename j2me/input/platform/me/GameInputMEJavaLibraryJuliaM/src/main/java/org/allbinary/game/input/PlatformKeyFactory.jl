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
# package org.allbinary.game.input

mutable struct PlatformKeyFactory <: JObject
    PlatformKeyFactory() = new()
end

const PlatformKeyFactory_instanceValue = Ref{Any}(nothing)
const PlatformKeyFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{PlatformKeyFactory})
    if !PlatformKeyFactory_instanceSet[]
        PlatformKeyFactory_instanceSet[] = true
        PlatformKeyFactory_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    PlatformKeyFactory_instanceValue[]
end
function staticSet_instance(::Type{PlatformKeyFactory}, value)
    PlatformKeyFactory_instanceSet[] = true
    PlatformKeyFactory_instanceValue[] = value
end

function initFieldsPlatformKeyFactory(this::PlatformKeyFactory)
    nothing
end

function initPlatformKeyFactory(this::PlatformKeyFactory)
    initFieldsPlatformKeyFactory(this)
end

function newPlatformKeyFactory()
    this = PlatformKeyFactory()
    initPlatformKeyFactory(this)
    this
end


function getInstance(::Type{PlatformKeyFactory})
        if staticGet_instance(PlatformKeyFactory) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(PlatformKeyFactory, newPlatformKeyFactory())
        end
        return (staticGet_instance(PlatformKeyFactory))
end


function getString(this::PlatformKeyFactory, keyCode)
        return AllBinary.getString(J2MEGameKey, keyCode)
end


function isSubmission(this::PlatformKeyFactory, input)
        return AllBinary.isSubmission(AllBinary.getInstance(J2MEKeyFactory), input)
end


function isDelete(this::PlatformKeyFactory, input)
        return AllBinary.isDelete(AllBinary.getInstance(J2MEKeyFactory), input)
end


function isBackSpace(this::PlatformKeyFactory, input)
        return AllBinary.isBackSpace(AllBinary.getInstance(J2MEKeyFactory), input)
end


function isLeft(this::PlatformKeyFactory, input)
        return AllBinary.isLeft(AllBinary.getInstance(J2MEKeyFactory), input)
end


function isRight(this::PlatformKeyFactory, input)
        return AllBinary.isRight(AllBinary.getInstance(J2MEKeyFactory), input)
end


function isUp(this::PlatformKeyFactory, input)
        return AllBinary.isUp(AllBinary.getInstance(J2MEKeyFactory), input)
end


function isDown(this::PlatformKeyFactory, input)
        return AllBinary.isDown(AllBinary.getInstance(J2MEKeyFactory), input)
end


function isEnter(this::PlatformKeyFactory, input)
        return AllBinary.isEnter(AllBinary.getInstance(J2MEKeyFactory), input)
end

