# Generated Code Do Not Modify
# package org.allbinary.util

#This is a very fast and simple resizable list.
mutable struct BasicArrayList <: JObject
    arrayUtil::Any
    objectArray::Any
    currentIndex::Int32
    BasicArrayList() = new()
end

const BasicArrayList_SIZEValue = Ref{Any}(nothing)
const BasicArrayList_SIZESet = Ref(false)
function staticGet_SIZE(::Type{BasicArrayList})
    if !BasicArrayList_SIZESet[]
        BasicArrayList_SIZESet[] = true
        BasicArrayList_SIZEValue[] = ", Size: "
    end
    BasicArrayList_SIZEValue[]
end
function staticSet_SIZE(::Type{BasicArrayList}, value)
    BasicArrayList_SIZESet[] = true
    BasicArrayList_SIZEValue[] = value
end

function initFieldsBasicArrayList(this::BasicArrayList)
    this.arrayUtil = nothing
    this.objectArray = nothing
    this.currentIndex = Int32(0)
    this.arrayUtil = AllBinary.getInstance(ArrayUtil)
    
    this.currentIndex = Int32(0)
    nothing
end


function initBasicArrayList(this::BasicArrayList, objectArray)
        initFieldsBasicArrayList(this)
        this.objectArray = objectArray
        nothing
end

function newBasicArrayList(objectArray)
    this = BasicArrayList()
    initBasicArrayList(this, objectArray)
    this
end


function addAt(this::BasicArrayList, index, element)
        if index > this.currentIndex || index < Int32(0)
            local stringBuffer = newStringMaker()
            AllBinary.append(stringBuffer, AllBinary.getInstance(CommonLabels).INDEX_LABEL)
            AllBinary.appendint(stringBuffer, index)
            AllBinary.append(stringBuffer, staticGet_SIZE(BasicArrayList))
            AllBinary.appendint(stringBuffer, this.currentIndex)
            throw(jNewException("IndexOutOfBoundsException", AllBinary.toString(stringBuffer)))
        end
        AllBinary.ensureCapacity(this, this.currentIndex + Int32(1))
        jArraycopy(this.objectArray, index, this.objectArray, index + Int32(1), this.currentIndex - index)
        this.objectArray[index + 1] = element
        this.currentIndex += Int32(1)
        nothing
end


function add(this::BasicArrayList, anyType)
        AllBinary.ensureCapacity(this, this.currentIndex + Int32(1))
        this.objectArray[(let old = this.currentIndex; this.currentIndex += Int32(1); old end) + 1] = anyType
        return true
end


function removeAt(this::BasicArrayList, index)
        if index >= this.currentIndex
            local stringBuffer = newStringMaker()
            AllBinary.append(stringBuffer, AllBinary.getInstance(CommonLabels).INDEX_LABEL)
            AllBinary.appendint(stringBuffer, index)
            AllBinary.append(stringBuffer, staticGet_SIZE(BasicArrayList))
            AllBinary.appendint(stringBuffer, this.currentIndex)
            throw(jNewException("IndexOutOfBoundsException", AllBinary.toString(stringBuffer)))
        end
        local oldValue = this.objectArray[index + 1]
        local numMoved::Int32 = this.currentIndex - index - Int32(1)
        if numMoved > Int32(0)
            jArraycopy(this.objectArray, index + Int32(1), this.objectArray, index, numMoved)
        end
        this.objectArray[(this.currentIndex -= Int32(1)) + 1] = nothing
        return oldValue
end


function remove(this::BasicArrayList, anyType)
        if anyType === nothing
            let
                index = Int32(0)
                while index < this.currentIndex
                try
                if this.objectArray[index + 1] === nothing
                    numMoved = this.currentIndex - index - Int32(1)
                    if numMoved > Int32(0)
                        jArraycopy(this.objectArray, index + Int32(1), this.objectArray, index, numMoved)
                    end
                    this.objectArray[(this.currentIndex -= Int32(1)) + 1] = nothing
                    return true
                end
                finally
                    index += Int32(1)
                end
                end
            end
        else
            let
                local index::Int32 = Int32(0)
                while index < this.currentIndex
                try
                if anyType === this.objectArray[index + 1] || AllBinary.equals(anyType, this.objectArray[index + 1])
                    local numMoved::Int32 = this.currentIndex - index - Int32(1)
                    if numMoved > Int32(0)
                        jArraycopy(this.objectArray, index + Int32(1), this.objectArray, index, numMoved)
                    end
                    this.objectArray[(this.currentIndex -= Int32(1)) + 1] = nothing
                    return true
                end
                finally
                    index += Int32(1)
                end
                end
            end
        end
        return false
end


function removeAll2(this::BasicArrayList, list)
        local result::Bool = true
        local size::Int32 = AllBinary.size(list)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            if AllBinary.remove(this, AllBinary.get(list, index))
                nothing
            else
                result = false
            end
            finally
                index += Int32(1)
            end
            end
        end
        return result
end


function addAll2(this::BasicArrayList, list)
        AllBinary.ensureCapacity(this, this.currentIndex + list.currentIndex)
        local listSize::Int32 = list.currentIndex
        let
            local index::Int32 = Int32(0)
            while index < listSize
            try
            this.objectArray[(let old = this.currentIndex; this.currentIndex += Int32(1); old end) + 1] = list.objectArray[index + 1]
            finally
                index += Int32(1)
            end
            end
        end
        return true
end


function addAllList(this::BasicArrayList, list)
        local newObjectArray = AllBinary.toArray(list)
        return AllBinary.addAll(this, newObjectArray)
end


function addAll(this::BasicArrayList, newObjectArray)
        local numSize::Int32 = Int32(Base.length(newObjectArray))
        AllBinary.ensureCapacity(this, this.currentIndex + numSize)
        jArraycopy(newObjectArray, Int32(0), this.objectArray, this.currentIndex, numSize)
        this.currentIndex += numSize
        return numSize != Int32(0)
end


function ensureCapacity(this::BasicArrayList, minSize)
        local oldCapacity::Int32 = Int32(Base.length(this.objectArray))
        if minSize > oldCapacity
            local newCapacity::Int32 = ((oldCapacity * Int32(3)) >> Int32(1)) + Int32(1)
            if newCapacity < minSize
                newCapacity = minSize
            end
            this.objectArray = AllBinary.copyOf(this.arrayUtil, this.objectArray, newCapacity)
        end
        nothing
end


function trimToSize(this::BasicArrayList)
        local oldCapacity::Int32 = Int32(Base.length(this.objectArray))
        if this.currentIndex < oldCapacity
            this.objectArray = AllBinary.copyOf(this.arrayUtil, this.objectArray, this.currentIndex)
        end
        nothing
end


function indexOf(this::BasicArrayList, anyType)
        if anyType === nothing
            let
                i = Int32(0)
                while i < this.currentIndex
                try
                if this.objectArray[i + 1] === nothing
                    return i
                end
                finally
                    i += Int32(1)
                end
                end
            end
        else
            let
                local i::Int32 = Int32(0)
                while i < this.currentIndex
                try
                if AllBinary.equals(anyType, this.objectArray[i + 1])
                    return i
                end
                finally
                    i += Int32(1)
                end
                end
            end
        end
        return -Int32(1)
end


function lastIndexOf(this::BasicArrayList, anyType)
        if anyType === nothing
            let
                i = this.currentIndex - Int32(1)
                while i >= Int32(0)
                try
                if this.objectArray[i + 1] === nothing
                    return i
                end
                finally
                    i -= Int32(1)
                end
                end
            end
        else
            let
                local i::Int32 = this.currentIndex - Int32(1)
                while i >= Int32(0)
                try
                if AllBinary.equals(anyType, this.objectArray[i + 1])
                    return i
                end
                finally
                    i -= Int32(1)
                end
                end
            end
        end
        return -Int32(1)
end


function get(this::BasicArrayList, index)
        if index >= this.currentIndex
            local stringBuffer = newStringMaker()
            AllBinary.append(stringBuffer, AllBinary.getInstance(CommonLabels).INDEX_LABEL)
            AllBinary.appendint(stringBuffer, index)
            AllBinary.append(stringBuffer, staticGet_SIZE(BasicArrayList))
            AllBinary.appendint(stringBuffer, this.currentIndex)
            throw(jNewException("IndexOutOfBoundsException", AllBinary.toString(stringBuffer)))
        end
        return this.objectArray[index + 1]
end


function set(this::BasicArrayList, index, element)
        if index >= this.currentIndex
            local stringBuffer = newStringMaker()
            AllBinary.append(stringBuffer, AllBinary.getInstance(CommonLabels).INDEX_LABEL)
            AllBinary.appendint(stringBuffer, index)
            AllBinary.append(stringBuffer, staticGet_SIZE(BasicArrayList))
            AllBinary.appendint(stringBuffer, this.currentIndex)
            throw(jNewException("IndexOutOfBoundsException", AllBinary.toString(stringBuffer)))
        end
        local oldValue = this.objectArray[index + 1]
        this.objectArray[index + 1] = element
        return oldValue
end


function clear(this::BasicArrayList)
        let
            local i::Int32 = Int32(0)
            while i < this.currentIndex
            try
            this.objectArray[i + 1] = nothing
            finally
                i += Int32(1)
            end
            end
        end
        this.currentIndex = Int32(0)
        nothing
end


function size(this::BasicArrayList)
        return this.currentIndex
end


function isEmpty(this::BasicArrayList)
        return this.currentIndex == Int32(0)
end


function contains(this::BasicArrayList, anyType)
        return AllBinary.indexOf(this, anyType) >= Int32(0)
end


function toArray(this::BasicArrayList)
        return AllBinary.copyOf(this.arrayUtil, this.objectArray, this.currentIndex)
end


function toArrayType(this::BasicArrayList, objectArray)
        if Int32(Base.length(objectArray)) < this.currentIndex
            return AllBinary.copyOfType(this.arrayUtil, this.objectArray, this.currentIndex, jClassName(objectArray))
        end
        jArraycopy(this.objectArray, Int32(0), objectArray, Int32(0), this.currentIndex)
        if Int32(Base.length(objectArray)) > this.currentIndex
            objectArray[this.currentIndex + 1] = nothing
        end
        return objectArray
end


function clone(this::BasicArrayList)
        local size::Int32 = AllBinary.size(this)
        local list = newBasicArrayListS(size)
        local anyType = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            anyType = this.objectArray[index + 1]
            AllBinary.add(list, anyType)
            finally
                index += Int32(1)
            end
            end
        end
        return list
end


function toString(this::BasicArrayList)
        local COMMA_SEP = AllBinary.getInstance(CommonSeps).COMMA_SEP
        local stringBuffer = newStringMaker()
        let
            local index::Int32 = Int32(0)
            while index < this.currentIndex
            try
            AllBinary.append(stringBuffer, AllBinary.toString(this.objectArray[index + 1]))
            AllBinary.append(stringBuffer, COMMA_SEP)
            finally
                index += Int32(1)
            end
            end
        end
        return AllBinary.toString(stringBuffer)
end

