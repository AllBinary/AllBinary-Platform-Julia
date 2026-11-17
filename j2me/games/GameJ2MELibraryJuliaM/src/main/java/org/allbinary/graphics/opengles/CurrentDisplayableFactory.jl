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
# package org.allbinary.graphics.opengles

mutable struct CurrentDisplayableFactory <: JObject
    commonStrings::Any
    canvasStrings::Any
    stringUtil::Any
    SET_DISPLAYABLE::Any
    SET_RUNNABLE::Any
    CLEAR_RUNNABLE::Any
    SET_USED_RUNNABLE::Any
    RUNNABLE::Any
    RUNNABLE_WAS_ALREADY_IN_USE::Any
    DEFAULT_CHILD_NAME_LIST::Any
    displayable::Any
    openGlReadydisplayable::Any
    runnable::Any
    usedRunnable::Any
    CurrentDisplayableFactory() = new()
end

const CurrentDisplayableFactory_instanceValue = Ref{Any}(nothing)
const CurrentDisplayableFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{CurrentDisplayableFactory})
    if !CurrentDisplayableFactory_instanceSet[]
        CurrentDisplayableFactory_instanceSet[] = true
        CurrentDisplayableFactory_instanceValue[] = newCurrentDisplayableFactory()
    end
    CurrentDisplayableFactory_instanceValue[]
end
function staticSet_instance(::Type{CurrentDisplayableFactory}, value)
    CurrentDisplayableFactory_instanceSet[] = true
    CurrentDisplayableFactory_instanceValue[] = value
end

function initFieldsCurrentDisplayableFactory(this::CurrentDisplayableFactory)
    this.commonStrings = nothing
    this.canvasStrings = nothing
    this.stringUtil = nothing
    this.SET_DISPLAYABLE = nothing
    this.SET_RUNNABLE = nothing
    this.CLEAR_RUNNABLE = nothing
    this.SET_USED_RUNNABLE = nothing
    this.RUNNABLE = nothing
    this.RUNNABLE_WAS_ALREADY_IN_USE = nothing
    this.DEFAULT_CHILD_NAME_LIST = nothing
    this.displayable = nothing
    this.openGlReadydisplayable = nothing
    this.runnable = nothing
    this.usedRunnable = nothing
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.canvasStrings = AllBinary.getInstance(CanvasStrings)
    this.stringUtil = AllBinary.getInstance(StringUtil)
    this.SET_DISPLAYABLE = "setDisplayable"
    this.SET_RUNNABLE = "setRunnable"
    this.CLEAR_RUNNABLE = "clearRunnable"
    this.SET_USED_RUNNABLE = "setUsedRunnable"
    this.RUNNABLE = "Runnable: "
    this.RUNNABLE_WAS_ALREADY_IN_USE = "Runnable was already in use: "
    this.DEFAULT_CHILD_NAME_LIST = newBasicArrayListD()
    this.displayable = AllBinary.getInstance(NullDisplayable)
    this.openGlReadydisplayable = AllBinary.getInstance(NullDisplayable)
    this.runnable = AllBinary.getInstance(NullWaitGameRunnable)
    this.usedRunnable = AllBinary.getInstance(NullWaitGameRunnable)
    nothing
end


function getInstance(::Type{CurrentDisplayableFactory})
        return staticGet_instance(CurrentDisplayableFactory)
end


function initCurrentDisplayableFactory(this::CurrentDisplayableFactory)
        initFieldsCurrentDisplayableFactory(this)
        AllBinary.add(this.DEFAULT_CHILD_NAME_LIST, this.canvasStrings.ABOUT)
        AllBinary.add(this.DEFAULT_CHILD_NAME_LIST, this.canvasStrings.OPTIONS)
        AllBinary.add(this.DEFAULT_CHILD_NAME_LIST, staticGet_NAME(GameInputMappingCanvas))
        AllBinary.add(this.DEFAULT_CHILD_NAME_LIST, staticGet_NAME(GameInputMappingInstructionsCanvas))
        AllBinary.add(this.DEFAULT_CHILD_NAME_LIST, staticGet_NAME(HighScoresCanvas))
        nothing
end

function newCurrentDisplayableFactory()
    this = CurrentDisplayableFactory()
    initCurrentDisplayableFactory(this)
    this
end


function setMyCanvas(this::CurrentDisplayableFactory, displayable)
        if Base.isa(this.displayable, MyCanvas)
            if AllBinary.hasChild(displayable, (this.displayable))
                AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Child Displayable is already set for: "), AllBinary.toString(this.stringUtil, displayable))), this, this.SET_DISPLAYABLE)
                return
            end
        end
        AllBinary.setDisplayable(this, displayable)
        nothing
end


function setDisplayable(this::CurrentDisplayableFactory, displayable)
        this.displayable = displayable
        AllBinary.setOpenGlReadydisplayable(this, displayable)
        nothing
end


function setOpenGlReadydisplayable(this::CurrentDisplayableFactory, openGlReadydisplayable)
        this.openGlReadydisplayable = openGlReadydisplayable
        AllBinary.update(this)
        nothing
end


function getOpenGlReadydisplayable(this::CurrentDisplayableFactory)
        return this.openGlReadydisplayable
end


function setRunnable(this::CurrentDisplayableFactory, runnable)
        AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.RUNNABLE), AllBinary.toString(this.stringUtil, runnable))), this, this.SET_RUNNABLE)
        this.runnable = runnable
        if this.usedRunnable !== this.runnable
            AllBinary.update(this)
        else
            AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.RUNNABLE_WAS_ALREADY_IN_USE), AllBinary.toString(this.stringUtil, runnable))), this, this.SET_RUNNABLE)
        end
        nothing
end


function clearRunnable(this::CurrentDisplayableFactory)
        AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.RUNNABLE), AllBinary.toString(this.stringUtil, AllBinary.getInstance(NullRunnable)))), this, this.CLEAR_RUNNABLE)
        AllBinary.setUsedRunnable(this, AllBinary.getInstance(NullWaitGameRunnable))
        nothing
end


function update(this::CurrentDisplayableFactory)
        begin
            local commonSeps = AllBinary.getInstance(CommonSeps)
            local features = AllBinary.getInstance(Features)
            local stringMaker = newStringMaker()
            AllBinary.append(stringMaker, AllBinary.toString(this.stringUtil, this.openGlReadydisplayable))
            if staticGet_isSWT(SWTUtil) && !AllBinary.isDefault(features, AllBinary.getInstance(OpenGLFeatureFactory).OPENGL)
                AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(stringMaker, commonSeps.SPACE), staticGet_SWT(SWTUtil)), commonSeps.SPACE), this.RUNNABLE), AllBinary.toString(this.stringUtil, AllBinary.getInstance(NullRunnable)))), this, this.commonStrings.UPDATE)
                AllBinary.setUsedRunnable(this, AllBinary.getInstance(NullWaitGameRunnable))
            elseif AllBinary.isHTML(J2MEUtil)
                AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(stringMaker, commonSeps.SPACE), AllBinary.getInstance(GraphicsStrings).HTML), commonSeps.SPACE), this.RUNNABLE), AllBinary.toString(this.stringUtil, this.runnable))), this, this.commonStrings.UPDATE)
                AllBinary.setUsedRunnable(this, this.runnable)
            elseif Base.isa(this.openGlReadydisplayable, DemoCanvas) || Base.isa(this.openGlReadydisplayable, AllBinaryGameCanvas) || AllBinary.isDefault(features, AllBinary.getInstance(OpenGLFeatureFactory).OPENGL)
                AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(stringMaker, commonSeps.SPACE), AllBinary.toString(AllBinary.getInstance(OpenGLFeatureFactory).OPENGL)), commonSeps.SPACE), this.RUNNABLE), AllBinary.toString(this.stringUtil, this.runnable))), this, this.commonStrings.UPDATE)
                AllBinary.setUsedRunnable(this, this.runnable)
            else
                AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(stringMaker, this.RUNNABLE), AllBinary.toString(this.stringUtil, AllBinary.getInstance(NullRunnable)))), this, this.commonStrings.UPDATE)
                AllBinary.setUsedRunnable(this, AllBinary.getInstance(NullWaitGameRunnable))
            end
        end
        nothing
end


function getDisplayable(this::CurrentDisplayableFactory)
        return this.displayable
end


function getUsedRunnable(this::CurrentDisplayableFactory)
        return this.usedRunnable
end


function setUsedRunnable(this::CurrentDisplayableFactory, usedRunnable)
        AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(newStringMaker(), this.RUNNABLE), AllBinary.toString(this.stringUtil, this.runnable)), AllBinary.getInstance(CommonSeps).COLON_SEP), AllBinary.toString(this.stringUtil, usedRunnable))), this, this.SET_USED_RUNNABLE)
        this.usedRunnable = usedRunnable
        nothing
end

