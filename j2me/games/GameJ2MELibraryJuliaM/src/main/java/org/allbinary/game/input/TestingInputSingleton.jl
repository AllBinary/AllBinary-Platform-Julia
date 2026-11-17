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
# package org.allbinary.game.input

# extends AllBinaryGameLayer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TestingInputSingleton <: JObject
    inputProcessorArray::Any
    testInputPaintable::Any
    TestingInputSingleton() = new()
end

const TestingInputSingleton_instanceValue = Ref{Any}(nothing)
const TestingInputSingleton_instanceSet = Ref(false)
function staticGet_instance(::Type{TestingInputSingleton})
    if !TestingInputSingleton_instanceSet[]
        TestingInputSingleton_instanceSet[] = true
        TestingInputSingleton_instanceValue[] = newTestingInputSingleton()
    end
    TestingInputSingleton_instanceValue[]
end
function staticSet_instance(::Type{TestingInputSingleton}, value)
    TestingInputSingleton_instanceSet[] = true
    TestingInputSingleton_instanceValue[] = value
end

function initFieldsTestingInputSingleton(this::TestingInputSingleton)
    this.inputProcessorArray = nothing
    this.testInputPaintable = nothing
    this.inputProcessorArray = jNewArray(Any, AllBinary.getInstance(InputFactory).MAX, nothing)
    this.testInputPaintable = AllBinary.getInstance(NullPaintable)
    nothing
end


function getInstance(::Type{TestingInputSingleton})
        return staticGet_instance(TestingInputSingleton)
end


function initTestingInputSingleton(this::TestingInputSingleton)
        initAllBinaryGameLayer(this, AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SINGLETON(RectangleFactory), AllBinary.getInstanceD(ViewPosition))
        initFieldsTestingInputSingleton(this)
        AllBinary.init(GameInputProcessorUtil, this.inputProcessorArray)
        nothing
end

function newTestingInputSingleton()
    this = TestingInputSingleton()
    initTestingInputSingleton(this)
    this
end


function initInputProcessors(this::TestingInputSingleton)
        nothing
        nothing
end


function initInputProcessorsForTestInput(this::TestingInputSingleton, aTestInputInterface)
        local testInputInterface = aTestInputInterface
        this.testInputPaintable = testInputInterface
        this.inputProcessorArray[staticGet_UP(Canvas) + 1] = newGameInputProcessor() #= Java anonymous class body: implement it as a named type
            

function processEvent(this::TestingInputSingleton, allbinaryLayerManager, gameKeyEvent)
                AllBinary.up(testInputInterface)
        nothing
end =#
        this.inputProcessorArray[staticGet_DOWN(Canvas) + 1] = newGameInputProcessor() #= Java anonymous class body: implement it as a named type
            

function processEvent(this::TestingInputSingleton, allbinaryLayerManager, gameKeyEvent)
                AllBinary.down(testInputInterface)
        nothing
end =#
        this.inputProcessorArray[staticGet_LEFT(Canvas) + 1] = newGameInputProcessor() #= Java anonymous class body: implement it as a named type
            

function processEvent(this::TestingInputSingleton, allbinaryLayerManager, gameKeyEvent)
                AllBinary.left(testInputInterface)
        nothing
end =#
        this.inputProcessorArray[staticGet_RIGHT(Canvas) + 1] = newGameInputProcessor() #= Java anonymous class body: implement it as a named type
            

function processEvent(this::TestingInputSingleton, allbinaryLayerManager, gameKeyEvent)
                AllBinary.right(testInputInterface)
        nothing
end =#
        this.inputProcessorArray[staticGet_KEY_NUM7(Canvas) + 1] = newGameInputProcessor() #= Java anonymous class body: implement it as a named type
            

function processEvent(this::TestingInputSingleton, allbinaryLayerManager, gameKeyEvent)
                AllBinary.strafeLeft(testInputInterface)
        nothing
end =#
        this.inputProcessorArray[staticGet_KEY_NUM9(Canvas) + 1] = newGameInputProcessor() #= Java anonymous class body: implement it as a named type
            

function processEvent(this::TestingInputSingleton, allbinaryLayerManager, gameKeyEvent)
                AllBinary.strafeRight(testInputInterface)
        nothing
end =#
        AllBinary.init(GameInputProcessorUtil, this.inputProcessorArray)
        nothing
end


function processInputList(this::TestingInputSingleton, allbinaryLayerManager, list)
        local key::Int32 = Int32(0)
        local gameKeyEvent = nothing
        local size::Int32 = AllBinary.size(list)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            gameKeyEvent = ((list.objectArray[index + 1]))
            key = AllBinary.getKey(gameKeyEvent)
            AllBinary.processEvent(this.inputProcessorArray[key + 1], allbinaryLayerManager, staticGet_NONE(GameKeyEvent))
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function processInput(this::TestingInputSingleton, allbinaryLayerManager)
        AllBinary.processInputList(this, allbinaryLayerManager, AllBinary.getGameKeyEventList(this))
        AllBinary.clear(AllBinary.getGameKeyEventList(this))
        nothing
end


function paint(this::TestingInputSingleton, graphics)
        AllBinary.paint(this.testInputPaintable, graphics)
        nothing
end


function implmentsGameInputInterface(this::TestingInputSingleton)
        return true
end

