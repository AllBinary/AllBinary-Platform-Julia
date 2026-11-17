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
# package org.allbinary.game.configuration

mutable struct InGameOptionsFormFactory <: JObject
    logUtil::Any
    SINGLETON::Any
    InGameOptionsFormFactory() = new()
end

const InGameOptionsFormFactory_instanceValue = Ref{Any}(nothing)
const InGameOptionsFormFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{InGameOptionsFormFactory})
    if !InGameOptionsFormFactory_instanceSet[]
        InGameOptionsFormFactory_instanceSet[] = true
        InGameOptionsFormFactory_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    InGameOptionsFormFactory_instanceValue[]
end
function staticSet_instance(::Type{InGameOptionsFormFactory}, value)
    InGameOptionsFormFactory_instanceSet[] = true
    InGameOptionsFormFactory_instanceValue[] = value
end

function initFieldsInGameOptionsFormFactory(this::InGameOptionsFormFactory)
    this.logUtil = nothing
    this.SINGLETON = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.SINGLETON = AllBinary.getNullCommandForm(CommandForm)
    nothing
end

function initInGameOptionsFormFactory(this::InGameOptionsFormFactory)
    initFieldsInGameOptionsFormFactory(this)
end

function newInGameOptionsFormFactory()
    this = InGameOptionsFormFactory()
    initInGameOptionsFormFactory(this)
    this
end


function getInstance(::Type{InGameOptionsFormFactory})
        if staticGet_instance(InGameOptionsFormFactory) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(InGameOptionsFormFactory, newInGameOptionsFormFactory())
        end
        return (staticGet_instance(InGameOptionsFormFactory))
end


function init(this::InGameOptionsFormFactory, commandListener, initInterface, title, backgrounBasicColor, foregroundBasicColor)
        try
            if this.SINGLETON === AllBinary.getNullCommandForm(CommandForm)
                AllBinary.init(initInterface)
                this.SINGLETON = newInGameOptionsForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
            end
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.INIT, e)
        end
        nothing
end


function get(this::InGameOptionsFormFactory)
        return this.SINGLETON
end

