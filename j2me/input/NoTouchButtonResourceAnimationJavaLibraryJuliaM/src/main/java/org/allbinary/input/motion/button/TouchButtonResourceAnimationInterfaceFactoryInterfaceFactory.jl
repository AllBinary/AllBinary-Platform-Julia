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

