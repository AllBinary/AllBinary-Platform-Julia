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

mutable struct PlatformFormInputMappingFactory <: JObject
    logUtil::Any
    inputToGameKeyMapping::Any
    PlatformFormInputMappingFactory() = new()
end

const PlatformFormInputMappingFactory_instanceValue = Ref{Any}(nothing)
const PlatformFormInputMappingFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{PlatformFormInputMappingFactory})
    if !PlatformFormInputMappingFactory_instanceSet[]
        PlatformFormInputMappingFactory_instanceSet[] = true
        PlatformFormInputMappingFactory_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    PlatformFormInputMappingFactory_instanceValue[]
end
function staticSet_instance(::Type{PlatformFormInputMappingFactory}, value)
    PlatformFormInputMappingFactory_instanceSet[] = true
    PlatformFormInputMappingFactory_instanceValue[] = value
end

function initFieldsPlatformFormInputMappingFactory(this::PlatformFormInputMappingFactory)
    this.logUtil = nothing
    this.inputToGameKeyMapping = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.inputToGameKeyMapping = AllBinary.getNullInstance(InputToGameKeyMapping)
    nothing
end

function initPlatformFormInputMappingFactory(this::PlatformFormInputMappingFactory)
    initFieldsPlatformFormInputMappingFactory(this)
end

function newPlatformFormInputMappingFactory()
    this = PlatformFormInputMappingFactory()
    initPlatformFormInputMappingFactory(this)
    this
end


function getInstance(::Type{PlatformFormInputMappingFactory})
        if staticGet_instance(PlatformFormInputMappingFactory) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(PlatformFormInputMappingFactory, newPlatformFormInputMappingFactory())
        end
        return (staticGet_instance(PlatformFormInputMappingFactory))
end


function getOrCreate(this::PlatformFormInputMappingFactory)
        try
            if this.inputToGameKeyMapping === AllBinary.getNullInstance(InputToGameKeyMapping)
                local pcKeyFactory = AllBinary.getInstance(PCKeyFactory)
                local inputToGameKeyMapping = newInputToGameKeyMapping()
                local gameKeyFactory = AllBinary.getInstance(GameKeyFactory)
                AllBinary.add(inputToGameKeyMapping, gameKeyFactory.UP, pcKeyFactory.DPAD_UP)
                AllBinary.add(inputToGameKeyMapping, gameKeyFactory.DOWN, pcKeyFactory.DPAD_DOWN)
                AllBinary.add(inputToGameKeyMapping, gameKeyFactory.LEFT, pcKeyFactory.DPAD_LEFT)
                AllBinary.add(inputToGameKeyMapping, gameKeyFactory.RIGHT, pcKeyFactory.DPAD_RIGHT)
                AllBinary.add(inputToGameKeyMapping, gameKeyFactory.KEY_NUM1, pcKeyFactory.ENTER)
                this.inputToGameKeyMapping = inputToGameKeyMapping
            end
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
        end
        return this.inputToGameKeyMapping
end

