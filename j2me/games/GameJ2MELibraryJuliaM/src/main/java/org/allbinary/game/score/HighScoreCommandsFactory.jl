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
# package org.allbinary.game.score

# extends HighScoreCommandsBaseFactory: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HighScoreCommandsFactory <: JObject
    HighScoreCommandsFactory() = new()
end

const HighScoreCommandsFactory_instanceValue = Ref{Any}(nothing)
const HighScoreCommandsFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{HighScoreCommandsFactory})
    if !HighScoreCommandsFactory_instanceSet[]
        HighScoreCommandsFactory_instanceSet[] = true
        HighScoreCommandsFactory_instanceValue[] = newHighScoreCommandsFactory()
    end
    HighScoreCommandsFactory_instanceValue[]
end
function staticSet_instance(::Type{HighScoreCommandsFactory}, value)
    HighScoreCommandsFactory_instanceSet[] = true
    HighScoreCommandsFactory_instanceValue[] = value
end

function initFieldsHighScoreCommandsFactory(this::HighScoreCommandsFactory)
    nothing
end


function getInstance(::Type{HighScoreCommandsFactory})
        return staticGet_instance(HighScoreCommandsFactory)
end


function initHighScoreCommandsFactory(this::HighScoreCommandsFactory)
        initHighScoreCommandsBaseFactory(this, Any[AllBinary.getInstance(HighScoreCommands).PERSONAL, AllBinary.getInstance(HighScoreCommands).WORLD])
        nothing
end

function newHighScoreCommandsFactory()
    this = HighScoreCommandsFactory()
    initHighScoreCommandsFactory(this)
    this
end

