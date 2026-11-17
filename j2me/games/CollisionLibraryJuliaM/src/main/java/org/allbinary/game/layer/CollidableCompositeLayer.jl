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
# package org.allbinary.game.layer

# extends AllBinaryGameLayer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CollidableCompositeLayer <: JObject
    collidableInferface::Any
    CollidableCompositeLayer() = new()
end

const CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYERValue = Ref{Any}(nothing)
const CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYERSet = Ref(false)
function staticGet_NULL_COLLIDABLE_COMPOSITE_LAYER(::Type{CollidableCompositeLayer})
    if !CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYERSet[]
        CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYERSet[] = true
        CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYERValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYERValue[]
end
function staticSet_NULL_COLLIDABLE_COMPOSITE_LAYER(::Type{CollidableCompositeLayer}, value)
    CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYERSet[] = true
    CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYERValue[] = value
end

function initFieldsCollidableCompositeLayer(this::CollidableCompositeLayer)
    this.collidableInferface = nothing
    this.collidableInferface = AllBinary.createBehavior(AllBinary.getInstance(CollidableNeverCollideBehaviorFactory))
    nothing
end


function getNullInstance(::Type{CollidableCompositeLayer})
        if staticGet_NULL_COLLIDABLE_COMPOSITE_LAYER(CollidableCompositeLayer) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_NULL_COLLIDABLE_COMPOSITE_LAYER(CollidableCompositeLayer, newCollidableCompositeLayer(AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SINGLETON(RectangleFactory), staticGet_NULL_VIEW_POSITION(ViewPositionBase), AllBinary.getInstance(CollidableNeverCollideBehaviorFactory)))
        end
        return (staticGet_NULL_COLLIDABLE_COMPOSITE_LAYER(CollidableCompositeLayer))
end


function initCollidableCompositeLayer(this::CollidableCompositeLayer, name, layerInfo, viewPosition, collidableBaseBehaviorFactory)
        initAllBinaryGameLayer(this, name, layerInfo, viewPosition)
        initFieldsCollidableCompositeLayer(this)
        if collidableBaseBehaviorFactory !== AllBinary.getInstance(CollidableNeverCollideBehaviorFactory)
            AllBinary.setCollidableInferface(this, AllBinary.createBehavior(collidableBaseBehaviorFactory))
        end
        nothing
end

function newCollidableCompositeLayer(name, layerInfo, viewPosition, collidableBaseBehaviorFactory)
    this = CollidableCompositeLayer()
    initCollidableCompositeLayer(this, name, layerInfo, viewPosition, collidableBaseBehaviorFactory)
    this
end


function getArtificialIntelligenceInterface(this::CollidableCompositeLayer)
        AllBinary.log(ForcedLogUtil, this.commonStrings.NOT_IMPLEMENTED, this)
        return AllBinary.getInstance(ArtificialIntelligence)
end


function getCollidableInferface(this::CollidableCompositeLayer)
        return this.collidableInferface
end


function setCollidableInferface(this::CollidableCompositeLayer, collidableInferface)
        this.collidableInferface = collidableInferface
        nothing
end


function implmentsCollidableInterface(this::CollidableCompositeLayer)
        return true
end


function toStringAppend(this::CollidableCompositeLayer, stringBuffer)
        local commonSeps = AllBinary.getInstance(CommonSeps)
        AllBinary.toStringAppend(this, stringBuffer)
        AllBinary.append(stringBuffer, commonSeps.NEW_LINE)
        AllBinary.append(stringBuffer, AllBinary.toString(AllBinary.getCollidableInferface(this)))
        nothing
end


function toString(this::CollidableCompositeLayer)
        local stringBuffer = newStringMaker()
        AllBinary.toStringAppend(this, stringBuffer)
        return AllBinary.toString(stringBuffer)
end

