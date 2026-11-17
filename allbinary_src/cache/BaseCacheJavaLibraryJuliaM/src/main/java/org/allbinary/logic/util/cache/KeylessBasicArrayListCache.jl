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
# package org.allbinary.logic.util.cache

# extends IndexedBasicArrayListCache: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct KeylessBasicArrayListCache <: JObject
    logUtil::Any
    basicArrayListUtil::Any
    KeylessBasicArrayListCache() = new()
end


function initFieldsKeylessBasicArrayListCache(this::KeylessBasicArrayListCache)
    this.logUtil = nothing
    this.basicArrayListUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.basicArrayListUtil = AllBinary.getInstance(BasicArrayListUtil)
    nothing
end


function initKeylessBasicArrayListCache(this::KeylessBasicArrayListCache)
        initIndexedBasicArrayListCache(this)
        initFieldsKeylessBasicArrayListCache(this)
        nothing
        nothing
end

function newKeylessBasicArrayListCache()
    this = KeylessBasicArrayListCache()
    initKeylessBasicArrayListCache(this)
    this
end


function get(this::KeylessBasicArrayListCache)
        try
            if this.index >= AllBinary.size(this.list)
                AllBinary.addDefault(this)
            end
            local list = (AllBinary.getAt(this, (let old = this.index; this.index += 1; old end)))
            return list
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.GET, e)
            return AllBinary.getImmutableInstance(this.basicArrayListUtil)
        end
end


function clear(this::KeylessBasicArrayListCache)
        AllBinary.clear(this)
        local basicArrayList = nothing
        let
            local index::Int32 = AllBinary.size(this.list) - Int32(1)
            while index >= Int32(0)
            try
            basicArrayList = ((this.list.objectArray[index + 1]))
            AllBinary.clear(basicArrayList)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end


function log(this::KeylessBasicArrayListCache)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "S: ")
        AllBinary.appendint(stringBuffer, AllBinary.size(this.list))
        local S_LABEL = " s: "
        local basicArrayList = nothing
        let
            local index::Int32 = AllBinary.size(this.list) - Int32(1)
            while index >= Int32(0)
            try
            AllBinary.append(stringBuffer, S_LABEL)
            basicArrayList = ((this.list.objectArray[index + 1]))
            AllBinary.appendint(stringBuffer, AllBinary.size(basicArrayList))
            finally
                index -= Int32(1)
            end
            end
        end
        return AllBinary.toString(stringBuffer)
end

