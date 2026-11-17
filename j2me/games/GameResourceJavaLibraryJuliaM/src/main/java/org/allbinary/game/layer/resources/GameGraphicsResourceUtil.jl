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

mutable struct GameGraphicsResourceUtil <: JObject
    logUtil::Any
    SPRITE::Any
    QUARTER::Any
    name::Any
    GameGraphicsResourceUtil() = new()
end

const GameGraphicsResourceUtil_instanceValue = Ref{Any}(nothing)
const GameGraphicsResourceUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{GameGraphicsResourceUtil})
    if !GameGraphicsResourceUtil_instanceSet[]
        GameGraphicsResourceUtil_instanceSet[] = true
        GameGraphicsResourceUtil_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    GameGraphicsResourceUtil_instanceValue[]
end
function staticSet_instance(::Type{GameGraphicsResourceUtil}, value)
    GameGraphicsResourceUtil_instanceSet[] = true
    GameGraphicsResourceUtil_instanceValue[] = value
end

function initFieldsGameGraphicsResourceUtil(this::GameGraphicsResourceUtil)
    this.logUtil = nothing
    this.SPRITE = nothing
    this.QUARTER = nothing
    this.name = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.SPRITE = "_sprite"
    this.QUARTER = "_quarter"
    this.name = AllBinary.getInstance(StringUtil).EMPTY_STRING
    nothing
end


function getInstance(::Type{GameGraphicsResourceUtil})
        if staticGet_instance(GameGraphicsResourceUtil) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(GameGraphicsResourceUtil, newGameGraphicsResourceUtil())
        end
        return (staticGet_instance(GameGraphicsResourceUtil))
end


function initGameGraphicsResourceUtil(this::GameGraphicsResourceUtil)
        initFieldsGameGraphicsResourceUtil(this)
        try
            this.name = AllBinary.getString(this)
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)
        end
        nothing
end

function newGameGraphicsResourceUtil()
    this = GameGraphicsResourceUtil()
    initGameGraphicsResourceUtil(this)
    this
end


function getString(this::GameGraphicsResourceUtil)
        local graphicsFeatureFactory = AllBinary.getInstance(GraphicsFeatureFactory)
        local graphicsFeature = graphicsFeatureFactory.NONE
        local features = AllBinary.getInstance(Features)
        if AllBinary.isFeature(features, graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS)
            graphicsFeature = graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS
        elseif AllBinary.isFeature(features, graphicsFeatureFactory.SPRITE_FULL_GRAPHICS)
            graphicsFeature = graphicsFeatureFactory.SPRITE_FULL_GRAPHICS
        elseif AllBinary.isFeature(features, graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS)
            graphicsFeature = graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS
        elseif AllBinary.isFeature(features, graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY)
            graphicsFeature = graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY
        end
        return AllBinary.getStringForFeature(this, graphicsFeature)
end


function getStringForFeature(this::GameGraphicsResourceUtil, graphicsFeature)
        local stringBuffer = newStringMaker()
        local graphicsFeatureFactory = AllBinary.getInstance(GraphicsFeatureFactory)
        AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
        local features = AllBinary.getInstance(Features)
        if AllBinary.isFeature(features, graphicsFeatureFactory.VECTOR_GRAPHICS)
            nothing
        elseif AllBinary.isFeature(features, graphicsFeatureFactory.IMAGE_GRAPHICS)
            if graphicsFeature === graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS || graphicsFeature === graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY
                nothing
            elseif graphicsFeature === graphicsFeatureFactory.SPRITE_FULL_GRAPHICS
                AllBinary.append(stringBuffer, this.SPRITE)
            elseif graphicsFeature === graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS
                AllBinary.append(stringBuffer, this.QUARTER)
                AllBinary.append(stringBuffer, this.SPRITE)
            else
                throw(jNewException("Exception", "None/Unknown Sub Image Resource Type Specified"))
            end
        elseif AllBinary.isAnyThreed(AllBinary.getInstance(OpenGLFeatureUtil))
            AllBinary.append(stringBuffer, AllBinary.getInstance(CanvasStrings).OBJ_MODEL)
        else
            throw(jNewException("Exception", "None/Unknown Main Image Resource Type Specified"))
        end
        return AllBinary.toString(stringBuffer)
end


function getName(this::GameGraphicsResourceUtil)
        return this.name
end

