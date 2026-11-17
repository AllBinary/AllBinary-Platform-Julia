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
# package org.allbinary.game.physics

mutable struct FrictionProperties <: JObject
    FrictionProperties() = new()
end


function initFieldsFrictionProperties(this::FrictionProperties)
    nothing
end


function initFrictionProperties(this::FrictionProperties)
        initFieldsFrictionProperties(this)
        nothing
        nothing
end

function newFrictionProperties()
    this = FrictionProperties()
    initFrictionProperties(this)
    this
end


function friction(this::FrictionProperties, velocityProperties, nominator)
        AllBinary.reduce(staticGet_instance(DragVelocityBehavior), velocityProperties, nominator, AllBinary.getFrictionDenominator(FrictionData))
        nothing
end

