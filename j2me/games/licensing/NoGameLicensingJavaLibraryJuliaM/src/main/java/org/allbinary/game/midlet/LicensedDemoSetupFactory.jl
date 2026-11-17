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

mutable struct LicensedDemoSetupFactory <: JObject
    LicensedDemoSetupFactory() = new()
end


function initFieldsLicensedDemoSetupFactory(this::LicensedDemoSetupFactory)
    nothing
end

function initLicensedDemoSetupFactory(this::LicensedDemoSetupFactory)
    initFieldsLicensedDemoSetupFactory(this)
end

function newLicensedDemoSetupFactory()
    this = LicensedDemoSetupFactory()
    initLicensedDemoSetupFactory(this)
    this
end


function getInstance(this::LicensedDemoSetupFactory)
        return newDemoSetup()
end

