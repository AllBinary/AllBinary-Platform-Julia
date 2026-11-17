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
# package org.allbinary.bounds

# extends LayerBounds: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct RectangleLayerBounds <: JObject
    RectangleLayerBounds() = new()
end


function initFieldsRectangleLayerBounds(this::RectangleLayerBounds)
    nothing
end


function initRectangleLayerBounds(this::RectangleLayerBounds, rectangle)
        initLayerBounds(this, rectangle)
        nothing
end

function newRectangleLayerBounds(rectangle)
    this = RectangleLayerBounds()
    initRectangleLayerBounds(this, rectangle)
    this
end


function visit(this::RectangleLayerBounds, boundsVisitorInterface)
        if AllBinary.getX(boundsVisitorInterface) > AllBinary.getMaxX(this.rectangle)
            AllBinary.maxX(boundsVisitorInterface)
        end
        if AllBinary.getY(boundsVisitorInterface) > AllBinary.getMaxY(this.rectangle)
            AllBinary.maxY(boundsVisitorInterface)
        end
        if AllBinary.getX(boundsVisitorInterface) < AllBinary.getX(AllBinary.getPoint(this.rectangle))
            AllBinary.minX(boundsVisitorInterface)
        end
        if AllBinary.getY(boundsVisitorInterface) < AllBinary.getY(AllBinary.getPoint(this.rectangle))
            AllBinary.minY(boundsVisitorInterface)
        end
        nothing
end

