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
# package org.allbinary.game.input

mutable struct GameInputProcessorUtil <: JObject
    GameInputProcessorUtil() = new()
end


function initFieldsGameInputProcessorUtil(this::GameInputProcessorUtil)
    nothing
end

function initGameInputProcessorUtil(this::GameInputProcessorUtil)
    initFieldsGameInputProcessorUtil(this)
end

function newGameInputProcessorUtil()
    this = GameInputProcessorUtil()
    initGameInputProcessorUtil(this)
    this
end


function init(::Type{GameInputProcessorUtil}, inputProcessorArray)
        local noInputProcessor = AllBinary.getInstance(GameInputProcessor)
        local total::Int32 = AllBinary.getInstance(InputFactory).MAX
        let
            local index::Int32 = Int32(0)
            while index < total
            try
            local inputProcessorCanBeNull = inputProcessorArray[index + 1]
            if inputProcessorCanBeNull === nothing
                inputProcessorArray[index + 1] = noInputProcessor
            end
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

