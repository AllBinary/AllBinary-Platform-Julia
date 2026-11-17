# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

# extends ABCustomItem: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ABCustomImageItem <: JObject
    yOffset::Int32
    ABCustomImageItem() = new()
end


function initFieldsABCustomImageItem(this::ABCustomImageItem)
    this.yOffset = Int32(0)
    this.yOffset = Int32(0)
    nothing
end


function initABCustomImageItem(this::ABCustomImageItem, label, image, layout, altText, basicColor, yOffset)
        initABCustomItem(this, label, basicColor, basicColor)
        initFieldsABCustomImageItem(this)
        nothing
end

function newABCustomImageItem(label, image, layout, altText, basicColor, yOffset)
    this = ABCustomImageItem()
    initABCustomImageItem(this, label, image, layout, altText, basicColor, yOffset)
    this
end


function getImage(this::ABCustomImageItem)
        return staticGet_NULL_IMAGE(NullImage)
end

