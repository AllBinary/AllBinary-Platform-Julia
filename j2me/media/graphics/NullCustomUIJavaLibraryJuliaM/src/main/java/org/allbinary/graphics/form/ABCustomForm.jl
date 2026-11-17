# Generated Code Do Not Modify
# package org.allbinary.graphics.form

# extends CustomScreen: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ABCustomForm <: JObject
    logUtil::Any
    commonStrings::Any
    ABCustomForm() = new()
end


function initFieldsABCustomForm(this::ABCustomForm)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    nothing
end


function initABCustomForm(this::ABCustomForm, title, items, backgroundBasicColor, foregroundBasicColor)
        initCustomScreen(this)
        initFieldsABCustomForm(this)
        nothing
        nothing
end

function newABCustomForm(title, items, backgroundBasicColor, foregroundBasicColor)
    this = ABCustomForm()
    initABCustomForm(this, title, items, backgroundBasicColor, foregroundBasicColor)
    this
end


function getAllitems(this::ABCustomForm)
        return jNewArray(Any, Int32(0), nothing)
end


function size(this::ABCustomForm)
        return Int32(0)
end


function setSelectedIndex(this::ABCustomForm, index)
        nothing
        nothing
end


function getSelectedIndex(this::ABCustomForm)
        return Int32(0)
end


function deleteAll(this::ABCustomForm)
        nothing
        nothing
end


function delete(this::ABCustomForm, itemNum)
        nothing
        nothing
end


function append(this::ABCustomForm, item)
        return -Int32(1)
end


function insert(this::ABCustomForm, itemNum, item)
        nothing
        nothing
end


function set(this::ABCustomForm, itemNum, item)
        nothing
        nothing
end


function get(this::ABCustomForm, itemNum)
        return AllBinary.getNullInstance(ABCustomItem)
end


function getWidth(this::ABCustomForm)
        throw(jNewException("RuntimeException", ""))
end


function paint(this::ABCustomForm, graphics)
        nothing
        nothing
end


function getTitle(this::ABCustomForm)
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end

