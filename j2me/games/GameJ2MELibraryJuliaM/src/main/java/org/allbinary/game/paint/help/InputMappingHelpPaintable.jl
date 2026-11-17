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
# package org.allbinary.game.paint.help

# extends HelpPaintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct InputMappingHelpPaintable <: JObject
    logUtil::Any
    commonStrings::Any
    commonSeps::Any
    stringUtil::Any
    basicColorFactory::Any
    NONE::Any
    EMPTY_STRING::Any
    gameInputMappingArray::Any
    keyMappingArray::Any
    actionBasicColor::Any
    inputBasicColorArray::Any
    selectedBasicColor::Any
    updateMyFontProperties::Any
    InputMappingHelpPaintable() = new()
end

const InputMappingHelpPaintable_ANDValue = Ref{Any}(nothing)
const InputMappingHelpPaintable_ANDSet = Ref(false)
function staticGet_AND(::Type{InputMappingHelpPaintable})
    if !InputMappingHelpPaintable_ANDSet[]
        InputMappingHelpPaintable_ANDSet[] = true
        InputMappingHelpPaintable_ANDValue[] = " and "
    end
    InputMappingHelpPaintable_ANDValue[]
end
function staticSet_AND(::Type{InputMappingHelpPaintable}, value)
    InputMappingHelpPaintable_ANDSet[] = true
    InputMappingHelpPaintable_ANDValue[] = value
end
const InputMappingHelpPaintable_SEPValue = Ref{Any}(nothing)
const InputMappingHelpPaintable_SEPSet = Ref(false)
function staticGet_SEP(::Type{InputMappingHelpPaintable})
    if !InputMappingHelpPaintable_SEPSet[]
        InputMappingHelpPaintable_SEPSet[] = true
        InputMappingHelpPaintable_SEPValue[] = ", "
    end
    InputMappingHelpPaintable_SEPValue[]
end
function staticSet_SEP(::Type{InputMappingHelpPaintable}, value)
    InputMappingHelpPaintable_SEPSet[] = true
    InputMappingHelpPaintable_SEPValue[] = value
end
const InputMappingHelpPaintable_MORE_THAN_TWO_IN_LIST_ANDValue = Ref{Any}(nothing)
const InputMappingHelpPaintable_MORE_THAN_TWO_IN_LIST_ANDSet = Ref(false)
function staticGet_MORE_THAN_TWO_IN_LIST_AND(::Type{InputMappingHelpPaintable})
    if !InputMappingHelpPaintable_MORE_THAN_TWO_IN_LIST_ANDSet[]
        InputMappingHelpPaintable_MORE_THAN_TWO_IN_LIST_ANDSet[] = true
        InputMappingHelpPaintable_MORE_THAN_TWO_IN_LIST_ANDValue[] = ", and "
    end
    InputMappingHelpPaintable_MORE_THAN_TWO_IN_LIST_ANDValue[]
end
function staticSet_MORE_THAN_TWO_IN_LIST_AND(::Type{InputMappingHelpPaintable}, value)
    InputMappingHelpPaintable_MORE_THAN_TWO_IN_LIST_ANDSet[] = true
    InputMappingHelpPaintable_MORE_THAN_TWO_IN_LIST_ANDValue[] = value
end

function initFieldsInputMappingHelpPaintable(this::InputMappingHelpPaintable)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.commonSeps = nothing
    this.stringUtil = nothing
    this.basicColorFactory = nothing
    this.NONE = nothing
    this.EMPTY_STRING = nothing
    this.gameInputMappingArray = nothing
    this.keyMappingArray = nothing
    this.actionBasicColor = nothing
    this.inputBasicColorArray = nothing
    this.selectedBasicColor = nothing
    this.updateMyFontProperties = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.commonSeps = AllBinary.getInstance(CommonSeps)
    this.stringUtil = AllBinary.getInstance(StringUtil)
    this.basicColorFactory = AllBinary.getInstance(BasicColorFactory)
    this.NONE = AllBinary.getInstance(GameKeyFactory).NONE
    this.EMPTY_STRING = AllBinary.getInstance(StringUtil).EMPTY_STRING
    
    this.keyMappingArray = jNewArray(Any, Int32(0), nothing)
    this.actionBasicColor = AllBinary.getInstance(BasicColorUtil).ZERO_ARRAY
    this.inputBasicColorArray = jNewArrayOf(Vector{Any}, Int32(0), () -> jNewArray(Any, Int32(0), nothing))
    this.selectedBasicColor = nothing
    this.updateMyFontProperties = newUpdateMyFontProperties()
    nothing
end


function initInputMappingHelpPaintable(this::InputMappingHelpPaintable, gameInputMappingArray, backgroundBasicColor, basicColor)
        initHelpPaintable(this, "Input Mapping", backgroundBasicColor, basicColor)
        initFieldsInputMappingHelpPaintable(this)
        this.gameInputMappingArray = gameInputMappingArray
        AllBinary.update(this, this.NONE, this.NONE)
        if backgroundBasicColor === this.basicColorFactory.WHITE || basicColor === this.basicColorFactory.WHITE
            this.selectedBasicColor = this.basicColorFactory.RED
        else
            this.selectedBasicColor = this.basicColorFactory.WHITE
        end
        nothing
end

function newInputMappingHelpPaintable(gameInputMappingArray, backgroundBasicColor, basicColor)
    this = InputMappingHelpPaintable()
    initInputMappingHelpPaintable(this, gameInputMappingArray, backgroundBasicColor, basicColor)
    this
end


function updateMeasurement(this::InputMappingHelpPaintable, graphics)
        local font = AllBinary.getFont(graphics)
        local updateMyFontProperties = newUpdateMyFontProperties()
        updateMyFontProperties.charHeight = AllBinary.getHeight(font)
        local stringMaker = newStringMaker()
        local inputInfo = this.inputInfo
        local size::Int32 = Int32(Base.length(inputInfo))
        updateMyFontProperties.actionStringArray = jNewArray(Any, size, nothing)
        updateMyFontProperties.keymappingBeginWidthArray = jNewArray(Int32, size, Int32(0))
        updateMyFontProperties.actionStringDeltaXArray = jNewArray(Int32, size, Int32(0))
        updateMyFontProperties.inputDeltaXArray = jNewArrayOf(Vector{Int32}, size, () -> jNewArray(Int32, Int32(0), Int32(0)))
        updateMyFontProperties.sepArray = jNewArrayOf(Vector{Any}, size, () -> jNewArray(Any, Int32(0), nothing))
        updateMyFontProperties.sepWidthArray = jNewArrayOf(Vector{Int32}, size, () -> jNewArray(Int32, Int32(0), Int32(0)))
        local list = nothing
        local keyMappings = nothing
        local actionString = nothing
        local input = nothing
        local size2::Int32 = Int32(0)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            list = this.keyMappingArray[index + 1]
            keyMappings = AllBinary.get(this, list)
            AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
            actionString = AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(stringMaker, inputInfo[index + 1]), this.commonSeps.COLON), this.commonSeps.SPACE), this.commonSeps.SPACE))
            updateMyFontProperties.actionStringArray[index + 1] = actionString
            AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
            updateMyFontProperties.keymappingBeginWidthArray[index + 1] = (AllBinary.stringWidth(font, AllBinary.toString(AllBinary.append(AllBinary.append(stringMaker, updateMyFontProperties.actionStringArray[index + 1]), keyMappings))) >> Int32(1))
            updateMyFontProperties.actionStringDeltaXArray[index + 1] = AllBinary.stringWidth(font, actionString)
            size2 = AllBinary.size(list)
            updateMyFontProperties.inputDeltaXArray[index + 1] = jNewArray(Int32, size2, Int32(0))
            updateMyFontProperties.sepArray[index + 1] = jNewArray(Any, size2, nothing)
            updateMyFontProperties.sepWidthArray[index + 1] = jNewArray(Int32, size2, Int32(0))
            let
                local index2::Int32 = Int32(0)
                while index2 < size2
                try
                input = (list.objectArray[index2 + 1])
                updateMyFontProperties.inputDeltaXArray[index + 1][index2 + 1] = AllBinary.stringWidth(font, AllBinary.getName(input))
                updateMyFontProperties.sepArray[index + 1][index2 + 1] = this.EMPTY_STRING
                if index2 + Int32(1) < AllBinary.size(list)
                    if AllBinary.size(list) == Int32(2)
                        updateMyFontProperties.sepArray[index + 1][index2 + 1] = staticGet_AND(InputMappingHelpPaintable)
                    else
                        if index2 + Int32(2) == AllBinary.size(list)
                            updateMyFontProperties.sepArray[index + 1][index2 + 1] = staticGet_MORE_THAN_TWO_IN_LIST_AND(InputMappingHelpPaintable)
                        else
                            updateMyFontProperties.sepArray[index + 1][index2 + 1] = staticGet_SEP(InputMappingHelpPaintable)
                        end
                    end
                end
                if updateMyFontProperties.sepArray[index + 1][index2 + 1] != this.EMPTY_STRING
                    updateMyFontProperties.sepWidthArray[index + 1][index2 + 1] = AllBinary.stringWidth(font, updateMyFontProperties.sepArray[index + 1][index2 + 1])
                end
                finally
                    index2 += Int32(1)
                end
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        this.updateMyFontProperties = updateMyFontProperties
        AllBinary.updateMeasurement(this, graphics)
        nothing
end


function update(this::InputMappingHelpPaintable, selectedGameKey, selectedInput)
        local stringMaker = newStringMaker()
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(stringMaker, AllBinary.getInstance(CommonLabels).START_LABEL), "selected GameKey: "), AllBinary.toString(this.stringUtil, selectedGameKey)), " Input: "), AllBinary.toString(this.stringUtil, selectedInput))), this, this.commonStrings.UPDATE)
        local gameKeyMapping = AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))
        local size::Int32 = Int32(Base.length(this.gameInputMappingArray))
        local keyInfo = jNewArray(Any, size, nothing)
        local keyMappingArray = jNewArray(Any, size, nothing)
        local actionBasicColor = jNewArray(Any, size, nothing)
        local inputBasicColorArray = jNewArray(Any, size, nothing)
        local gameInputMapping = nothing
        local gameKey = nothing
        local list = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            gameInputMapping = this.gameInputMappingArray[index + 1]
            gameKey = AllBinary.getGameKey(gameInputMapping)
            list = AllBinary.getMappedInput(AllBinary.getInputMapping(gameKeyMapping), gameKey)
            local size2::Int32 = AllBinary.size(list)
            inputBasicColorArray[index + 1] = jNewArray(Any, size2, nothing)
            let
                local index2::Int32 = Int32(0)
                while index2 < size2
                try
                inputBasicColorArray[index + 1][index2 + 1] = this.basicColor
                finally
                    index2 += Int32(1)
                end
                end
            end
            if gameKey === selectedGameKey
                AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(stringMaker, "Found: selected GameKey: "), AllBinary.toString(this.stringUtil, selectedGameKey))), this, this.commonStrings.UPDATE)
                actionBasicColor[index + 1] = this.selectedBasicColor
                local indexOfSelectedInput::Int32 = AllBinary.indexOf(list, selectedInput)
                if indexOfSelectedInput >= Int32(0)
                    AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                    AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(stringMaker, "Found: selected Input: "), AllBinary.toString(this.stringUtil, selectedInput))), this, this.commonStrings.UPDATE)
                    inputBasicColorArray[index + 1][indexOfSelectedInput + 1] = this.selectedBasicColor
                end
            else
                actionBasicColor[index + 1] = this.basicColor
            end
            keyInfo[index + 1] = AllBinary.getName(gameInputMapping)
            keyMappingArray[index + 1] = list
            finally
                index += Int32(1)
            end
            end
        end
        this.keyMappingArray = keyMappingArray
        this.actionBasicColor = actionBasicColor
        this.inputBasicColorArray = inputBasicColorArray
        AllBinary.setInputInfoP(this, keyInfo)
        this.myFontProcessor = this.updateMyFontProcessor
        nothing
end


function get(this::InputMappingHelpPaintable, keyList)
        local stringBuffer = newStringMaker()
        local key = nothing
        local size::Int32 = AllBinary.size(keyList)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            key = (keyList.objectArray[index + 1])
            AllBinary.append(stringBuffer, AllBinary.getName(key))
            if index + Int32(1) < AllBinary.size(keyList)
                if AllBinary.size(keyList) == Int32(2)
                    AllBinary.append(stringBuffer, staticGet_AND(InputMappingHelpPaintable))
                else
                    if index + Int32(2) == AllBinary.size(keyList)
                        AllBinary.append(stringBuffer, staticGet_MORE_THAN_TWO_IN_LIST_AND(InputMappingHelpPaintable))
                    else
                        AllBinary.append(stringBuffer, staticGet_SEP(InputMappingHelpPaintable))
                    end
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        return AllBinary.toString(stringBuffer)
end


function paint(this::InputMappingHelpPaintable, graphics)
        AllBinary.process(this.myFontProcessor, graphics)
        local halfWidth::Int32 = AllBinary.getLastHalfWidth(this.displayInfo)
        AllBinary.setColor(graphics, AllBinary.intValue(this.basicColor))
        AllBinary.drawString(graphics, this.title, halfWidth - this.titleBeginWidth, this.updateMyFontProperties.charHeight, this.anchor)
        local inputInfo = this.inputInfo
        local size::Int32 = Int32(Base.length(inputInfo))
        local y::Int32 = Int32(0)
        local deltaX::Int32 = Int32(0)
        local size2::Int32 = Int32(0)
        local actionString = nothing
        local input = nothing
        local list = nothing
        local sep = nothing
        local beginWidth::Int32 = Int32(0)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            y = (index + Int32(3)) * this.updateMyFontProperties.charHeight
            deltaX = Int32(0)
            list = this.keyMappingArray[index + 1]
            size2 = AllBinary.size(list)
            beginWidth = this.updateMyFontProperties.keymappingBeginWidthArray[index + 1]
            AllBinary.setColor(graphics, AllBinary.intValue(this.actionBasicColor[index + 1]))
            actionString = this.updateMyFontProperties.actionStringArray[index + 1]
            AllBinary.drawString(graphics, actionString, halfWidth - beginWidth + deltaX, y, this.anchor)
            deltaX += this.updateMyFontProperties.actionStringDeltaXArray[index + 1]
            let
                local index2::Int32 = Int32(0)
                while index2 < size2
                try
                input = (list.objectArray[index2 + 1])
                AllBinary.setColor(graphics, AllBinary.intValue(this.inputBasicColorArray[index + 1][index2 + 1]))
                AllBinary.drawString(graphics, AllBinary.getName(input), halfWidth - beginWidth + deltaX, y, this.anchor)
                deltaX += this.updateMyFontProperties.inputDeltaXArray[index + 1][index2 + 1]
                sep = this.updateMyFontProperties.sepArray[index + 1][index2 + 1]
                AllBinary.setColor(graphics, AllBinary.intValue(this.basicColor))
                AllBinary.drawString(graphics, sep, halfWidth - beginWidth + deltaX, y, this.anchor)
                deltaX += this.updateMyFontProperties.sepWidthArray[index + 1][index2 + 1]
                finally
                    index2 += Int32(1)
                end
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

