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
# package org.allbinary.animation

mutable struct BaseAnimationInterfaceFactoryInterfaceComposite <: JObject
    basicAnimationInterfaceFactoryInterfaceArray::Any
    BaseAnimationInterfaceFactoryInterfaceComposite() = new()
end


function initFieldsBaseAnimationInterfaceFactoryInterfaceComposite(this::BaseAnimationInterfaceFactoryInterfaceComposite)
    this.basicAnimationInterfaceFactoryInterfaceArray = nothing
    
    nothing
end


function initBaseAnimationInterfaceFactoryInterfaceComposite(this::BaseAnimationInterfaceFactoryInterfaceComposite, basicAnimationInterfaceFactoryInterfaceArray)
        initFieldsBaseAnimationInterfaceFactoryInterfaceComposite(this)
        this.basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
        nothing
end

function newBaseAnimationInterfaceFactoryInterfaceComposite(basicAnimationInterfaceFactoryInterfaceArray)
    this = BaseAnimationInterfaceFactoryInterfaceComposite()
    initBaseAnimationInterfaceFactoryInterfaceComposite(this, basicAnimationInterfaceFactoryInterfaceArray)
    this
end


function getInstance(this::BaseAnimationInterfaceFactoryInterfaceComposite, instanceId)
        return AllBinary.getInstance(AllBinary.getFactoryInstance(NullAnimationFactory), Int32(0))
end


function getBasicAnimationInterfaceFactoryInterfaceArray(this::BaseAnimationInterfaceFactoryInterfaceComposite)
        return this.basicAnimationInterfaceFactoryInterfaceArray
end


function setBasicAnimationInterfaceFactoryInterfaceArray(this::BaseAnimationInterfaceFactoryInterfaceComposite, basicAnimationInterfaceFactoryInterfaceArray)
        this.basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
        nothing
end


function setInitialScale(this::BaseAnimationInterfaceFactoryInterfaceComposite, scaleProperties)
        nothing
        nothing
end

