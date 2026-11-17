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
# package org.allbinary.game.input.mapping

# extends InputMapping: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct InputToGameKeyMapping <: JObject
    gameKeyFactory::Any
    mappedGameKeys::Any
    platformToGameKeyMapping::Any
    negativePlatformToGameKeyMapping::Any
    InputToGameKeyMapping() = new()
end

const InputToGameKeyMapping_instanceValue = Ref{Any}(nothing)
const InputToGameKeyMapping_instanceSet = Ref(false)
function staticGet_instance(::Type{InputToGameKeyMapping})
    if !InputToGameKeyMapping_instanceSet[]
        InputToGameKeyMapping_instanceSet[] = true
        InputToGameKeyMapping_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    InputToGameKeyMapping_instanceValue[]
end
function staticSet_instance(::Type{InputToGameKeyMapping}, value)
    InputToGameKeyMapping_instanceSet[] = true
    InputToGameKeyMapping_instanceValue[] = value
end

function initFieldsInputToGameKeyMapping(this::InputToGameKeyMapping)
    this.gameKeyFactory = nothing
    this.mappedGameKeys = nothing
    this.platformToGameKeyMapping = nothing
    this.negativePlatformToGameKeyMapping = nothing
    this.gameKeyFactory = AllBinary.getInstance(GameKeyFactory)
    this.mappedGameKeys = Any[this.gameKeyFactory.UP, this.gameKeyFactory.DOWN, this.gameKeyFactory.LEFT, this.gameKeyFactory.RIGHT]
    this.platformToGameKeyMapping = jNewArray(Any, AllBinary.getInstance(InputFactory).MAX, nothing)
    this.negativePlatformToGameKeyMapping = jNewArray(Any, Int32(0), nothing)
    nothing
end


function getNullInstance(::Type{InputToGameKeyMapping})
        if staticGet_instance(InputToGameKeyMapping) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(InputToGameKeyMapping, newInputToGameKeyMapping())
        end
        return (staticGet_instance(InputToGameKeyMapping))
end


function initInputToGameKeyMapping(this::InputToGameKeyMapping)
        initInputMapping(this)
        initFieldsInputToGameKeyMapping(this)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        AllBinary.clear(this)
        nothing
end

function newInputToGameKeyMapping()
    this = InputToGameKeyMapping()
    initInputToGameKeyMapping(this)
    this
end


function clear(this::InputToGameKeyMapping)
        let
            local index::Int32 = Int32(Base.length(this.platformToGameKeyMapping)) - Int32(1)
            while index >= Int32(0)
            try
            this.platformToGameKeyMapping[index + 1] = this.gameKeyFactory.NONE
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end


function removeAll(this::InputToGameKeyMapping)
        AllBinary.removeAll(this)
        AllBinary.clear(this)
        nothing
end


function addMapping(this::InputToGameKeyMapping, inputToGameKeyMapping)
        let
            local index::Int32 = AllBinary.getMaxMappable(inputToGameKeyMapping) - Int32(1)
            while index >= Int32(0)
            try
            local input = AllBinary.getInstance(inputToGameKeyMapping, index)
            if input !== this.gameKeyFactory.NONE
                AllBinary.addAll(this, input, AllBinary.getMappedInput(inputToGameKeyMapping, input))
            end
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end


function addAll(this::InputToGameKeyMapping, input, list)
        let
            local index::Int32 = AllBinary.size(list) - Int32(1)
            while index >= Int32(0)
            try
            local mappedToInput = (list.objectArray[index + 1])
            AllBinary.add(this, input, mappedToInput)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end


function add(this::InputToGameKeyMapping, input, mappedToInput)
        AllBinary.add(this, input, mappedToInput)
        AllBinary.set(this, input, mappedToInput)
        nothing
end


function remove(this::InputToGameKeyMapping, input, mappedToInput)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonLabels).START_LABEL), AllBinary.toString(AllBinary.getInstance(StringUtil), input)), " == "), AllBinary.toString(AllBinary.getInstance(StringUtil), mappedToInput))), this, "InputToGameKeyMapping::remove")
        AllBinary.remove(this, input, mappedToInput)
        AllBinary.set(this, input, this.gameKeyFactory.NONE)
        nothing
end


function set(this::InputToGameKeyMapping, input, mappedToInput)
        local id::Int32 = AllBinary.getId(mappedToInput)
        if id >= Int32(0) && id < Int32(Base.length(this.platformToGameKeyMapping))
            this.platformToGameKeyMapping[id + 1] = (input)
        end
        nothing
end


function getMaxMappable(this::InputToGameKeyMapping)
        return Int32(Base.length(this.platformToGameKeyMapping))
end


function getReverseInstance(this::InputToGameKeyMapping, id)
        local list = newBasicArrayListD()
        local inputFactory = AllBinary.getInstance(InputFactory)
        let
            local index::Int32 = Int32(0)
            while index < Int32(Base.length(this.platformToGameKeyMapping))
            try
            if AllBinary.getId(this.platformToGameKeyMapping[index + 1]) == id
                local input = AllBinary.getInstanceById(inputFactory, index)
                if input !== nothing
                    AllBinary.add(list, input)
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        return list
end


function initGameKey(this::InputToGameKeyMapping, canvas, gameKey)
        local key::Int32 = AllBinary.getKeyCode(canvas, AllBinary.getId(gameKey))
        if key < Int32(0) && -key < Int32(Base.length(this.negativePlatformToGameKeyMapping))
            this.negativePlatformToGameKeyMapping[-key + 1] = gameKey
        elseif key > Int32(0)
            if this.platformToGameKeyMapping[key + 1] === this.gameKeyFactory.NONE
                this.platformToGameKeyMapping[key + 1] = gameKey
            end
        else
            AllBinary.putOE(PreLogUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.toString(gameKey)), AllBinary.getInstance(CommonSeps).COLON_SEP), key)), this, this.commonStrings.INIT, jNewException("Exception", ""))
        end
        nothing
end


function getSmallestCanvasGameKeyCode(this::InputToGameKeyMapping, canvas)
        local nextKey::Int32 = Int32(0)
        local smallestKey::Int32 = Int32(0)
        let
            local index::Int32 = Int32(Base.length(this.mappedGameKeys))
            while (index -= Int32(1)) >= Int32(0)
            try
            nextKey = AllBinary.getKeyCode(canvas, AllBinary.getId(this.mappedGameKeys[index + 1]))
            if nextKey < smallestKey
                smallestKey = nextKey
            end
            finally
            end
            end
        end
        return smallestKey
end


function init(this::InputToGameKeyMapping, canvas)
        try
            local negativePlatformToGameKeyMapping = jNewArray(Any, Int32(0), nothing)
            local smallestKey::Int32 = AllBinary.getSmallestCanvasGameKeyCode(this, canvas)
            if smallestKey < Int32(0)
                smallestKey -= Int32(1)
                if smallestKey < -Int32(256)
                    smallestKey = -Int32(256)
                end
                negativePlatformToGameKeyMapping = jNewArray(Any, -smallestKey, nothing)
                let
                    local index::Int32 = Int32(Base.length(negativePlatformToGameKeyMapping))
                    while (index -= Int32(1)) >= Int32(0)
                    try
                    negativePlatformToGameKeyMapping[index + 1] = this.gameKeyFactory.NONE
                    finally
                    end
                    end
                end
                this.negativePlatformToGameKeyMapping = negativePlatformToGameKeyMapping
            end
            let
                index = Int32(Base.length(this.mappedGameKeys))
                while (index -= Int32(1)) >= Int32(0)
                try
                AllBinary.initGameKey(this, canvas, this.mappedGameKeys[index + 1])
                finally
                end
                end
            end
        catch t
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, t)
        end
        nothing
end


function getInstanceForCanvas(this::InputToGameKeyMapping, canvas, id)
        if id >= Int32(0) && id < Int32(Base.length(this.platformToGameKeyMapping))
            return this.platformToGameKeyMapping[id + 1]
        elseif id < Int32(0) && -id < Int32(Base.length(this.negativePlatformToGameKeyMapping))
            return this.negativePlatformToGameKeyMapping[-id + 1]
        else
            return this.gameKeyFactory.NONE
        end
end


function getInstance(this::InputToGameKeyMapping, id)
        if id >= Int32(0) && id < Int32(Base.length(this.platformToGameKeyMapping))
            return this.platformToGameKeyMapping[id + 1]
        elseif id < Int32(0) && -id < Int32(Base.length(this.negativePlatformToGameKeyMapping))
            return this.negativePlatformToGameKeyMapping[-id + 1]
        else
            return this.gameKeyFactory.NONE
        end
end

