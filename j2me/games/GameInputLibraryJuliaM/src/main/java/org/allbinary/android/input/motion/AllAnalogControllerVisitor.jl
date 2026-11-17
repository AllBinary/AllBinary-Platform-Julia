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
mutable struct AllAnalogControllerVisitor <: JObject
    AllAnalogControllerVisitor() = new()
end


function initFieldsAllAnalogControllerVisitor(this::AllAnalogControllerVisitor)
    nothing
end

function initAllAnalogControllerVisitor(this::AllAnalogControllerVisitor)
    initAnalogControllerVisitor(this)
    initFieldsAllAnalogControllerVisitor(this)
end

function newAllAnalogControllerVisitor()
    this = AllAnalogControllerVisitor()
    initAllAnalogControllerVisitor(this)
    this
end


function process(this::AllAnalogControllerVisitor, allbinaryLayerManager, analogLocationInputProcessor)
        local analogLocationInputList = AllBinary.getList(AllBinary.getInstance(AnalogLocationInputFactory))
        local analogLocationInput = nothing
        let
            local index::Int32 = AllBinary.size(analogLocationInputList) - Int32(1)
            while index >= Int32(0)
            try
            analogLocationInput = (AllBinary.get(analogLocationInputList, index))
            AllBinary.process(analogLocationInputProcessor, allbinaryLayerManager, analogLocationInput)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end

