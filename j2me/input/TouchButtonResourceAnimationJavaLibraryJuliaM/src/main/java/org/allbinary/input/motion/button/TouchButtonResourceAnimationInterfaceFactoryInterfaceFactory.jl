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
# package org.allbinary.input.motion.button

# extends BaseResourceAnimationInterfaceFactoryInterfaceFactory: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory <: JObject
    TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory() = new()
end


function initFieldsTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory(this::TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory)
    nothing
end


function createFactory(::Type{TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory})
        return newTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory("TouchButton Animations")
end


function initTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory(this::TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, name)
        initBaseResourceAnimationInterfaceFactoryInterfaceFactory(this, name, AllBinary.createHashtable(AllBinary.getInstance(StdUtil)), AllBinary.createHashtable(AllBinary.getInstance(StdUtil)), AllBinary.createHashtable(AllBinary.getInstance(StdUtil)))
        nothing
end

function newTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory(name)
    this = TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory()
    initTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory(this, name)
    this
end


function init(this::TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, level)
        AllBinary.initImageCache(this, AllBinary.getInstance(ImageCacheFactory), level)
        nothing
end


function initImageCache(this::TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, imageCache, level)
        if AllBinary.isInitialized(this)
            return
        end
        local portion::Int32 = Int32(140)
        local loadingString = AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.toString(this)), " Loading: "))
        local index::Int32 = Int32(0)
        local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
        AllBinary.addPortion(progressCanvas, portion, loadingString, (let old = index; index += Int32(1); old end))
        local touchButtonBlankResource = AllBinary.getInstance(TouchButtonBlankResource)
        local touchButtonGenericActionResource = AllBinary.getInstance(TouchButtonGenericActionResource)
        local touchButtonStartResource = AllBinary.getInstance(TouchButtonStartResource)
        local touchButtonUpResource = AllBinary.getInstance(TouchButtonUpResource)
        local touchButtonDownResource = AllBinary.getInstance(TouchButtonDownResource)
        local touchButtonTurnLeftResource = AllBinary.getInstance(TouchButtonTurnLeftResource)
        local touchButtonTurnRightResource = AllBinary.getInstance(TouchButtonTurnRightResource)
        local touchButtonStrafeLeftResource = AllBinary.getInstance(TouchButtonStrafeLeftResource)
        local touchButtonStrafeRightResource = AllBinary.getInstance(TouchButtonStrafeRightResource)
        local touchButtonBlankResourceImage = AllBinary.getWithKey(imageCache, touchButtonBlankResource.RESOURCE)
        local touchButtonGenericActionResourceImage = AllBinary.getWithKey(imageCache, touchButtonGenericActionResource.RESOURCE)
        local touchButtonStartResourceImage = AllBinary.getWithKey(imageCache, touchButtonStartResource.RESOURCE)
        local touchButtonUpResourceImage = AllBinary.getWithKey(imageCache, touchButtonUpResource.RESOURCE)
        local touchButtonDownResourceImage = AllBinary.getWithKey(imageCache, touchButtonDownResource.RESOURCE)
        local touchButtonTurnLeftResourceImage = AllBinary.getWithKey(imageCache, touchButtonTurnLeftResource.RESOURCE)
        local touchButtonTurnRightResourceImage = AllBinary.getWithKey(imageCache, touchButtonTurnRightResource.RESOURCE)
        local touchButtonStrafeLeftResourceImage = AllBinary.getWithKey(imageCache, touchButtonStrafeLeftResource.RESOURCE)
        local touchButtonStrafeRightResourceImage = AllBinary.getWithKey(imageCache, touchButtonStrafeRightResource.RESOURCE)
        local nullAnimationFactory = AllBinary.getFactoryInstance(NullAnimationFactory)
        if AllBinary.isOverScan(AllBinary.getOperatingSystemInstance(AllBinary.getInstance(OperatingSystemFactory)))
            AllBinary.getWithKey(imageCache, AllBinary.getInstance(TouchButtonStartResource).HINT)
        end
        AllBinary.addPortion(progressCanvas, portion, loadingString, (let old = index; index += Int32(1); old end))
        local imageCompleteUtil = AllBinary.getInstance(ImageCompleteUtil)
        AllBinary.addPortion(progressCanvas, portion, loadingString, (let old = index; index += Int32(1); old end))
        AllBinary.waitForImage(imageCompleteUtil, touchButtonBlankResourceImage, touchButtonBlankResource.RESOURCE)
        AllBinary.add(this, touchButtonBlankResource.RESOURCE, AllBinary.createFactory(OneRowSpriteIndexedAnimationFactory, touchButtonBlankResourceImage, AllBinary.getInstance(AnimationBehaviorFactory)))
        AllBinary.add(this, touchButtonBlankResource.HINT, nullAnimationFactory)
        AllBinary.addPortion(progressCanvas, portion, loadingString, (let old = index; index += Int32(1); old end))
        AllBinary.waitForImage(imageCompleteUtil, touchButtonGenericActionResourceImage, touchButtonGenericActionResource.RESOURCE)
        AllBinary.add(this, touchButtonGenericActionResource.RESOURCE, AllBinary.createFactory(OneRowSpriteIndexedAnimationFactory, touchButtonGenericActionResourceImage, AllBinary.getInstance(AnimationBehaviorFactory)))
        AllBinary.add(this, touchButtonGenericActionResource.HINT, nullAnimationFactory)
        AllBinary.addPortion(progressCanvas, portion, loadingString, (let old = index; index += Int32(1); old end))
        AllBinary.waitForImage(imageCompleteUtil, touchButtonStartResourceImage, touchButtonStartResource.RESOURCE)
        AllBinary.add(this, touchButtonStartResource.RESOURCE, AllBinary.createFactory(OneRowSpriteIndexedAnimationFactory, touchButtonStartResourceImage, AllBinary.getInstance(AnimationBehaviorFactory)))
        AllBinary.addPortion(progressCanvas, portion, loadingString, (let old = index; index += Int32(1); old end))
        AllBinary.waitForImage(imageCompleteUtil, touchButtonUpResourceImage, touchButtonUpResource.RESOURCE)
        AllBinary.add(this, touchButtonUpResource.RESOURCE, AllBinary.createFactory(OneRowSpriteIndexedAnimationFactory, touchButtonUpResourceImage, AllBinary.getInstance(AnimationBehaviorFactory)))
        AllBinary.add(this, touchButtonUpResource.HINT, nullAnimationFactory)
        AllBinary.addPortion(progressCanvas, portion, loadingString, (let old = index; index += Int32(1); old end))
        AllBinary.waitForImage(imageCompleteUtil, touchButtonDownResourceImage, touchButtonDownResource.RESOURCE)
        AllBinary.add(this, touchButtonDownResource.RESOURCE, AllBinary.createFactory(OneRowSpriteIndexedAnimationFactory, touchButtonDownResourceImage, AllBinary.getInstance(AnimationBehaviorFactory)))
        AllBinary.add(this, touchButtonDownResource.HINT, nullAnimationFactory)
        AllBinary.addPortion(progressCanvas, portion, loadingString, (let old = index; index += Int32(1); old end))
        AllBinary.waitForImage(imageCompleteUtil, touchButtonTurnLeftResourceImage, touchButtonTurnLeftResource.RESOURCE)
        AllBinary.add(this, touchButtonTurnLeftResource.RESOURCE, AllBinary.createFactory(OneRowSpriteIndexedAnimationFactory, touchButtonTurnLeftResourceImage, AllBinary.getInstance(AnimationBehaviorFactory)))
        AllBinary.add(this, touchButtonTurnLeftResource.HINT, nullAnimationFactory)
        AllBinary.addPortion(progressCanvas, portion, loadingString, (let old = index; index += Int32(1); old end))
        AllBinary.waitForImage(imageCompleteUtil, touchButtonTurnRightResourceImage, touchButtonTurnRightResource.RESOURCE)
        AllBinary.add(this, touchButtonTurnRightResource.RESOURCE, AllBinary.createFactory(OneRowSpriteIndexedAnimationFactory, touchButtonTurnRightResourceImage, AllBinary.getInstance(AnimationBehaviorFactory)))
        AllBinary.add(this, touchButtonTurnRightResource.HINT, nullAnimationFactory)
        AllBinary.addPortion(progressCanvas, portion, loadingString, (let old = index; index += Int32(1); old end))
        AllBinary.waitForImage(imageCompleteUtil, touchButtonStrafeLeftResourceImage, touchButtonStrafeLeftResource.RESOURCE)
        AllBinary.add(this, touchButtonStrafeLeftResource.RESOURCE, AllBinary.createFactory(OneRowSpriteIndexedAnimationFactory, touchButtonStrafeLeftResourceImage, AllBinary.getInstance(AnimationBehaviorFactory)))
        AllBinary.add(this, touchButtonStrafeLeftResource.HINT, nullAnimationFactory)
        AllBinary.addPortion(progressCanvas, portion, loadingString, (let old = index; index += Int32(1); old end))
        AllBinary.waitForImage(imageCompleteUtil, touchButtonStrafeRightResourceImage, touchButtonStrafeRightResource.RESOURCE)
        AllBinary.add(this, touchButtonStrafeRightResource.RESOURCE, AllBinary.createFactory(OneRowSpriteIndexedAnimationFactory, touchButtonStrafeRightResourceImage, AllBinary.getInstance(AnimationBehaviorFactory)))
        AllBinary.add(this, touchButtonStrafeRightResource.HINT, nullAnimationFactory)
        if AllBinary.isOverScan(AllBinary.getOperatingSystemInstance(AllBinary.getInstance(OperatingSystemFactory)))
            local touchButtonStartHintResource = AllBinary.getWithKey(imageCache, AllBinary.getInstance(TouchButtonStartResource).HINT)
            AllBinary.add(this, touchButtonStartResource.HINT, AllBinary.createFactory(OneRowSpriteIndexedAnimationFactory, touchButtonStartHintResource, AllBinary.getInstance(AnimationBehaviorFactory)))
        else
            AllBinary.add(this, touchButtonStartResource.HINT, nullAnimationFactory)
        end
        AllBinary.init(this, level)
        nothing
end


function isLoadingLevel(this::TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, level)
        local resourceLoadingLevelFactory = AllBinary.getInstance(ResourceLoadingLevelFactory)
        if level == AllBinary.getLevel(resourceLoadingLevelFactory.LOAD_TOUCH)
            return true
        else
            return AllBinary.isLoadingLevel(this, level)
        end
end


function isFeature(this::TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory)
        if !AllBinary.isDefault(AllBinary.getInstance(Features), AllBinary.getInstance(OpenGLFeatureFactory).OPENGL)
            return true
        else
            return false
        end
end

