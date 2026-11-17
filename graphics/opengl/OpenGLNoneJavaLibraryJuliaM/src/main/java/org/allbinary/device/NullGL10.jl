#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.device

mutable struct NullGL10 <: JObject
    NullGL10() = new()
end

const NullGL10_NULL_GL10Value = Ref{Any}(nothing)
const NullGL10_NULL_GL10Set = Ref(false)
function staticGet_NULL_GL10(::Type{NullGL10})
    if !NullGL10_NULL_GL10Set[]
        NullGL10_NULL_GL10Set[] = true
        NullGL10_NULL_GL10Value[] = newNullGL10()
    end
    NullGL10_NULL_GL10Value[]
end
function staticSet_NULL_GL10(::Type{NullGL10}, value)
    NullGL10_NULL_GL10Set[] = true
    NullGL10_NULL_GL10Value[] = value
end

function initFieldsNullGL10(this::NullGL10)
    nothing
end

function initNullGL10(this::NullGL10)
    initFieldsNullGL10(this)
end

function newNullGL10()
    this = NullGL10()
    initNullGL10(this)
    this
end


function glActiveTexture(this::NullGL10, texture)
        return
        nothing
end


function glAlphaFunc(this::NullGL10, func, ref)
        return
        nothing
end


function glBindTexture(this::NullGL10, target, texture)
        return
        nothing
end


function glBlendFunc(this::NullGL10, sfactor, dfactor)
        return
        nothing
end


function glClear(this::NullGL10, mask)
        return
        nothing
end


function glClearColor(this::NullGL10, red, green, blue, alpha)
        return
        nothing
end


function glClearDepthf(this::NullGL10, depth)
        return
        nothing
end


function glClearStencil(this::NullGL10, s)
        return
        nothing
end


function glClientActiveTexture(this::NullGL10, texture)
        return
        nothing
end


function glColor4f(this::NullGL10, red, green, blue, alpha)
        return
        nothing
end


function glColorMask(this::NullGL10, red, green, blue, alpha)
        return
        nothing
end


function glColorPointer(this::NullGL10, size, type_, stride, pointer)
        return
        nothing
end


function glCompressedTexImage2D(this::NullGL10, target, level, internalformat, width, height, border, imageSize, data)
        return
        nothing
end


function glCompressedTexSubImage2D(this::NullGL10, target, level, xoffset, yoffset, width, height, format, imageSize, data)
        return
        nothing
end


function glCopyTexImage2D(this::NullGL10, target, level, internalformat, x, y, width, height, border)
        return
        nothing
end


function glCopyTexSubImage2D(this::NullGL10, target, level, xoffset, yoffset, x, y, width, height)
        return
        nothing
end


function glCullFace(this::NullGL10, mode)
        return
        nothing
end


function glDeleteTextures(this::NullGL10, n, textures, offset)
        return
        nothing
end


function glDeleteTextures(this::NullGL10, n, textures)
        return
        nothing
end


function glDepthFunc(this::NullGL10, func)
        return
        nothing
end


function glDepthMask(this::NullGL10, flag)
        return
        nothing
end


function glDepthRangef(this::NullGL10, zNear, zFar)
        return
        nothing
end


function glDisable(this::NullGL10, cap)
        return
        nothing
end


function glDisableClientState(this::NullGL10, array)
        return
        nothing
end


function glDrawArrays(this::NullGL10, mode, first, count)
        return
        nothing
end


function glDrawElements(this::NullGL10, mode, count, type_, indices)
        return
        nothing
end


function glEnable(this::NullGL10, cap)
        return
        nothing
end


function glEnableClientState(this::NullGL10, array)
        return
        nothing
end


function glFinish(this::NullGL10)
        return
        nothing
end


function glFlush(this::NullGL10)
        return
        nothing
end


function glFogf(this::NullGL10, pname, param)
        return
        nothing
end


function glFogfv(this::NullGL10, pname, params, offset)
        return
        nothing
end


function glFogfv(this::NullGL10, pname, params)
        return
        nothing
end


function glFrontFace(this::NullGL10, mode)
        return
        nothing
end


function glFrustumf(this::NullGL10, left, right, bottom, top, zNear, zFar)
        return
        nothing
end


function glGenTextures(this::NullGL10, n, textures, offset)
        return
        nothing
end


function glGenTextures(this::NullGL10, n, textures)
        return
        nothing
end


function glGetError(this::NullGL10)
        return Int32(0)
end


function glGetIntegerv(this::NullGL10, pname, params, offset)
        return
        nothing
end


function glGetIntegerv(this::NullGL10, pname, params)
        return
        nothing
end


function glGetString(this::NullGL10, name)
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end


function glHint(this::NullGL10, target, mode)
        return
        nothing
end


function glLightModelf(this::NullGL10, pname, param)
        return
        nothing
end


function glLightModelfv(this::NullGL10, pname, params, offset)
        return
        nothing
end


function glLightModelfv(this::NullGL10, pname, params)
        return
        nothing
end


function glLightf(this::NullGL10, light, pname, param)
        return
        nothing
end


function glLightfv(this::NullGL10, light, pname, params, offset)
        return
        nothing
end


function glLightfv(this::NullGL10, light, pname, params)
        return
        nothing
end


function glLineWidth(this::NullGL10, width)
        return
        nothing
end


function glLoadIdentity(this::NullGL10)
        return
        nothing
end


function glLoadMatrixf(this::NullGL10, m, offset)
        return
        nothing
end


function glLoadMatrixf(this::NullGL10, m)
        return
        nothing
end


function glLogicOp(this::NullGL10, opcode)
        return
        nothing
end


function glMaterialf(this::NullGL10, face, pname, param)
        return
        nothing
end


function glMaterialfv(this::NullGL10, face, pname, params, offset)
        return
        nothing
end


function glMaterialfv(this::NullGL10, face, pname, params)
        return
        nothing
end


function glMatrixMode(this::NullGL10, mode)
        return
        nothing
end


function glMultMatrixf(this::NullGL10, m, offset)
        return
        nothing
end


function glMultMatrixf(this::NullGL10, m)
        return
        nothing
end


function glMultiTexCoord4f(this::NullGL10, target, s, t, r, q)
        return
        nothing
end


function glNormal3f(this::NullGL10, nx, ny, nz)
        return
        nothing
end


function glNormalPointer(this::NullGL10, type_, stride, pointer)
        return
        nothing
end


function glOrthof(this::NullGL10, left, right, bottom, top, zNear, zFar)
        return
        nothing
end


function glPixelStorei(this::NullGL10, pname, param)
        return
        nothing
end


function glPointSize(this::NullGL10, size)
        return
        nothing
end


function glPolygonOffset(this::NullGL10, factor, units)
        return
        nothing
end


function glPopMatrix(this::NullGL10)
        return
        nothing
end


function glPushMatrix(this::NullGL10)
        return
        nothing
end


function glReadPixels(this::NullGL10, x, y, width, height, format, type_, pixels)
        return
        nothing
end


function glRotatef(this::NullGL10, angle, x, y, z)
        return
        nothing
end


function glRotatex(this::NullGL10, angle, x, y, z)
        return
        nothing
end


function glSampleCoverage(this::NullGL10, value, invert)
        return
        nothing
end


function glScalef(this::NullGL10, x, y, z)
        return
        nothing
end


function glScalex(this::NullGL10, x, y, z)
        return
        nothing
end


function glScissor(this::NullGL10, x, y, width, height)
        return
        nothing
end


function glShadeModel(this::NullGL10, mode)
        return
        nothing
end


function glStencilFunc(this::NullGL10, func, ref, mask)
        return
        nothing
end


function glStencilMask(this::NullGL10, mask)
        return
        nothing
end


function glStencilOp(this::NullGL10, fail, zfail, zpass)
        return
        nothing
end


function glTexCoordPointer(this::NullGL10, size, type_, stride, pointer)
        return
        nothing
end


function glTexEnvf(this::NullGL10, target, pname, param)
        return
        nothing
end


function glTexEnvfv(this::NullGL10, target, pname, params, offset)
        return
        nothing
end


function glTexEnvfv(this::NullGL10, target, pname, params)
        return
        nothing
end


function glTexImage2D(this::NullGL10, target, level, internalformat, width, height, border, format, type_, pixels)
        return
        nothing
end


function glTexParameterf(this::NullGL10, target, pname, param)
        return
        nothing
end


function glTexParameteri(this::NullGL10, target, pname, param)
        return
        nothing
end


function glTexSubImage2D(this::NullGL10, target, level, xoffset, yoffset, width, height, format, type_, pixels)
        return
        nothing
end


function glTranslatef(this::NullGL10, x, y, z)
        return
        nothing
end


function glVertexPointer(this::NullGL10, size, type_, stride, pointer)
        return
        nothing
end


function glViewport(this::NullGL10, x, y, width, height)
        return
        nothing
end


function glBegin(this::NullGL10, i)
        return
        nothing
end


function glEnd(this::NullGL10)
        return
        nothing
end


function glVertex3f(this::NullGL10, f, f2, f3)
        return
        nothing
end


function glPolygonMode(this::NullGL10, i, i1)
        return
        nothing
end

