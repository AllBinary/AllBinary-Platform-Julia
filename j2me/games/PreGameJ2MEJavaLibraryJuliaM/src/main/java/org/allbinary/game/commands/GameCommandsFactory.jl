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
# package org.allbinary.game.commands

mutable struct GameCommandsFactory <: JObject
    TOGGLE_FULLSCREEN::Any
    TOGGLE_KEYBOARD::Any
    SET_MENU_DISPLAYABLE::Any
    APPLICATION_UPDATE::Any
    DISPLAY_ABOUT::Any
    OPEN_WEB_URL::Any
    CLOSE_OPTIONS::Any
    DISPLAY_OPTIONS::Any
    START_TRACE::Any
    STOP_TRACE::Any
    DEFAULT_OPTIONS::Any
    SHOW_GAME_CANVAS::Any
    CLOSE_AND_SHOW_GAME_CANVAS::Any
    QUIT_COMMAND::Any
    RESTART_COMMAND::Any
    DISPLAY_SAVE_FORM::Any
    SAVE::Any
    DISPLAY_LOAD_FORM::Any
    LOAD_FILE::Any
    DELETE_FILE::Any
    EXIT_COMMAND::Any
    EXIT_WITHOUT_PROGRESS_COMMAND::Any
    START_COMMAND::Any
    CONTINUE_COMMAND::Any
    SELECT_COMMAND::Any
    FEATURE_UPDATE::Any
    BUY_COMMAND::Any
    GameCommandsFactory() = new()
end

const GameCommandsFactory_instanceValue = Ref{Any}(nothing)
const GameCommandsFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{GameCommandsFactory})
    if !GameCommandsFactory_instanceSet[]
        GameCommandsFactory_instanceSet[] = true
        GameCommandsFactory_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    GameCommandsFactory_instanceValue[]
end
function staticSet_instance(::Type{GameCommandsFactory}, value)
    GameCommandsFactory_instanceSet[] = true
    GameCommandsFactory_instanceValue[] = value
end

function initFieldsGameCommandsFactory(this::GameCommandsFactory)
    this.TOGGLE_FULLSCREEN = nothing
    this.TOGGLE_KEYBOARD = nothing
    this.SET_MENU_DISPLAYABLE = nothing
    this.APPLICATION_UPDATE = nothing
    this.DISPLAY_ABOUT = nothing
    this.OPEN_WEB_URL = nothing
    this.CLOSE_OPTIONS = nothing
    this.DISPLAY_OPTIONS = nothing
    this.START_TRACE = nothing
    this.STOP_TRACE = nothing
    this.DEFAULT_OPTIONS = nothing
    this.SHOW_GAME_CANVAS = nothing
    this.CLOSE_AND_SHOW_GAME_CANVAS = nothing
    this.QUIT_COMMAND = nothing
    this.RESTART_COMMAND = nothing
    this.DISPLAY_SAVE_FORM = nothing
    this.SAVE = nothing
    this.DISPLAY_LOAD_FORM = nothing
    this.LOAD_FILE = nothing
    this.DELETE_FILE = nothing
    this.EXIT_COMMAND = nothing
    this.EXIT_WITHOUT_PROGRESS_COMMAND = nothing
    this.START_COMMAND = nothing
    this.CONTINUE_COMMAND = nothing
    this.SELECT_COMMAND = nothing
    this.FEATURE_UPDATE = nothing
    this.BUY_COMMAND = nothing
    this.TOGGLE_FULLSCREEN = newCommand("Toggle FullScreen", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    this.TOGGLE_KEYBOARD = newCommand("Keyboard", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    this.SET_MENU_DISPLAYABLE = newCommand("Set Menu Displayable", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    this.APPLICATION_UPDATE = newCommand(AllBinary.getInstance(CommonStrings).UPDATE, AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    this.DISPLAY_ABOUT = newCommand(AllBinary.getInstance(CanvasStrings).ABOUT, AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(2))
    this.OPEN_WEB_URL = newCommand("Open Web URL", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(2))
    this.CLOSE_OPTIONS = newCommand("Back", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    this.DISPLAY_OPTIONS = newCommand(AllBinary.getInstance(CanvasStrings).OPTIONS, AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(2))
    this.START_TRACE = newCommand("Start Trace", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    this.STOP_TRACE = newCommand("Stop Trace", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    this.DEFAULT_OPTIONS = newCommand("Default", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    this.SHOW_GAME_CANVAS = newCommand("Back to Game", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    this.CLOSE_AND_SHOW_GAME_CANVAS = newCommand("Back", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    this.QUIT_COMMAND = newCommand("Quit", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_STOP(Command), Int32(1))
    this.RESTART_COMMAND = newCommand("Restart", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(0))
    this.DISPLAY_SAVE_FORM = newCommand("Save To", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(3))
    this.SAVE = newCommand("Save", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(3))
    this.DISPLAY_LOAD_FORM = newCommand("Load", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(3))
    this.LOAD_FILE = newCommand("Load File", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(3))
    this.DELETE_FILE = newCommand("Delete File", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    this.EXIT_COMMAND = newCommand("Exit", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_EXIT(Command), Int32(2))
    this.EXIT_WITHOUT_PROGRESS_COMMAND = newCommand("Exit Without Progress", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_EXIT(Command), Int32(2))
    this.START_COMMAND = newCommand(AllBinary.getInstance(CommonStrings).START, AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    this.CONTINUE_COMMAND = newCommand("Continue", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    this.SELECT_COMMAND = newCommand("Select", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    this.FEATURE_UPDATE = newCommand("Feature Update", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    this.BUY_COMMAND = newCommand("BUY", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    nothing
end


function getInstance(::Type{GameCommandsFactory})
        if staticGet_instance(GameCommandsFactory) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(GameCommandsFactory, newGameCommandsFactory())
        end
        return (staticGet_instance(GameCommandsFactory))
end


function initGameCommandsFactory(this::GameCommandsFactory)
        initFieldsGameCommandsFactory(this)
        nothing
        nothing
end

function newGameCommandsFactory()
    this = GameCommandsFactory()
    initGameCommandsFactory(this)
    this
end

