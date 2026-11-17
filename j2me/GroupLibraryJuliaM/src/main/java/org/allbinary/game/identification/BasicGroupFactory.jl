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
# package org.allbinary.game.identification

mutable struct BasicGroupFactory <: JObject
    NAME::Any
    NO_SUCH_GROUP::Any
    GOOD::Any
    ENEMY::Any
    ENEMY_ON_LEVEL::Any
    NONE::Any
    GOOD_ARRAY::Any
    ENEMY_ARRAY::Any
    ENEMY_ON_LEVEL_ARRAY::Any
    NONE_ARRAY::Any
    BasicGroupFactory() = new()
end

const BasicGroupFactory_instanceValue = Ref{Any}(nothing)
const BasicGroupFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{BasicGroupFactory})
    if !BasicGroupFactory_instanceSet[]
        BasicGroupFactory_instanceSet[] = true
        BasicGroupFactory_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    BasicGroupFactory_instanceValue[]
end
function staticSet_instance(::Type{BasicGroupFactory}, value)
    BasicGroupFactory_instanceSet[] = true
    BasicGroupFactory_instanceValue[] = value
end

function initFieldsBasicGroupFactory(this::BasicGroupFactory)
    this.NAME = nothing
    this.NO_SUCH_GROUP = nothing
    this.GOOD = nothing
    this.ENEMY = nothing
    this.ENEMY_ON_LEVEL = nothing
    this.NONE = nothing
    this.GOOD_ARRAY = nothing
    this.ENEMY_ARRAY = nothing
    this.ENEMY_ON_LEVEL_ARRAY = nothing
    this.NONE_ARRAY = nothing
    this.NAME = "GROUP_NAME"
    this.NO_SUCH_GROUP = "No Such Group: "
    this.GOOD = newGroup("Good Guys", ((Int32(0)) % Int16))
    this.ENEMY = newGroup("Bad Guys", ((Int32(1)) % Int16))
    this.ENEMY_ON_LEVEL = newGroup("Bad Guys on Level", ((Int32(2)) % Int16))
    this.NONE = newGroup("Not On A Team", ((Int32(3)) % Int16))
    this.GOOD_ARRAY = Any[this.GOOD]
    this.ENEMY_ARRAY = Any[this.ENEMY]
    this.ENEMY_ON_LEVEL_ARRAY = Any[this.ENEMY, this.ENEMY_ON_LEVEL]
    this.NONE_ARRAY = Any[this.NONE]
    nothing
end

function initBasicGroupFactory(this::BasicGroupFactory)
    initFieldsBasicGroupFactory(this)
end

function newBasicGroupFactory()
    this = BasicGroupFactory()
    initBasicGroupFactory(this)
    this
end


function getInstance(::Type{BasicGroupFactory})
        if staticGet_instance(BasicGroupFactory) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(BasicGroupFactory, newBasicGroupFactory())
        end
        return (staticGet_instance(BasicGroupFactory))
end

