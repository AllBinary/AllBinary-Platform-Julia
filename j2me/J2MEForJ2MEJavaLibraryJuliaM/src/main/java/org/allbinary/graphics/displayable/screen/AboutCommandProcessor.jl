#=
 
  AllBinary Open License Version 1
  Copyright (c) 2022 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
  
=#
# Generated Code Do Not Modify
# package org.allbinary.graphics.displayable.screen

mutable struct AboutCommandProcessor <: JObject
    AboutCommandProcessor() = new()
end

const AboutCommandProcessor_instanceValue = Ref{Any}(nothing)
const AboutCommandProcessor_instanceSet = Ref(false)
function staticGet_instance(::Type{AboutCommandProcessor})
    if !AboutCommandProcessor_instanceSet[]
        AboutCommandProcessor_instanceSet[] = true
        AboutCommandProcessor_instanceValue[] = newAboutCommandProcessor()
    end
    AboutCommandProcessor_instanceValue[]
end
function staticSet_instance(::Type{AboutCommandProcessor}, value)
    AboutCommandProcessor_instanceSet[] = true
    AboutCommandProcessor_instanceValue[] = value
end

function initFieldsAboutCommandProcessor(this::AboutCommandProcessor)
    nothing
end

function initAboutCommandProcessor(this::AboutCommandProcessor)
    initFieldsAboutCommandProcessor(this)
end

function newAboutCommandProcessor()
    this = AboutCommandProcessor()
    initAboutCommandProcessor(this)
    this
end


function getInstance(::Type{AboutCommandProcessor})
        return staticGet_instance(AboutCommandProcessor)
end


function process(this::AboutCommandProcessor, midletCommandListener, command, canvas)
        AllBinary.commandAction(midletCommandListener, command, canvas)
        nothing
end

