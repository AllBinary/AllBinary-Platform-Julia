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

# extends TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory <: JObject
    TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory() = new()
end


function initFieldsTouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory(this::TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory)
    nothing
end


function initTouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory(this::TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory)
        initTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory(this, "OpenGL TouchButton Animations")
        nothing
end

function newTouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory()
    this = TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory()
    initTouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory(this)
    this
end


function init(this::TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory, level)
        AllBinary.initImageCache(this, AllBinary.getInstance(OpenGLImageCacheFactory), level)
        nothing
end


function isFeature(this::TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory)
        if AllBinary.isDefault(AllBinary.getInstance(Features), AllBinary.getInstance(OpenGLFeatureFactory).OPENGL)
            return true
        else
            return false
        end
end

