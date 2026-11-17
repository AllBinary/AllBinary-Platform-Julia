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

mutable struct CommonStrings <: JObject
    EMPTY::Any
    CREATE_IMAGE::Any
    PLEASE_WAIT::Any
    PLEASE_WAIT_FOR_SERVER::Any
    PERIODS::Any
    LOADING::Any
    CONSTRUCTOR::Any
    START::Any
    END::Any
    EXCEPTION::Any
    EXCEPTION_LABEL::Any
    CLEANUP::Any
    INIT::Any
    CLOSE::Any
    UP::Any
    DOWN::Any
    LEFT::Any
    RIGHT::Any
    DIRECTION_NAME::Any
    CREATE::Any
    REMOVE::Any
    UPDATE::Any
    DELETE::Any
    delete::Any
    LOAD::Any
    SAVE::Any
    ADD::Any
    DROP::Any
    INSERT::Any
    VISIT::Any
    START_METHOD_NAME::Any
    END_METHOD_NAME::Any
    GET::Any
    PROCESS::Any
    GET_INSTANCE::Any
    GET_LIST::Any
    RUN::Any
    START_RUNNABLE::Any
    RUNNING::Any
    END_RUNNABLE::Any
    DISABLE::Any
    ENABLE::Any
    SUCCESS::Any
    FAILURE::Any
    NOT_IMPLEMENTED::Any
    UNKNOWN::Any
    ON_EVENT::Any
    IS_VALID::Any
    TOSTRING::Any
    ADD_LISTENER::Any
    REMOVE_LISTENER::Any
    SIZE::Any
    CommonStrings() = new()
end

const CommonStrings_instanceValue = Ref{Any}(nothing)
const CommonStrings_instanceSet = Ref(false)
function staticGet_instance(::Type{CommonStrings})
    if !CommonStrings_instanceSet[]
        CommonStrings_instanceSet[] = true
        CommonStrings_instanceValue[] = newCommonStrings()
    end
    CommonStrings_instanceValue[]
end
function staticSet_instance(::Type{CommonStrings}, value)
    CommonStrings_instanceSet[] = true
    CommonStrings_instanceValue[] = value
end

function initFieldsCommonStrings(this::CommonStrings)
    this.EMPTY = nothing
    this.CREATE_IMAGE = nothing
    this.PLEASE_WAIT = nothing
    this.PLEASE_WAIT_FOR_SERVER = nothing
    this.PERIODS = nothing
    this.LOADING = nothing
    this.CONSTRUCTOR = nothing
    this.START = nothing
    this.END = nothing
    this.EXCEPTION = nothing
    this.EXCEPTION_LABEL = nothing
    this.CLEANUP = nothing
    this.INIT = nothing
    this.CLOSE = nothing
    this.UP = nothing
    this.DOWN = nothing
    this.LEFT = nothing
    this.RIGHT = nothing
    this.DIRECTION_NAME = nothing
    this.CREATE = nothing
    this.REMOVE = nothing
    this.UPDATE = nothing
    this.DELETE = nothing
    this.delete = nothing
    this.LOAD = nothing
    this.SAVE = nothing
    this.ADD = nothing
    this.DROP = nothing
    this.INSERT = nothing
    this.VISIT = nothing
    this.START_METHOD_NAME = nothing
    this.END_METHOD_NAME = nothing
    this.GET = nothing
    this.PROCESS = nothing
    this.GET_INSTANCE = nothing
    this.GET_LIST = nothing
    this.RUN = nothing
    this.START_RUNNABLE = nothing
    this.RUNNING = nothing
    this.END_RUNNABLE = nothing
    this.DISABLE = nothing
    this.ENABLE = nothing
    this.SUCCESS = nothing
    this.FAILURE = nothing
    this.NOT_IMPLEMENTED = nothing
    this.UNKNOWN = nothing
    this.ON_EVENT = nothing
    this.IS_VALID = nothing
    this.TOSTRING = nothing
    this.ADD_LISTENER = nothing
    this.REMOVE_LISTENER = nothing
    this.SIZE = nothing
    this.EMPTY = "Empty"
    this.CREATE_IMAGE = "createImage"
    this.PLEASE_WAIT = "Please Wait"
    this.PLEASE_WAIT_FOR_SERVER = "Please Wait Getting Data From Server..."
    this.PERIODS = "..."
    this.LOADING = "Loading..."
    this.CONSTRUCTOR = "Constructor"
    this.START = "Start"
    this.END = "End"
    this.EXCEPTION = "Exception"
    this.EXCEPTION_LABEL = "Exception: "
    this.CLEANUP = "cleanup"
    this.INIT = "init"
    this.CLOSE = "close"
    this.UP = "up"
    this.DOWN = "down"
    this.LEFT = "left"
    this.RIGHT = "right"
    this.DIRECTION_NAME = Any[this.DOWN, this.LEFT, this.RIGHT, this.UP]
    this.CREATE = "Create"
    this.REMOVE = "Remove"
    this.UPDATE = "Update"
    this.DELETE = "Delete"
    this.delete = "delete"
    this.LOAD = "load"
    this.SAVE = "save"
    this.ADD = "Add"
    this.DROP = "Drop"
    this.INSERT = "Insert"
    this.VISIT = "visit"
    this.START_METHOD_NAME = this.START
    this.END_METHOD_NAME = "end"
    this.GET = "get"
    this.PROCESS = "process"
    this.GET_INSTANCE = "getInstance"
    this.GET_LIST = "getList"
    this.RUN = "run"
    this.START_RUNNABLE = "Start Runnable"
    this.RUNNING = "Running"
    this.END_RUNNABLE = "End Runnable"
    this.DISABLE = "disable"
    this.ENABLE = "enable"
    this.SUCCESS = "Command Success"
    this.FAILURE = "Command Failed"
    this.NOT_IMPLEMENTED = "Not Implemented"
    this.UNKNOWN = "Unknown"
    this.ON_EVENT = "onEvent"
    this.IS_VALID = "isValid"
    this.TOSTRING = "toString"
    this.ADD_LISTENER = "addListener"
    this.REMOVE_LISTENER = "removeListener"
    this.SIZE = "size"
    nothing
end

function initCommonStrings(this::CommonStrings)
    initFieldsCommonStrings(this)
end

function newCommonStrings()
    this = CommonStrings()
    initCommonStrings(this)
    this
end


function getInstance(::Type{CommonStrings})
        return staticGet_instance(CommonStrings)
end

