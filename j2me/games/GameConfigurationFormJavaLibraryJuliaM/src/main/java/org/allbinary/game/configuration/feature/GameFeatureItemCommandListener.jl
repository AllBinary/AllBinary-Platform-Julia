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

mutable struct GameFeatureItemCommandListener <: JObject
    logUtil::Any
    gameOptionsForm::Any
    GameFeatureItemCommandListener() = new()
end


function initFieldsGameFeatureItemCommandListener(this::GameFeatureItemCommandListener)
    this.logUtil = nothing
    this.gameOptionsForm = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    nothing
end


function initGameFeatureItemCommandListener(this::GameFeatureItemCommandListener, gameOptionsForm)
        initFieldsGameFeatureItemCommandListener(this)
        this.gameOptionsForm = gameOptionsForm
        nothing
end

function newGameFeatureItemCommandListener(gameOptionsForm)
    this = GameFeatureItemCommandListener()
    initGameFeatureItemCommandListener(this, gameOptionsForm)
    this
end


function commandAction(this::GameFeatureItemCommandListener, command, item)
        try
            local itemLabel = AllBinary.getLabel(item)
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonLabels).ITEM_LABEL), itemLabel)), this, AllBinary.getInstance(MidletStrings).COMMAND_ACTION)
            if Base.isa(item, GameConfigurationGauge)
                AllBinary.change(AllBinary.getInstance(GameConfigurationUtil), this.gameOptionsForm, (item))
            end
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, AllBinary.getInstance(MidletStrings).COMMAND_ACTION, e)
        end
        nothing
end

