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
# package org.allbinary.logic.system.hardware.components

mutable struct Component <: JObject
    name::Any
    Component() = new()
end


function initFieldsComponent(this::Component)
    this.name = nothing
    
    nothing
end


function initComponent(this::Component, componentName)
        initFieldsComponent(this)
        this.name = componentName
        nothing
end

function newComponent(componentName)
    this = Component()
    initComponent(this, componentName)
    this
end


function toString(this::Component)
        return this.name
end

