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

# extends DemoGameMidlet: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SpecialDemoGameMidlet <: JObject
    SpecialDemoGameMidlet() = new()
end


function initFieldsSpecialDemoGameMidlet(this::SpecialDemoGameMidlet)
    nothing
end


function initSpecialDemoGameMidlet(this::SpecialDemoGameMidlet, clientInformationFactory, licenseLoadingType, demoSetupFactory, licenseCheckRunnableFactory)
        initDemoGameMidlet(this, clientInformationFactory)
        nothing
end

function newSpecialDemoGameMidlet(clientInformationFactory, licenseLoadingType, demoSetupFactory, licenseCheckRunnableFactory)
    this = SpecialDemoGameMidlet()
    initSpecialDemoGameMidlet(this, clientInformationFactory, licenseLoadingType, demoSetupFactory, licenseCheckRunnableFactory)
    this
end


function initView(this::SpecialDemoGameMidlet)
        nothing
        nothing
end


function preInit(this::SpecialDemoGameMidlet)
        AllBinary.init(newLicenseServerInitFileUtil())
        nothing
end

