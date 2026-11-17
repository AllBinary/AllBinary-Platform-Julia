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
# package org.allbinary.game.layer.resources

mutable struct BasicGameResources <: JObject
    logUtil::Any
    RESOURCE::Any
    RESOURCE_DESTROY::Any
    BasicGameResources() = new()
end

const BasicGameResources_stringBufferValue = Ref{Any}(nothing)
const BasicGameResources_stringBufferSet = Ref(false)
function staticGet_stringBuffer(::Type{BasicGameResources})
    if !BasicGameResources_stringBufferSet[]
        BasicGameResources_stringBufferSet[] = true
        BasicGameResources_stringBufferValue[] = newStringMaker()
    end
    BasicGameResources_stringBufferValue[]
end
function staticSet_stringBuffer(::Type{BasicGameResources}, value)
    BasicGameResources_stringBufferSet[] = true
    BasicGameResources_stringBufferValue[] = value
end

function initFieldsBasicGameResources(this::BasicGameResources)
    this.logUtil = nothing
    this.RESOURCE = nothing
    this.RESOURCE_DESTROY = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.RESOURCE = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.RESOURCE_DESTROY = AllBinary.getInstance(StringUtil).EMPTY_STRING
    nothing
end


function initBasicGameResources(this::BasicGameResources)
        initFieldsBasicGameResources(this)
        nothing
        nothing
end

function newBasicGameResources()
    this = BasicGameResources()
    initBasicGameResources(this)
    this
end


function init(this::BasicGameResources, ROOT, SIZE)
        try
            local scale::Int32 = AllBinary.intValue(AllBinary.getValue(AllBinary.getInstance(GameConfigurationCentral).SCALE))
            if scale > Int32(1) && scale - Int32(1) < Int32(Base.length(SIZE))
                AllBinary.append(this, ROOT, SIZE[scale - Int32(1) + 1])
            else
                throw(jNewException("Exception", AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), "Invalid Value: "), scale))))
            end
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.INIT, e)
        end
        nothing
end


function append(this::BasicGameResources, ROOT, sizeString)
        local DESTROY = "_destroy"
        local string = AllBinary.getString(this)
        AllBinary.delete(staticGet_stringBuffer(BasicGameResources), Int32(0), AllBinary.length(staticGet_stringBuffer(BasicGameResources)))
        AllBinary.append(staticGet_stringBuffer(BasicGameResources), ROOT)
        AllBinary.append(staticGet_stringBuffer(BasicGameResources), string)
        AllBinary.append(staticGet_stringBuffer(BasicGameResources), sizeString)
        this.RESOURCE = AllBinary.toString(staticGet_stringBuffer(BasicGameResources))
        AllBinary.delete(staticGet_stringBuffer(BasicGameResources), Int32(0), AllBinary.length(staticGet_stringBuffer(BasicGameResources)))
        AllBinary.append(staticGet_stringBuffer(BasicGameResources), ROOT)
        AllBinary.append(staticGet_stringBuffer(BasicGameResources), DESTROY)
        AllBinary.append(staticGet_stringBuffer(BasicGameResources), string)
        AllBinary.append(staticGet_stringBuffer(BasicGameResources), sizeString)
        this.RESOURCE_DESTROY = AllBinary.toString(staticGet_stringBuffer(BasicGameResources))
        nothing
end


function getString(this::BasicGameResources)
        return AllBinary.getName(AllBinary.getInstance(GameGraphicsResourceUtil))
end

