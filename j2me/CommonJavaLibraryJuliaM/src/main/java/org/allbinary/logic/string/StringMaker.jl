# Generated Code Do Not Modify
# package org.allbinary.logic.string

mutable struct StringMaker <: JObject
    charArray::Any
    currentLength::Int32
    StringMaker() = new()
end


function initFieldsStringMaker(this::StringMaker)
    this.charArray = nothing
    this.currentLength = Int32(0)
    
    this.currentLength = Int32(0)
    nothing
end


function initStringMaker(this::StringMaker)
        initFieldsStringMaker(this)
        this.charArray = jNewArray(UInt16, Int32(20), UInt16(0))
        nothing
end

function newStringMaker()
    this = StringMaker()
    initStringMaker(this)
    this
end


function append(this::StringMaker, string)
        local stringLength::Int32 = jLength(string)
        AllBinary.ensureCapacity(this, this.currentLength + stringLength)
        jGetChars(string, Int32(0), stringLength, this.charArray, this.currentLength)
        this.currentLength += stringLength
        return this
end


function appendchar(this::StringMaker, c)
        AllBinary.ensureCapacity(this, this.currentLength + Int32(1))
        this.charArray[(let old = this.currentLength; this.currentLength += Int32(1); old end) + 1] = c
        return this
end


function appendCharArray(this::StringMaker, charArray, start, end_)
        AllBinary.ensureCapacity(this, this.currentLength + (end_ - start))
        let
            local index::Int32 = start
            while index < end_
            try
            this.charArray[(let old = this.currentLength; this.currentLength += Int32(1); old end) + 1] = charArray[index + 1]
            finally
                index += Int32(1)
            end
            end
        end
        return this
end


function appendbyte(this::StringMaker, b)
        AllBinary.append(this, jstr(b))
        return this
end


function appendshort(this::StringMaker, b)
        AllBinary.append(this, jstr(b))
        return this
end


function appendint(this::StringMaker, i)
        AllBinary.append(this, jstr(i))
        return this
end


function appendlong(this::StringMaker, l)
        AllBinary.append(this, jstr(l))
        return this
end


function appendfloat(this::StringMaker, f)
        AllBinary.append(this, jstr(f))
        return this
end


function appendboolean(this::StringMaker, bool)
        if bool
            AllBinary.ensureCapacity(this, this.currentLength + Int32(4))
            this.charArray[(let old = this.currentLength; this.currentLength += Int32(1); old end) + 1] = UInt16('t')
            this.charArray[(let old = this.currentLength; this.currentLength += Int32(1); old end) + 1] = UInt16('r')
            this.charArray[(let old = this.currentLength; this.currentLength += Int32(1); old end) + 1] = UInt16('u')
            this.charArray[(let old = this.currentLength; this.currentLength += Int32(1); old end) + 1] = UInt16('e')
        else
            AllBinary.ensureCapacity(this, this.currentLength + Int32(5))
            this.charArray[(let old = this.currentLength; this.currentLength += Int32(1); old end) + 1] = UInt16('f')
            this.charArray[(let old = this.currentLength; this.currentLength += Int32(1); old end) + 1] = UInt16('a')
            this.charArray[(let old = this.currentLength; this.currentLength += Int32(1); old end) + 1] = UInt16('l')
            this.charArray[(let old = this.currentLength; this.currentLength += Int32(1); old end) + 1] = UInt16('s')
            this.charArray[(let old = this.currentLength; this.currentLength += Int32(1); old end) + 1] = UInt16('e')
        end
        return this
end


function ensureCapacity(this::StringMaker, minSize)
        local oldCapacity::Int32 = Int32(Base.length(this.charArray))
        if minSize > oldCapacity
            local newCapacity::Int32 = oldCapacity * Int32(3)
            if newCapacity < minSize
                newCapacity = minSize
            end
            local copy = jNewArray(UInt16, newCapacity, UInt16(0))
            local min::Int32 = AllBinary.min(this, Int32(Base.length(this.charArray)), newCapacity)
            jArraycopy(this.charArray, Int32(0), copy, Int32(0), min)
            this.charArray = copy
        end
        nothing
end


function min(this::StringMaker, value, value2)
        return ((value <= value2) ? value : value2)
end


function delete(this::StringMaker, start, end_)
        this.currentLength -= (end_ - start)
        return this
end


function length(this::StringMaker)
        return this.currentLength
end


function toString(this::StringMaker)
        return jFromChars(this.charArray, Int32(0), this.currentLength)
end

