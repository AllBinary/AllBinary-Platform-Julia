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
# package org.allbinary.business.advertisement

mutable struct Advertisements <: JObject
    bannerList::Any
    pageList::Any
    myRandomFactory::Any
    Advertisements() = new()
end


function initFieldsAdvertisements(this::Advertisements)
    this.bannerList = nothing
    this.pageList = nothing
    this.myRandomFactory = nothing
    this.bannerList = newBasicArrayListD()
    this.pageList = newBasicArrayListD()
    this.myRandomFactory = AllBinary.getInstance(MyRandomFactory)
    nothing
end

function initAdvertisements(this::Advertisements)
    initFieldsAdvertisements(this)
end

function newAdvertisements()
    this = Advertisements()
    initAdvertisements(this)
    this
end


function addPage(this::Advertisements, advertisementProcessorInterface)
        if !AllBinary.contains(this.pageList, advertisementProcessorInterface)
            AllBinary.add(this.pageList, advertisementProcessorInterface)
        end
        nothing
end


function startRandomPage(this::Advertisements)
        local size::Int32 = AllBinary.size(this.pageList)
        if size > Int32(0)
            local random::Int32 = AllBinary.getAbsoluteNextInt(this.myRandomFactory, size)
            local advertisementProcessorInterface = (this.pageList.objectArray[random + 1])
            AllBinary.start(advertisementProcessorInterface)
        end
        nothing
end


function processRandomPage(this::Advertisements)
        if AllBinary.isLocked(AllBinary.getInstance(LockedUtil))
            local size::Int32 = AllBinary.size(this.pageList)
            if size > Int32(0)
                local random::Int32 = AllBinary.getAbsoluteNextInt(this.myRandomFactory, size)
                local advertisementProcessorInterface = (this.pageList.objectArray[random + 1])
                AllBinary.process(advertisementProcessorInterface)
            end
        end
        nothing
end


function stopAllPage(this::Advertisements)
        let
            local index::Int32 = AllBinary.size(this.pageList)
            while (index -= Int32(1)) >= Int32(0)
            try
            local advertisementProcessorInterface = (this.pageList.objectArray[index + 1])
            AllBinary.stop(advertisementProcessorInterface)
            finally
            end
            end
        end
        nothing
end


function addBanner(this::Advertisements, advertisementProcessorInterface)
        if !AllBinary.contains(this.bannerList, advertisementProcessorInterface)
            AllBinary.add(this.bannerList, advertisementProcessorInterface)
        end
        nothing
end


function startAll(this::Advertisements)
        let
            local index::Int32 = AllBinary.size(this.bannerList)
            while (index -= Int32(1)) >= Int32(0)
            try
            local advertisementProcessorInterface = (this.bannerList.objectArray[index + 1])
            AllBinary.start(advertisementProcessorInterface)
            finally
            end
            end
        end
        nothing
end


function stopAllBanner(this::Advertisements)
        let
            local index::Int32 = AllBinary.size(this.bannerList)
            while (index -= Int32(1)) >= Int32(0)
            try
            local advertisementProcessorInterface = (this.bannerList.objectArray[index + 1])
            AllBinary.stop(advertisementProcessorInterface)
            finally
            end
            end
        end
        nothing
end


function getBanner(this::Advertisements, index)
        local advertisementProcessorInterface = (this.bannerList.objectArray[index + 1])
        return advertisementProcessorInterface
end


function stopAll(this::Advertisements)
        AllBinary.stopAllBanner(this)
        AllBinary.stopAllPage(this)
        nothing
end

