# Generated Code Do Not Modify
# package org.allbinary.animation

# extends IndexedAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct FillAnimation <: JObject
    pixelBuffer::Any
    width::Int32
    height::Int32
    FillAnimation() = new()
end


function initFieldsFillAnimation(this::FillAnimation)
    this.pixelBuffer = nothing
    this.width = Int32(0)
    this.height = Int32(0)
    
    
    
    nothing
end


function initFillAnimation(this::FillAnimation, pixelBuffer, width, height, animationBehavior)
        initIndexedAnimation(this, animationBehavior)
        initFieldsFillAnimation(this)
        this.width = Int32(100)
        this.height = Int32(100)
        this.pixelBuffer = pixelBuffer
        nothing
end

function newFillAnimation(pixelBuffer, width, height, animationBehavior)
    this = FillAnimation()
    initFillAnimation(this, pixelBuffer, width, height, animationBehavior)
    this
end


function setBasicColorP(this::FillAnimation, basicColor)
        local changed::Bool = false
        if AllBinary.getBasicColorP(this) === nothing || AllBinary.intValue(AllBinary.getBasicColorP(this)) != AllBinary.intValue(basicColor)
            changed = true
        end
        AllBinary.setBasicColorP(this, basicColor)
        if changed
            AllBinary.updateModifiers(this)
        end
        nothing
end


function changeBasicColor(this::FillAnimation, basicColor)
        local changed::Bool = false
        if AllBinary.getChangeBasicColor(this) === nothing || AllBinary.intValue(AllBinary.getChangeBasicColor(this)) != AllBinary.intValue(basicColor)
            changed = true
        end
        AllBinary.changeBasicColor(this, basicColor)
        if changed
            AllBinary.updateModifiers(this)
        end
        nothing
end


function setAlpha(this::FillAnimation, alpha)
        local changed::Bool = false
        if this.alphaP != alpha
            changed = true
        end
        AllBinary.setAlpha(this, alpha)
        if changed
            AllBinary.updateModifiers(this)
        end
        nothing
end


function setScale(this::FillAnimation, scaleX, scaleY)
        nothing
        nothing
end


function setMaxScale(this::FillAnimation, maxScaleX, maxScaleY)
        nothing
        nothing
end


function updateModifiers(this::FillAnimation)
        nothing
        nothing
end


function paint(this::FillAnimation, g)
        AllBinary.drawRGB(g, this.pixelBuffer, Int32(0), this.width, Int32(0), Int32(0), this.width, this.height, true)
        nothing
end

