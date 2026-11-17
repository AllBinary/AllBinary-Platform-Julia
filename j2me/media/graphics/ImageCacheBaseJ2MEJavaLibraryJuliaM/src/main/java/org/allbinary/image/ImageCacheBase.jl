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

mutable struct ImageCacheBase <: JObject
    logUtil::Any
    imageFactory::Any
    hashtable::Any
    SIZE::Int32
    widths::Any
    heights::Any
    listOfList::Any
    availableListOfList::Any
    volume::Int32
    nextIndex::Int32
    ImageCacheBase() = new()
end


function initFieldsImageCacheBase(this::ImageCacheBase)
    this.logUtil = nothing
    this.imageFactory = nothing
    this.hashtable = nothing
    this.SIZE = Int32(0)
    this.widths = nothing
    this.heights = nothing
    this.listOfList = nothing
    this.availableListOfList = nothing
    this.volume = Int32(0)
    this.nextIndex = Int32(0)
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.imageFactory = AllBinary.getInstance(ImageFactory)
    this.hashtable = AllBinary.createHashtable(AllBinary.getInstance(StdUtil))
    this.SIZE = Int32(128)
    this.widths = jNewArray(Int32, this.SIZE, Int32(0))
    this.heights = jNewArray(Int32, this.SIZE, Int32(0))
    this.listOfList = jNewArray(Any, this.SIZE, nothing)
    this.availableListOfList = jNewArray(Any, this.SIZE, nothing)
    this.volume = Int32(0)
    this.nextIndex = Int32(0)
    nothing
end


function initImageCacheBase(this::ImageCacheBase)
        initFieldsImageCacheBase(this)
        let
            local index::Int32 = Int32(Base.length(this.listOfList)) - Int32(1)
            while index >= Int32(0)
            try
            this.listOfList[index + 1] = newBasicArrayListD()
            finally
                index -= Int32(1)
            end
            end
        end
        let
            index = Int32(Base.length(this.availableListOfList)) - Int32(1)
            while index >= Int32(0)
            try
            this.availableListOfList[index + 1] = newBasicArrayListD()
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end

function newImageCacheBase()
    this = ImageCacheBase()
    initImageCacheBase(this)
    this
end


function getImage(this::ImageCacheBase, resourceId)
        local imageCanBeNull = AllBinary.get(this.hashtable, resourceId)
        if imageCanBeNull === nothing
            return staticGet_NULL_IMAGE(NullImage)
        end
        return (imageCanBeNull)
end


function releaseAll(this::ImageCacheBase)
        let
            local index::Int32 = Int32(Base.length(this.listOfList)) - Int32(1)
            while index >= Int32(0)
            try
            AllBinary.clear(this.availableListOfList[index + 1])
            AllBinary.addAllList(this.availableListOfList[index + 1], this.listOfList[index + 1])
            finally
                index -= Int32(1)
            end
            end
        end
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "ImageCache: "), AllBinary.toString(this))), this, "releaseAll")
        nothing
end


function getIndexWH(this::ImageCacheBase, width, height)
        local foundIndex::Int32 = -Int32(1)
        local size::Int32 = Int32(Base.length(this.widths))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            if this.widths[index + 1] == width && this.heights[index + 1] == height
                foundIndex = index
                return foundIndex
            end
            finally
                index += Int32(1)
            end
            end
        end
        return foundIndex
end


function getFromAvailable(this::ImageCacheBase, foundIndex, width, height)
        if foundIndex != -Int32(1)
            if AllBinary.size(this.availableListOfList[foundIndex + 1]) > Int32(0)
                local list = this.availableListOfList[foundIndex + 1]
                return (AllBinary.removeAt(list, AllBinary.size(list) - Int32(1)))
            end
        end
        return staticGet_NULL_IMAGE(NullImage)
end


function get(this::ImageCacheBase, caller, width, height)
        throw(jNewException("RuntimeException", ""))
end


function getWithKey(this::ImageCacheBase, key)
        throw(jNewException("RuntimeException", ""))
end


function createImage(this::ImageCacheBase, caller, width, height)
        return AllBinary.createImage(this.imageFactory, caller, width, height)
end


function createImageFromInputStream(this::ImageCacheBase, key, inputStream)
        return AllBinary.createImageFromInputStream(this.imageFactory, key, inputStream)
end


function toString(this::ImageCacheBase)
        local stringBuffer = newStringMaker()
        let
            local index::Int32 = this.nextIndex - Int32(1)
            while index >= Int32(0)
            try
            local width::Int32 = this.widths[index + 1]
            local height::Int32 = this.heights[index + 1]
            local total::Int32 = AllBinary.size(this.listOfList[index + 1])
            local totalAvailable::Int32 = AllBinary.size(this.availableListOfList[index + 1])
            AllBinary.append(stringBuffer, " w: ")
            AllBinary.appendint(stringBuffer, width)
            AllBinary.append(stringBuffer, " h: ")
            AllBinary.appendint(stringBuffer, height)
            AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
            AllBinary.append(stringBuffer, AllBinary.getInstance(CommonLabels).TOTAL_LABEL)
            AllBinary.appendint(stringBuffer, total)
            AllBinary.append(stringBuffer, " available: ")
            AllBinary.appendint(stringBuffer, totalAvailable)
            finally
                index -= Int32(1)
            end
            end
        end
        return AllBinary.toString(stringBuffer)
end


function getHashtableP(this::ImageCacheBase)
        return this.hashtable
end


function init(this::ImageCacheBase, image)
        nothing
        nothing
end


function initProgress(this::ImageCacheBase)
        nothing
        nothing
end

