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
# package org.allbinary.graphics.opengles

mutable struct OpenGLOptions <: JObject
    OpenGLOptions() = new()
end


function initFieldsOpenGLOptions(this::OpenGLOptions)
    nothing
end

function initOpenGLOptions(this::OpenGLOptions)
    initFieldsOpenGLOptions(this)
end

function newOpenGLOptions()
    this = OpenGLOptions()
    initOpenGLOptions(this)
    this
end


function init(this::OpenGLOptions)
        local openGLFeatureFactory = AllBinary.getInstance(OpenGLFeatureFactory)
        if AllBinary.isFeature(AllBinary.getInstance(Features), openGLFeatureFactory.OPENGL_OPTIONS)
            local openGLMultipleList = newBasicArrayListD()
            AllBinary.add(openGLMultipleList, openGLFeatureFactory.OPENGL)
            AllBinary.add(AllBinary.getMultipleInstance(GameFeatureChoiceGroups), "OpenGL (Complete Restart)", openGLMultipleList)
            local openGLVersionSelectorMultipleList = newBasicArrayListD()
            AllBinary.add(openGLVersionSelectorMultipleList, openGLFeatureFactory.OPENGL_AUTO_SELECT)
            AllBinary.add(openGLVersionSelectorMultipleList, openGLFeatureFactory.OPENGL_MINIMUM)
            AllBinary.add(AllBinary.getExclusiveInstance(GameFeatureChoiceGroups), "OpenGL Version Selector", openGLVersionSelectorMultipleList)
            local openGLImageColorMultipleList = newBasicArrayListD()
            AllBinary.add(openGLImageColorMultipleList, openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444)
            AllBinary.add(openGLImageColorMultipleList, openGLFeatureFactory.IMAGE_COLOR_DEPTH_8888)
            AllBinary.add(AllBinary.getExclusiveInstance(GameFeatureChoiceGroups), "OpenGL Image Color RGBA", openGLImageColorMultipleList)
        end
        nothing
end

