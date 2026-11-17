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
# package org.allbinary.canvas

mutable struct CustomGameMenuUtil <: JObject
    CustomGameMenuUtil() = new()
end


function initFieldsCustomGameMenuUtil(this::CustomGameMenuUtil)
    nothing
end

function initCustomGameMenuUtil(this::CustomGameMenuUtil)
    initFieldsCustomGameMenuUtil(this)
end

function newCustomGameMenuUtil()
    this = CustomGameMenuUtil()
    initCustomGameMenuUtil(this)
    this
end


function add(::Type{CustomGameMenuUtil}, canvas)
        local gameCommandsFactory = AllBinary.getInstance(GameCommandsFactory)
        if AllBinary.isAppletLoader(AppletUtil, canvas)
            nothing
        elseif AllBinary.isHTML(J2MEUtil)
            nothing
        else
            AllBinary.addCommand(canvas, gameCommandsFactory.EXIT_COMMAND)
        end
        nothing
end

