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
# package org.allbinary.graphics.form.item

# extends ABTextItem: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CommandTextItem <: JObject
    command::Any
    CommandTextItem() = new()
end


function initFieldsCommandTextItem(this::CommandTextItem)
    this.command = nothing
    
    nothing
end


function initCommandTextItem(this::CommandTextItem, command, layout, altText, backgroundBasicColor, foregroundBasicColor)
        initABTextItem(this, AllBinary.getLabel(command), layout, altText, backgroundBasicColor, foregroundBasicColor)
        initFieldsCommandTextItem(this)
        this.command = command
        nothing
end

function newCommandTextItem(command, layout, altText, backgroundBasicColor, foregroundBasicColor)
    this = CommandTextItem()
    initCommandTextItem(this, command, layout, altText, backgroundBasicColor, foregroundBasicColor)
    this
end


function isFocusable(this::CommandTextItem)
        return true
end


function getCommand(this::CommandTextItem)
        return this.command
end

