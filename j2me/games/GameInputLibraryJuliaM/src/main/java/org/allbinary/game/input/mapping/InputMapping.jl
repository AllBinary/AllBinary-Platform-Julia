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
# package org.allbinary.game.input.mapping

mutable struct InputMapping <: JObject
    logUtil::Any
    commonStrings::Any
    hashtable::Any
    mappedList::Any
    InputMapping() = new()
end


function initFieldsInputMapping(this::InputMapping)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.hashtable = nothing
    this.mappedList = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.hashtable = AllBinary.createHashtable(AllBinary.getInstance(StdUtil))
    this.mappedList = newBasicArrayListD()
    nothing
end


function initInputMapping(this::InputMapping)
        initFieldsInputMapping(this)
        nothing
        nothing
end

function newInputMapping()
    this = InputMapping()
    initInputMapping(this)
    this
end


function getTotalMapped(this::InputMapping)
        return AllBinary.size(this.hashtable)
end


function isDefaultNew(this::InputMapping)
        return false
end


function getDefault(this::InputMapping)
        return AllBinary.getNullInstance(InputToGameKeyMapping)
end


function removeAll(this::InputMapping)
        AllBinary.clear(this.hashtable)
        AllBinary.clear(this.mappedList)
        nothing
end


function remove(this::InputMapping, input, mappedToInput)
        local stringBuffer = newStringMaker()
        local stringUtil = AllBinary.getInstance(StringUtil)
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonLabels).START_LABEL)
        AllBinary.append(stringBuffer, AllBinary.toString(stringUtil, input))
        AllBinary.append(stringBuffer, " == ")
        AllBinary.append(stringBuffer, AllBinary.toString(stringUtil, mappedToInput))
        AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, "InputMapping::remove")
        local list = AllBinary.getMappedInput(this, input)
        if AllBinary.contains(list, mappedToInput)
            AllBinary.remove(list, mappedToInput)
            AllBinary.remove(this.mappedList, mappedToInput)
            AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
            AllBinary.append(stringBuffer, "Removed: ")
            AllBinary.append(stringBuffer, AllBinary.toString(stringUtil, input))
            AllBinary.append(stringBuffer, " == ")
            AllBinary.append(stringBuffer, AllBinary.toString(stringUtil, mappedToInput))
            AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, "InputMapping::remove")
        else
            AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
            AllBinary.append(stringBuffer, "Not Deleted: ")
            AllBinary.append(stringBuffer, AllBinary.toString(stringUtil, input))
            AllBinary.append(stringBuffer, " == ")
            AllBinary.append(stringBuffer, AllBinary.toString(stringUtil, mappedToInput))
            AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, "InputMapping::remove")
        end
        nothing
end


function addMapping(this::InputMapping, inputToGameKeyMapping)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
        nothing
end


function add(this::InputMapping, input, mappedToInput)
        local list = AllBinary.getMappedInput(this, input)
        if !AllBinary.contains(list, mappedToInput)
            AllBinary.add(list, mappedToInput)
            AllBinary.add(this.mappedList, mappedToInput)
        end
        nothing
end


function isMapped(this::InputMapping, input)
        return AllBinary.contains(this.mappedList, input)
end


function getMappedInput(this::InputMapping, id)
        local mappingInputCanBeNullList = AllBinary.get(this.hashtable, id)
        if mappingInputCanBeNullList === nothing
            local list = newBasicArrayListD()
            AllBinary.put(this.hashtable, id, list)
            return list
        end
        return (mappingInputCanBeNullList)
end


function getHashtable(this::InputMapping)
        return this.hashtable
end

