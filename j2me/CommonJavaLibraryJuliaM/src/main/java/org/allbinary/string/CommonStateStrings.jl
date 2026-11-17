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
# package org.allbinary.string

mutable struct CommonStateStrings <: JObject
    CONTEXT::Any
    FINISH::Any
    CREATE::Any
    START::Any
    RESTART::Any
    RESUME::Any
    PAUSE::Any
    STOP::Any
    DESTROY::Any
    BIND::Any
    ON_SAVE_INSTANCE_STATE::Any
    ON_START_COMMAND::Any
    CommonStateStrings() = new()
end

const CommonStateStrings_instanceValue = Ref{Any}(nothing)
const CommonStateStrings_instanceSet = Ref(false)
function staticGet_instance(::Type{CommonStateStrings})
    if !CommonStateStrings_instanceSet[]
        CommonStateStrings_instanceSet[] = true
        CommonStateStrings_instanceValue[] = newCommonStateStrings()
    end
    CommonStateStrings_instanceValue[]
end
function staticSet_instance(::Type{CommonStateStrings}, value)
    CommonStateStrings_instanceSet[] = true
    CommonStateStrings_instanceValue[] = value
end

function initFieldsCommonStateStrings(this::CommonStateStrings)
    this.CONTEXT = nothing
    this.FINISH = nothing
    this.CREATE = nothing
    this.START = nothing
    this.RESTART = nothing
    this.RESUME = nothing
    this.PAUSE = nothing
    this.STOP = nothing
    this.DESTROY = nothing
    this.BIND = nothing
    this.ON_SAVE_INSTANCE_STATE = nothing
    this.ON_START_COMMAND = nothing
    this.CONTEXT = "Context: "
    this.FINISH = "finish"
    this.CREATE = "onCreate"
    this.START = "onStart"
    this.RESTART = "onRestart"
    this.RESUME = "onResume"
    this.PAUSE = "onPause"
    this.STOP = "onStop"
    this.DESTROY = "onDestroy"
    this.BIND = "onBind"
    this.ON_SAVE_INSTANCE_STATE = "onSaveInstanceState"
    this.ON_START_COMMAND = "onStartCommand"
    nothing
end

function initCommonStateStrings(this::CommonStateStrings)
    initFieldsCommonStateStrings(this)
end

function newCommonStateStrings()
    this = CommonStateStrings()
    initCommonStateStrings(this)
    this
end


function getInstance(::Type{CommonStateStrings})
        return staticGet_instance(CommonStateStrings)
end

