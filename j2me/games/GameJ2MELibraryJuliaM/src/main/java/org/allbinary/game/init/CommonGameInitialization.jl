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
# package org.allbinary.game.init

# extends BaseGameInitialization: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CommonGameInitialization <: JObject
    commonStrings::Any
    CommonGameInitialization() = new()
end


function initFieldsCommonGameInitialization(this::CommonGameInitialization)
    this.commonStrings = nothing
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    nothing
end


function initCommonGameInitialization(this::CommonGameInitialization, resourceInitializationArray, portion)
        initBaseGameInitialization(this, resourceInitializationArray, portion)
        initFieldsCommonGameInitialization(this)
        nothing
end

function newCommonGameInitialization(resourceInitializationArray, portion)
    this = CommonGameInitialization()
    initCommonGameInitialization(this, resourceInitializationArray, portion)
    this
end


function init(this::CommonGameInitialization, abeClientInformation, commandListener, level)
        AllBinary.init(this, abeClientInformation, commandListener, level)
        local resourceLoadingLevelFactory = AllBinary.getInstance(ResourceLoadingLevelFactory)
        if !AllBinary.isGameInitialized(this) && level == AllBinary.getLevel(resourceLoadingLevelFactory.LOAD_ALL)
            AllBinary.setGameInitialized(this, true)
            local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
            AllBinary.init(AllBinary.getInstance(SmallIntegerSingletonFactory))
            AllBinary.addNormalPortion(progressCanvas, Int32(50), "Integers")
            AllBinary.init(AllBinary.getInstance(PointFactory))
            AllBinary.addNormalPortion(progressCanvas, Int32(50), "Points")
            AllBinary.getInstance(AngleFactory)
            AllBinary.addNormalPortion(progressCanvas, Int32(50), "Angles")
            AllBinary.initGame(this)
            AllBinary.init(this.resourceInitializationArray[this.GAME_RESOURCES + 1])
        end
        AllBinary.resourceInitialization(this, level)
        nothing
end


function initGame(this::CommonGameInitialization)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
        nothing
end

