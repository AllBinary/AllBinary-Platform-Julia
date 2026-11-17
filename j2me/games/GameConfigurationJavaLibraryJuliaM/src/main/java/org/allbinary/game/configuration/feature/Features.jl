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
# package org.allbinary.game.configuration.feature

mutable struct Features <: JObject
    logUtil::Any
    commonStrings::Any
    list::Any
    defaultList::Any
    Features() = new()
end

const Features_SINGLETONValue = Ref{Any}(nothing)
const Features_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{Features})
    if !Features_SINGLETONSet[]
        Features_SINGLETONSet[] = true
        Features_SINGLETONValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    Features_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{Features}, value)
    Features_SINGLETONSet[] = true
    Features_SINGLETONValue[] = value
end

function initFieldsFeatures(this::Features)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.list = nothing
    this.defaultList = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    
    
    nothing
end


function getInstance(::Type{Features})
        if staticGet_SINGLETON(Features) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_SINGLETON(Features, newFeatures())
        end
        return (staticGet_SINGLETON(Features))
end


function initFeatures(this::Features)
        initFieldsFeatures(this)
        this.list = newBasicArrayListD()
        this.defaultList = newBasicArrayListD()
        AllBinary.init(this)
        nothing
end

function newFeatures()
    this = Features()
    initFeatures(this)
    this
end


function addDefault(this::Features, gameFeature)
        AllBinary.add(this, gameFeature)
        if !AllBinary.contains(this.defaultList, gameFeature)
            AllBinary.add(this.defaultList, gameFeature)
        end
        nothing
end


function add(this::Features, gameFeature)
        if !AllBinary.contains(this.list, gameFeature)
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonLabels).START_LABEL), AllBinary.toString(gameFeature))), this, this.commonStrings.ADD)
            AllBinary.add(this.list, gameFeature)
            AllBinary.fireEvent(AllBinary.getInstance(GameFeatureEventHandler), newGameFeatureEvent(gameFeature, AllBinary.toString(gameFeature)))
        end
        nothing
end


function removeDefault(this::Features, gameFeature)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonLabels).START_LABEL), AllBinary.toString(gameFeature))), this, "removeDefault")
        AllBinary.remove(this, gameFeature)
        AllBinary.remove(this.defaultList, gameFeature)
        nothing
end


function remove(this::Features, gameFeature)
        if AllBinary.contains(this.list, gameFeature)
            AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.REMOVE)
            AllBinary.remove(this.list, gameFeature)
            AllBinary.fireEvent(AllBinary.getInstance(GameFeatureEventHandler), newGameFeatureEvent(gameFeature, AllBinary.toString(gameFeature)))
        end
        nothing
end


function init(this::Features)
        try
            local gameFeatureFactory = AllBinary.getInstance(GameFeatureFactory)
            local inputFeatureFactory = AllBinary.getInstance(InputFeatureFactory)
            local sensorFeatureFactory = AllBinary.getInstance(SensorFeatureFactory)
            local touchFeatureFactory = AllBinary.getInstance(TouchFeatureFactory)
            AllBinary.addDefault(this, gameFeatureFactory.ARTIFICIAL_INTELLEGENCE_PROCESSOR)
            AllBinary.addDefault(this, gameFeatureFactory.COLLIDABLE_INTERFACE_LAYER_PROCESSOR)
            AllBinary.addDefault(this, gameFeatureFactory.GAME_INPUT_LAYER_PROCESSOR)
            AllBinary.addDefault(this, gameFeatureFactory.TICKABLE_LAYER_PROCESSOR)
            AllBinary.addDefault(this, inputFeatureFactory.MULTI_KEY_PRESS)
            AllBinary.addDefault(this, inputFeatureFactory.REMOVE_DUPLICATE_KEY_PRESSES)
            AllBinary.addDefault(this, gameFeatureFactory.SCREEN_SHAKE)
            AllBinary.addDefault(this, gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)
            local operatingSystemInterface = AllBinary.getOperatingSystemInstance(AllBinary.getInstance(OperatingSystemFactory))
            if AllBinary.isOverScan(operatingSystemInterface)
                AllBinary.addDefault(this, sensorFeatureFactory.NO_ORIENTATION)
                AllBinary.addDefault(this, touchFeatureFactory.HIDE_SCREEN_BUTTONS)
            else
                AllBinary.addDefault(this, sensorFeatureFactory.ORIENTATION_SENSORS)
                AllBinary.addDefault(this, touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            end
            AllBinary.addDefault(this, touchFeatureFactory.TOUCH_ENABLED)
            AllBinary.addDefault(this, AllBinary.getInstance(MainFeatureFactory).FULL_SCREEN)
            AllBinary.addDefault(this, AllBinary.getInstance(MainFeatureFactory).LOAD_ONDEMAND)
        catch e
            AllBinary.putOE(PreLogUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, e)
        end
        nothing
end


function isDefault(this::Features, gameFeature)
        return AllBinary.contains(this.defaultList, gameFeature)
end


function isFeature(this::Features, gameFeature)
        return AllBinary.contains(this.list, gameFeature)
end


function toggle(this::Features, gameFeature)
        if AllBinary.isFeature(this, gameFeature)
            AllBinary.remove(this, gameFeature)
        else
            AllBinary.add(this, gameFeature)
        end
        nothing
end

