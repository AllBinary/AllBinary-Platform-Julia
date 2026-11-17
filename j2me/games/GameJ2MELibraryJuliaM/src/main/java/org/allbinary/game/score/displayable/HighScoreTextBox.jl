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
# package org.allbinary.game.score.displayable

# extends CustomTextBox: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HighScoreTextBox <: JObject
    virtualKeyboardEventHandler::Any
    highScoreUtil::Any
    pleaseWait::Any
    paintable::Any
    submitted::Bool
    HighScoreTextBox() = new()
end


function initFieldsHighScoreTextBox(this::HighScoreTextBox)
    this.virtualKeyboardEventHandler = nothing
    this.highScoreUtil = nothing
    this.pleaseWait = nothing
    this.paintable = nothing
    this.submitted = false
    this.virtualKeyboardEventHandler = AllBinary.getInstance(VirtualKeyboardEventHandler)
    
    this.pleaseWait = newSimpleTextPaintable(this.commonStrings.PLEASE_WAIT, AllBinary.getInstance(BasicColorFactory).WHITE)
    this.paintable = AllBinary.getInstance(NullPaintable)
    this.submitted = false
    nothing
end


function initHighScoreTextBox(this::HighScoreTextBox, highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore, backgrounBasicColor, foregroundBasicColor)
        initCustomTextBox(this, cmdListener, "New High Score Enter Name:", name, Int32(12), staticGet_ANY(TextField), AllBinary.getDefaultFont(Font), backgrounBasicColor, foregroundBasicColor)
        initFieldsHighScoreTextBox(this)
        this.highScoreUtil = newHighScoreUtil(highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore)
        local operatingSystemInterface = AllBinary.getOperatingSystemInstance(AllBinary.getInstance(OperatingSystemFactory))
        if AllBinary.isOverScan(operatingSystemInterface)
            local username = AllBinary.getUserName(AllBinary.getInstance(InApplicationPurchaseFactory))
            AllBinary.setString(AllBinary.getTextFieldItem(this), username)
        end
        nothing
end

function newHighScoreTextBox(highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore, backgrounBasicColor, foregroundBasicColor)
    this = HighScoreTextBox()
    initHighScoreTextBox(this, highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore, backgrounBasicColor, foregroundBasicColor)
    this
end


function initCommands(this::HighScoreTextBox, cmdListener)
        AllBinary.removeAllCommands(this)
        AllBinary.addCommands(AllBinary.getInstance(PostGameCommandFactory), this)
        AllBinary.addCommand(this, staticGet_SUBMIT_TEXTBOX_COMMAND(HighScoreUtil))
        AllBinary.setCommandListener(this, cmdListener)
        nothing
end


function open(this::HighScoreTextBox)
        AllBinary.open(this.virtualKeyboardEventHandler)
        this.paintable = AllBinary.getInstance(NullPaintable)
        AllBinary.open(this)
        nothing
end


function close(this::HighScoreTextBox)
        AllBinary.close(this.virtualKeyboardEventHandler)
        this.paintable = this.pleaseWait
        AllBinary.onChangeRepaint(this.repaintBehavior, this)
        AllBinary.close(this)
        AllBinary.removeCommand(this, staticGet_SUBMIT_TEXTBOX_COMMAND(HighScoreUtil))
        AllBinary.update(this)
        if this.submitted
            AllBinary.saveHighScore(this.highScoreUtil)
        else
            nothing
        end
        this.paintable = AllBinary.getInstance(NullPaintable)
        AllBinary.onChangeRepaint(this.repaintBehavior, this)
        nothing
end


function update(this::HighScoreTextBox)
        local name = AllBinary.getString(AllBinary.getTextFieldItem(this))
        AllBinary.update(this.highScoreUtil, name)
        AllBinary.update(this)
        nothing
end


function paint(this::HighScoreTextBox, graphics)
        AllBinary.paint(this, graphics)
        AllBinary.paint(this.paintable, graphics)
        nothing
end


function saveHighScore(this::HighScoreTextBox)
        AllBinary.saveHighScore(this.highScoreUtil)
        nothing
end


function submit(this::HighScoreTextBox)
        AllBinary.submit(this.highScoreUtil, this)
        nothing
end

