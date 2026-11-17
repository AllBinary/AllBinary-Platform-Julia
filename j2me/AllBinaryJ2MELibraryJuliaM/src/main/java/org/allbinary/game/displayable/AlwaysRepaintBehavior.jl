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

# extends RepaintBehavior: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AlwaysRepaintBehavior <: JObject
    NAME::Any
    AlwaysRepaintBehavior() = new()
end

const AlwaysRepaintBehavior_instanceCValue = Ref{Any}(nothing)
const AlwaysRepaintBehavior_instanceCSet = Ref(false)
function staticGet_instanceC(::Type{AlwaysRepaintBehavior})
    if !AlwaysRepaintBehavior_instanceCSet[]
        AlwaysRepaintBehavior_instanceCSet[] = true
        AlwaysRepaintBehavior_instanceCValue[] = newAlwaysRepaintBehavior()
    end
    AlwaysRepaintBehavior_instanceCValue[]
end
function staticSet_instanceC(::Type{AlwaysRepaintBehavior}, value)
    AlwaysRepaintBehavior_instanceCSet[] = true
    AlwaysRepaintBehavior_instanceCValue[] = value
end

function initFieldsAlwaysRepaintBehavior(this::AlwaysRepaintBehavior)
    this.NAME = nothing
    this.NAME = "AlwaysRepaintBehavior"
    nothing
end

function initAlwaysRepaintBehavior(this::AlwaysRepaintBehavior)
    initRepaintBehavior(this)
    initFieldsAlwaysRepaintBehavior(this)
end

function newAlwaysRepaintBehavior()
    this = AlwaysRepaintBehavior()
    initAlwaysRepaintBehavior(this)
    this
end


function getInstance(::Type{AlwaysRepaintBehavior})
        return staticGet_instanceC(AlwaysRepaintBehavior)
end


function repaint(this::AlwaysRepaintBehavior, canvas)
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


function onChangeRepaint(this::AlwaysRepaintBehavior, canvas)
        nothing
        nothing
end

