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
# package org.allbinary.game.configuration

# extends Init: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct InGameFeatures <: JObject
    InGameFeatures() = new()
end


function initFieldsInGameFeatures(this::InGameFeatures)
    nothing
end

function initInGameFeatures(this::InGameFeatures)
    initInit(this)
    initFieldsInGameFeatures(this)
end

function newInGameFeatures()
    this = InGameFeatures()
    initInGameFeatures(this)
    this
end


function init(this::InGameFeatures)
        local LABEL = "Screen Buttons"
        local orientationData = AllBinary.getInstance(OrientationData)
        local exclusiveOrientationSensorVector = (AllBinary.get(AllBinary.get(AllBinary.getExclusiveInstance(GameFeatureChoiceGroups)), (orientationData.ORIENTATION_SENSOR_INPUT)))
        local inGameFeatureChoiceGroups = AllBinary.getExclusiveInstance(InGameFeatureChoiceGroups)
        if exclusiveOrientationSensorVector !== nothing
            local inGameExclusiveOrientationSensorVectorCanBeNull = AllBinary.get(AllBinary.get(inGameFeatureChoiceGroups), (orientationData.ORIENTATION_SENSOR_INPUT))
            if inGameExclusiveOrientationSensorVectorCanBeNull === nothing
                AllBinary.addToInGameMenu(this)
            else
                local inGameExclusiveOrientationSensorVector = (inGameExclusiveOrientationSensorVectorCanBeNull)
                if AllBinary.size(inGameExclusiveOrientationSensorVector) == Int32(0)
                    AllBinary.addToInGameMenu(this)
                end
            end
        end
        local features = AllBinary.getInstance(Features)
        if AllBinary.isFeature(features, AllBinary.getInstance(TouchFeatureFactory).SHOW_SCREEN_BUTTONS) || AllBinary.isFeature(features, AllBinary.getInstance(TouchFeatureFactory).AUTO_HIDE_SHOW_SCREEN_BUTTONS) || AllBinary.isFeature(features, AllBinary.getInstance(TouchFeatureFactory).HIDE_SCREEN_BUTTONS)
            local exclusiveScreenButtonsVector = newBasicArrayListD()
            local touchFeatureFactory = AllBinary.getInstance(TouchFeatureFactory)
            AllBinary.add(exclusiveScreenButtonsVector, touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            AllBinary.add(exclusiveScreenButtonsVector, touchFeatureFactory.SHOW_SCREEN_BUTTONS)
            AllBinary.add(exclusiveScreenButtonsVector, touchFeatureFactory.HIDE_SCREEN_BUTTONS)
            AllBinary.add(inGameFeatureChoiceGroups, LABEL, exclusiveScreenButtonsVector)
        end
        nothing
end


function addToInGameMenu(this::InGameFeatures)
        local orientationData = AllBinary.getInstance(OrientationData)
        local inGameExclusiveOrientationSensorVector = newBasicArrayListD()
        AllBinary.add(inGameExclusiveOrientationSensorVector, AllBinary.getInstance(SensorFeatureFactory).ORIENTATION_SENSORS)
        AllBinary.add(inGameExclusiveOrientationSensorVector, AllBinary.getInstance(SensorFeatureFactory).NO_ORIENTATION)
        AllBinary.add(AllBinary.getExclusiveInstance(InGameFeatureChoiceGroups), orientationData.ORIENTATION_SENSOR_INPUT, inGameExclusiveOrientationSensorVector)
        nothing
end


function isAny(this::InGameFeatures)
        local features = AllBinary.getInstance(Features)
        local touchFeatureFactory = AllBinary.getInstance(TouchFeatureFactory)
        if AllBinary.isFeature(features, touchFeatureFactory.SHOW_SCREEN_BUTTONS) || AllBinary.isFeature(features, touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS) || AllBinary.isFeature(features, touchFeatureFactory.HIDE_SCREEN_BUTTONS)
            return true
        end
        local exclusiveOrientationSensorVector = (AllBinary.get(AllBinary.get(AllBinary.getExclusiveInstance(GameFeatureChoiceGroups)), (AllBinary.getInstance(OrientationData).ORIENTATION_SENSOR_INPUT)))
        if exclusiveOrientationSensorVector !== nothing
            return true
        end
        return false
end

