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
# package org.allbinary.content

mutable struct CommandUriAction <: JObject
    logUtil::Any
    CommandUriAction() = new()
end

const CommandUriAction_instanceValue = Ref{Any}(nothing)
const CommandUriAction_instanceSet = Ref(false)
function staticGet_instance(::Type{CommandUriAction})
    if !CommandUriAction_instanceSet[]
        CommandUriAction_instanceSet[] = true
        CommandUriAction_instanceValue[] = newCommandUriAction()
    end
    CommandUriAction_instanceValue[]
end
function staticSet_instance(::Type{CommandUriAction}, value)
    CommandUriAction_instanceSet[] = true
    CommandUriAction_instanceValue[] = value
end

function initFieldsCommandUriAction(this::CommandUriAction)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end

function initCommandUriAction(this::CommandUriAction)
    initFieldsCommandUriAction(this)
end

function newCommandUriAction()
    this = CommandUriAction()
    initCommandUriAction(this)
    this
end


function getInstance(::Type{CommandUriAction})
        return staticGet_instance(CommandUriAction)
end


function add(this::CommandUriAction, command, url)
        nothing
        nothing
end


function process(this::CommandUriAction, command)
        nothing
        nothing
end

