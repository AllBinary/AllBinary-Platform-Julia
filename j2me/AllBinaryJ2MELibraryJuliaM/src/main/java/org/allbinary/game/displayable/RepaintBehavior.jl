#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.game.displayable

mutable struct RepaintBehavior <: JObject
    logUtil::Any
    NAME::Any
    RepaintBehavior() = new()
end

const RepaintBehavior_instanceValue = Ref{Any}(nothing)
const RepaintBehavior_instanceSet = Ref(false)
function staticGet_instance(::Type{RepaintBehavior})
    if !RepaintBehavior_instanceSet[]
        RepaintBehavior_instanceSet[] = true
        RepaintBehavior_instanceValue[] = newRepaintBehavior()
    end
    RepaintBehavior_instanceValue[]
end
function staticSet_instance(::Type{RepaintBehavior}, value)
    RepaintBehavior_instanceSet[] = true
    RepaintBehavior_instanceValue[] = value
end

function initFieldsRepaintBehavior(this::RepaintBehavior)
    this.logUtil = nothing
    this.NAME = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.NAME = "RepaintBehavior"
    nothing
end

function initRepaintBehavior(this::RepaintBehavior)
    initFieldsRepaintBehavior(this)
end

function newRepaintBehavior()
    this = RepaintBehavior()
    initRepaintBehavior(this)
    this
end


function getInstance(::Type{RepaintBehavior})
        return staticGet_instance(RepaintBehavior)
end


function repaint(this::RepaintBehavior, canvas)
        nothing
        nothing
end


function onChangeRepaint(this::RepaintBehavior, canvas)
        local features = AllBinary.getInstance(Features)
        local openGLFeatureFactory = AllBinary.getInstance(OpenGLFeatureFactory)
        if AllBinary.isFeature(features, openGLFeatureFactory.OPENGL)
            AllBinary.process(AllBinary.getInstance(DisplayInfoSingleton))
        else
            local thread = newThread(newRepaintRunnable(canvas), this.NAME)
            AllBinary.start(thread)
        end
        nothing
end

