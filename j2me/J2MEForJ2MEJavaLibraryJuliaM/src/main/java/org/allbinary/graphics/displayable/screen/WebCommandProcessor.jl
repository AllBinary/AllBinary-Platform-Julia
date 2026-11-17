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

mutable struct WebCommandProcessor <: JObject
    logUtil::Any
    aboutCommandProcessor::Any
    list::Any
    WebCommandProcessor() = new()
end

const WebCommandProcessor_instanceValue = Ref{Any}(nothing)
const WebCommandProcessor_instanceSet = Ref(false)
function staticGet_instance(::Type{WebCommandProcessor})
    if !WebCommandProcessor_instanceSet[]
        WebCommandProcessor_instanceSet[] = true
        WebCommandProcessor_instanceValue[] = newWebCommandProcessor()
    end
    WebCommandProcessor_instanceValue[]
end
function staticSet_instance(::Type{WebCommandProcessor}, value)
    WebCommandProcessor_instanceSet[] = true
    WebCommandProcessor_instanceValue[] = value
end

function initFieldsWebCommandProcessor(this::WebCommandProcessor)
    this.logUtil = nothing
    this.aboutCommandProcessor = nothing
    this.list = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.aboutCommandProcessor = AllBinary.getInstance(AboutCommandProcessor)
    this.list = newBasicArrayListD()
    nothing
end

function initWebCommandProcessor(this::WebCommandProcessor)
    initFieldsWebCommandProcessor(this)
end

function newWebCommandProcessor()
    this = WebCommandProcessor()
    initWebCommandProcessor(this)
    this
end


function getInstance(::Type{WebCommandProcessor})
        return staticGet_instance(WebCommandProcessor)
end


function process(this::WebCommandProcessor, midletCommandListener, command, canvas)
        try
            AllBinary.removeAt(this.list, Int32(0))
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.PROCESS, e)
        end
        nothing
end

