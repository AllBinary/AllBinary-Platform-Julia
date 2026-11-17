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
# package org.allbinary.game.ag.layer.pickup.points

mutable struct PointsResources <: JObject
    RESOURCE::Any
    RESOURCE_2::Any
    RESOURCE_3::Any
    RESOURCE_4::Any
    PointsResources() = new()
end

const PointsResources_SINGLETONValue = Ref{Any}(nothing)
const PointsResources_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{PointsResources})
    if !PointsResources_SINGLETONSet[]
        PointsResources_SINGLETONSet[] = true
        PointsResources_SINGLETONValue[] = newPointsResources()
    end
    PointsResources_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{PointsResources}, value)
    PointsResources_SINGLETONSet[] = true
    PointsResources_SINGLETONValue[] = value
end

function initFieldsPointsResources(this::PointsResources)
    this.RESOURCE = nothing
    this.RESOURCE_2 = nothing
    this.RESOURCE_3 = nothing
    this.RESOURCE_4 = nothing
    this.RESOURCE = "points_drop_20_by_20.png"
    this.RESOURCE_2 = "points_2_drop_20_by_20.png"
    this.RESOURCE_3 = "points_3_drop_20_by_20.png"
    this.RESOURCE_4 = "points_4_drop_20_by_20.png"
    nothing
end


function initPointsResources(this::PointsResources)
        initFieldsPointsResources(this)
        nothing
        nothing
end

function newPointsResources()
    this = PointsResources()
    initPointsResources(this)
    this
end


function getInstance(::Type{PointsResources})
        return staticGet_SINGLETON(PointsResources)
end

