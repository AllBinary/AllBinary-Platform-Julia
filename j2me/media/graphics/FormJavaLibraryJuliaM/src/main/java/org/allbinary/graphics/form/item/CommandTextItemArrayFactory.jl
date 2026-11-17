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

mutable struct CommandTextItemArrayFactory <: JObject
    list::Any
    visitorInterface::Any
    CommandTextItemArrayFactory() = new()
end


function initFieldsCommandTextItemArrayFactory(this::CommandTextItemArrayFactory)
    this.list = nothing
    this.visitorInterface = nothing
    this.list = newBasicArrayListD()
    
    nothing
end


function initCommandTextItemArrayFactory(this::CommandTextItemArrayFactory, visitorInterface)
        initFieldsCommandTextItemArrayFactory(this)
        this.visitorInterface = visitorInterface
        nothing
end

function newCommandTextItemArrayFactory(visitorInterface)
    this = CommandTextItemArrayFactory()
    initCommandTextItemArrayFactory(this, visitorInterface)
    this
end


function getInstance(this::CommandTextItemArrayFactory, vector, backgroundBasicColor, foregroundBasicColor)
        local vectorUtil = AllBinary.getInstance(VectorUtil)
        local size::Int32 = AllBinary.getSize(vectorUtil, vector)
        AllBinary.clear(this.list)
        local textItem = nothing
        local priorityLimit::Int32 = Int32(7)
        local displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
        local isLargeEnoughDisplayForBigMenu::Bool = (AllBinary.isPortrait(displayInfo) && AllBinary.getLastHeight(displayInfo) >= AllBinary.getInstance(ScreenInfo).MEDIUM_WIDTH) || (!AllBinary.isPortrait(displayInfo) && AllBinary.getLastWidth(displayInfo) >= AllBinary.getInstance(ScreenInfo).MEDIUM_WIDTH)
        if !isLargeEnoughDisplayForBigMenu && size > Int32(3)
            priorityLimit = Int32(3)
        end
        local command = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            command = (AllBinary.elementAt(vectorUtil, vector, index))
            if AllBinary.getPriority(command) < priorityLimit
                local aBoolean = (AllBinary.visit(this.visitorInterface, command))
                if AllBinary.booleanValue(aBoolean)
                    textItem = newCommandTextItem(command, staticGet_LAYOUT_DEFAULT(ImageItem), AllBinary.getInstance(StringUtil).EMPTY_STRING, backgroundBasicColor, foregroundBasicColor)
                    AllBinary.add(this.list, textItem)
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        local textItemArray = jNewArray(Any, AllBinary.size(this.list), nothing)
        local size2::Int32 = Int32(Base.length(textItemArray))
        let
            index = Int32(0)
            while index < size2
            try
            textItemArray[index + 1] = (this.list.objectArray[index + 1])
            finally
                index += Int32(1)
            end
            end
        end
        return textItemArray
end

