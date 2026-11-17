#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package javax.microedition.lcdui

#PlatformNullImageJavaLibrary
mutable struct PlatformImage <: JObject
    PlatformImage() = new()
end


function initFieldsPlatformImage(this::PlatformImage)
    nothing
end

function initPlatformImage(this::PlatformImage)
    initFieldsPlatformImage(this)
end

function newPlatformImage()
    this = PlatformImage()
    initPlatformImage(this)
    this
end


function getImage(this::PlatformImage, graphicsSurface2)
        return staticGet_NULL_IMAGE(NullImage)
end


function getSurfaceWidth(this::PlatformImage, graphicsSurface2, width)
        return width
end


function getSurfaceHeight(this::PlatformImage, graphicsSurface2, height)
        return height
end


function getWidth(this::PlatformImage, image, width)
        return width
end


function getHeight(this::PlatformImage, image, height)
        return height
end


function getGraphics(this::PlatformImage, graphicsSurface, width, height, image)
        throw(jNewException("RuntimeException", ""))
end


function drawImage(this::PlatformImage, image, x, y, anchor, g2, g)
        nothing
        nothing
end


function drawRegion(this::PlatformImage, image, x_src, y_src, width, height, transform, x_dst, y_dst, anchor, g)
        nothing
        nothing
end


function getRGB(this::PlatformImage, argb, offset, scanlength, x, y, width, height, image)
        nothing
        nothing
end


function setRGB(this::PlatformImage, argb, offset, scanlength, x, y, width, height, image)
        nothing
        nothing
end


function getData(this::PlatformImage, image)
        return AllBinary.getInstance(NullUtil).NULL_INT_ARRAY
end

