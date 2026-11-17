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
# package org.allbinary.android.input.motion

# extends AnalogControllerVisitor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SingleAnalogControllerVisitor <: JObject
    playerInputId::Int32
    SingleAnalogControllerVisitor() = new()
end


function initFieldsSingleAnalogControllerVisitor(this::SingleAnalogControllerVisitor)
    this.playerInputId = Int32(0)
    
    nothing
end


function initSingleAnalogControllerVisitor(this::SingleAnalogControllerVisitor, playerInputId)
        initAnalogControllerVisitor(this)
        initFieldsSingleAnalogControllerVisitor(this)
        this.playerInputId = playerInputId
        nothing
end

function newSingleAnalogControllerVisitor(playerInputId)
    this = SingleAnalogControllerVisitor()
    initSingleAnalogControllerVisitor(this, playerInputId)
    this
end


function process(this::SingleAnalogControllerVisitor, allbinaryLayerManager, analogLocationInputProcessor)
        local analogLocationInput = AllBinary.getInstanceForPlayer(AllBinary.getInstance(AnalogLocationInputFactory), this.playerInputId)
        AllBinary.process(analogLocationInputProcessor, allbinaryLayerManager, analogLocationInput)
        nothing
end

