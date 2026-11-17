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
# package org.allbinary.image

# extends ImageCacheBase: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ImageCache <: JObject
    commonStrings::Any
    tsUtil::Any
    ImageCache() = new()
end

const ImageCache_NULL_IMAGE_CACHEValue = Ref{Any}(nothing)
const ImageCache_NULL_IMAGE_CACHESet = Ref(false)
function staticGet_NULL_IMAGE_CACHE(::Type{ImageCache})
    if !ImageCache_NULL_IMAGE_CACHESet[]
        ImageCache_NULL_IMAGE_CACHESet[] = true
        ImageCache_NULL_IMAGE_CACHEValue[] = newImageCache()
    end
    ImageCache_NULL_IMAGE_CACHEValue[]
end
function staticSet_NULL_IMAGE_CACHE(::Type{ImageCache}, value)
    ImageCache_NULL_IMAGE_CACHESet[] = true
    ImageCache_NULL_IMAGE_CACHEValue[] = value
end

function initFieldsImageCache(this::ImageCache)
    this.commonStrings = nothing
    this.tsUtil = nothing
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.tsUtil = AllBinary.getInstance(TsUtil)
    nothing
end


function initImageCache(this::ImageCache)
        initImageCacheBase(this)
        initFieldsImageCache(this)
        nothing
        nothing
end

function newImageCache()
    this = ImageCache()
    initImageCache(this)
    this
end


function addListener(this::ImageCache, renderer)
        nothing
        nothing
end


function getIndex(this::ImageCache, key)
        local gdResources = AllBinary.getInstance(GDResources)
        local resourceStringArray = gdResources.resourceStringArray
        local size::Int32 = Int32(Base.length(resourceStringArray))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            if resourceStringArray[index + 1] === key
                return index
            end
            finally
                index += Int32(1)
            end
            end
        end
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "unable to find key: "), AllBinary.toString(AllBinary.getInstance(StringUtil), key))), this, this.commonStrings.RUN)
        throw(jNewException("RuntimeException", ""))
end


function get(this::ImageCache, caller, width, height)
        local foundIndex::Int32 = AllBinary.getIndexWH(this, width, height)
        local image = AllBinary.getFromAvailable(this, foundIndex, width, height)
        if image === staticGet_NULL_IMAGE(NullImage)
            this.volume += width * height
            if this.volume > Int32(32000)
                AllBinary.gc(this.tsUtil)
                this.volume = Int32(0)
            end
            image = AllBinary.createImage(this, caller, width, height)
            local widths = this.widths
            if this.nextIndex > Int32(Base.length(widths)) - Int32(1)
                if foundIndex == -Int32(1)
                    foundIndex = this.nextIndex
                    widths[this.nextIndex + 1] = width
                    this.heights[this.nextIndex + 1] = height
                    this.nextIndex += 1
                end
                AllBinary.add(this.listOfList[foundIndex + 1], image)
            end
        end
        return image
end


function getWithKey(this::ImageCache, key)
        local image = AllBinary.getImage(this, key)
        if image === staticGet_NULL_IMAGE(NullImage)
            local resourceUtil = AllBinary.getInstance(ResourceUtil)
            local resourceInputStream = AllBinary.getResourceAsStream(resourceUtil, (key))
            if resourceInputStream === nothing
                throw(jNewException("RuntimeException", AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Image resource is not available for key: "), AllBinary.toString(AllBinary.getInstance(StringUtil), key)))))
            end
            try
                image = AllBinary.createImageFromInputStream(this, key, resourceInputStream)
            catch e
                AllBinary.put(this.logUtil, "Exception: Trying Again After GC", this, this.commonStrings.GET, e)
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "InputStream: "), AllBinary.toString(AllBinary.getInstance(StringUtil), resourceInputStream))), this, this.commonStrings.GET)
                AllBinary.gc(this.tsUtil)
                AllBinary.gc(this.tsUtil)
                AllBinary.putF(this.logUtil, AllBinary.getInfo(Memory), this, this.commonStrings.GET)
                AllBinary.sleep(Thread, Int32(100))
                image = AllBinary.createImageFromInputStream(this, key, resourceInputStream)
            end
            if AllBinary.isHTML(J2MEUtil)
                nothing
            else
                AllBinary.close(resourceInputStream)
            end
            AllBinary.put(this.hashtable, key, image)
        end
        return image
end


function loadImageForAnimation(this::ImageCache)
        nothing
        nothing
end


function progressEnded(this::ImageCache)
        nothing
        nothing
end


function runTask(this::ImageCache)
        nothing
        nothing
end


function isLazy(this::ImageCache)
        return false
end

