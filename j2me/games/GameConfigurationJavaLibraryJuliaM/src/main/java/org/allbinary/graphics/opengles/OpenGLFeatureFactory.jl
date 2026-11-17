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

mutable struct OpenGLFeatureFactory <: JObject
    OPENGL_OPTIONS::Any
    OPENGL::Any
    OPENGL_SURFACE_VIEW::Any
    OPENGL_2D::Any
    OPENGL_3D::Any
    OPENGL_2D_AND_3D::Any
    OPENGL_AUTO_SELECT::Any
    OPENGL_MINIMUM::Any
    OPENGL_AS_GAME_THREAD::Any
    OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS::Any
    IMAGE_COLOR_DEPTH_4444::Any
    IMAGE_COLOR_DEPTH_8888::Any
    IMAGE_COLOR_DEPTH_565::Any
    OPENGL_COLOR_DEPTH_4444::Any
    OPENGL_COLOR_DEPTH_8888::Any
    OPENGL_COLOR_DEPTH_565::Any
    OPENGL_DRAW_TEXTURE::Any
    OPENGL_VERTEX_BUFFER_OBJECT::Any
    OPENGL_SIMPLE_OBJECT3D_PROCESSOR::Any
    OPENGL_COMPLEX_OBJECT3D_PROCESSOR::Any
    OPENGL_SIMPLE_TEXTURE_PROCESSOR::Any
    OPENGL_COMPLEX_TEXTURE_PROCESSOR::Any
    OpenGLFeatureFactory() = new()
end

const OpenGLFeatureFactory_instanceValue = Ref{Any}(nothing)
const OpenGLFeatureFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{OpenGLFeatureFactory})
    if !OpenGLFeatureFactory_instanceSet[]
        OpenGLFeatureFactory_instanceSet[] = true
        OpenGLFeatureFactory_instanceValue[] = newOpenGLFeatureFactory()
    end
    OpenGLFeatureFactory_instanceValue[]
end
function staticSet_instance(::Type{OpenGLFeatureFactory}, value)
    OpenGLFeatureFactory_instanceSet[] = true
    OpenGLFeatureFactory_instanceValue[] = value
end

function initFieldsOpenGLFeatureFactory(this::OpenGLFeatureFactory)
    this.OPENGL_OPTIONS = nothing
    this.OPENGL = nothing
    this.OPENGL_SURFACE_VIEW = nothing
    this.OPENGL_2D = nothing
    this.OPENGL_3D = nothing
    this.OPENGL_2D_AND_3D = nothing
    this.OPENGL_AUTO_SELECT = nothing
    this.OPENGL_MINIMUM = nothing
    this.OPENGL_AS_GAME_THREAD = nothing
    this.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS = nothing
    this.IMAGE_COLOR_DEPTH_4444 = nothing
    this.IMAGE_COLOR_DEPTH_8888 = nothing
    this.IMAGE_COLOR_DEPTH_565 = nothing
    this.OPENGL_COLOR_DEPTH_4444 = nothing
    this.OPENGL_COLOR_DEPTH_8888 = nothing
    this.OPENGL_COLOR_DEPTH_565 = nothing
    this.OPENGL_DRAW_TEXTURE = nothing
    this.OPENGL_VERTEX_BUFFER_OBJECT = nothing
    this.OPENGL_SIMPLE_OBJECT3D_PROCESSOR = nothing
    this.OPENGL_COMPLEX_OBJECT3D_PROCESSOR = nothing
    this.OPENGL_SIMPLE_TEXTURE_PROCESSOR = nothing
    this.OPENGL_COMPLEX_TEXTURE_PROCESSOR = nothing
    this.OPENGL_OPTIONS = newOpenGLFeature("OpenGL Options")
    this.OPENGL = newOpenGLFeature("OpenGL")
    this.OPENGL_SURFACE_VIEW = newOpenGLFeature("GLSurfaceView")
    this.OPENGL_2D = newOpenGLFeature("OpenGL 2D")
    this.OPENGL_3D = newOpenGLFeature("OpenGL 3D")
    this.OPENGL_2D_AND_3D = newOpenGLFeature("OpenGL 2D/3D")
    this.OPENGL_AUTO_SELECT = newOpenGLFeature("Auto Select")
    this.OPENGL_MINIMUM = newOpenGLFeature("Minimum")
    this.OPENGL_AS_GAME_THREAD = newOpenGLFeature("As game thread")
    this.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS = newOpenGLFeature("As different threads")
    this.IMAGE_COLOR_DEPTH_4444 = newOpenGLFeature("4444")
    this.IMAGE_COLOR_DEPTH_8888 = newOpenGLFeature("8888")
    this.IMAGE_COLOR_DEPTH_565 = newOpenGLFeature("565")
    this.OPENGL_COLOR_DEPTH_4444 = newOpenGLFeature("4444")
    this.OPENGL_COLOR_DEPTH_8888 = newOpenGLFeature("8888")
    this.OPENGL_COLOR_DEPTH_565 = newOpenGLFeature("565")
    this.OPENGL_DRAW_TEXTURE = newOpenGLFeature("GL_OES_draw_texture")
    this.OPENGL_VERTEX_BUFFER_OBJECT = newOpenGLFeature("vertex_buffer_object")
    this.OPENGL_SIMPLE_OBJECT3D_PROCESSOR = newOpenGLFeature("Simple Object3d Processor")
    this.OPENGL_COMPLEX_OBJECT3D_PROCESSOR = newOpenGLFeature("Complex Object3d Processor")
    this.OPENGL_SIMPLE_TEXTURE_PROCESSOR = newOpenGLFeature("Simple Texture Processor")
    this.OPENGL_COMPLEX_TEXTURE_PROCESSOR = newOpenGLFeature("Complex Texture Processor")
    nothing
end


function getInstance(::Type{OpenGLFeatureFactory})
        return staticGet_instance(OpenGLFeatureFactory)
end


function initOpenGLFeatureFactory(this::OpenGLFeatureFactory)
        initFieldsOpenGLFeatureFactory(this)
        nothing
        nothing
end

function newOpenGLFeatureFactory()
    this = OpenGLFeatureFactory()
    initOpenGLFeatureFactory(this)
    this
end

