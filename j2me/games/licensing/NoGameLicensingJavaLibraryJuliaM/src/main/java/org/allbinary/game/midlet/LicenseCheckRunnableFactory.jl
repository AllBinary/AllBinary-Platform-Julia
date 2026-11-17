#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.game.midlet

mutable struct LicenseCheckRunnableFactory <: JObject
    LicenseCheckRunnableFactory() = new()
end


function initFieldsLicenseCheckRunnableFactory(this::LicenseCheckRunnableFactory)
    nothing
end

function initLicenseCheckRunnableFactory(this::LicenseCheckRunnableFactory)
    initFieldsLicenseCheckRunnableFactory(this)
end

function newLicenseCheckRunnableFactory()
    this = LicenseCheckRunnableFactory()
    initLicenseCheckRunnableFactory(this)
    this
end


function getInstance(this::LicenseCheckRunnableFactory, specialDemoGameMidlet)
        return AllBinary.getInstance(NullABRunnable)
end

