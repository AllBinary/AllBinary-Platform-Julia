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
# package org.allbinary.game.midlet

mutable struct LicenseLoadingTypeFactory <: JObject
    INITIAL_LOADING::Any
    GAME_START::Any
    LOGIN::Any
    OTHER::Any
    LicenseLoadingTypeFactory() = new()
end

const LicenseLoadingTypeFactory_instanceValue = Ref{Any}(nothing)
const LicenseLoadingTypeFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{LicenseLoadingTypeFactory})
    if !LicenseLoadingTypeFactory_instanceSet[]
        LicenseLoadingTypeFactory_instanceSet[] = true
        LicenseLoadingTypeFactory_instanceValue[] = newLicenseLoadingTypeFactory()
    end
    LicenseLoadingTypeFactory_instanceValue[]
end
function staticSet_instance(::Type{LicenseLoadingTypeFactory}, value)
    LicenseLoadingTypeFactory_instanceSet[] = true
    LicenseLoadingTypeFactory_instanceValue[] = value
end

function initFieldsLicenseLoadingTypeFactory(this::LicenseLoadingTypeFactory)
    this.INITIAL_LOADING = nothing
    this.GAME_START = nothing
    this.LOGIN = nothing
    this.OTHER = nothing
    this.INITIAL_LOADING = newLicenseLoadingType("Initial Loading")
    this.GAME_START = newLicenseLoadingType("Game Start")
    this.LOGIN = newLicenseLoadingType("Login")
    this.OTHER = newLicenseLoadingType("Other/Usually The First Non Demo Level")
    nothing
end

function initLicenseLoadingTypeFactory(this::LicenseLoadingTypeFactory)
    initFieldsLicenseLoadingTypeFactory(this)
end

function newLicenseLoadingTypeFactory()
    this = LicenseLoadingTypeFactory()
    initLicenseLoadingTypeFactory(this)
    this
end


function getIntance(::Type{LicenseLoadingTypeFactory})
        return staticGet_instance(LicenseLoadingTypeFactory)
end

