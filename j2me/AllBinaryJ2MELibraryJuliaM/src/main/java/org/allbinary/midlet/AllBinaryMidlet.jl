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
# package org.allbinary.midlet

# extends MIDlet: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AllBinaryMidlet <: JObject
    logUtil::Any
    commonStrings::Any
    SET_DISPLAY::Any
    SETTING_::Any
    _DISPLAY_::Any
    SETTING_NO_TITLE::Any
    hashtable::Any
    midletDestroyed::Bool
    AllBinaryMidlet() = new()
end

const AllBinaryMidlet_NULL_ALLBINARY_MIDLETValue = Ref{Any}(nothing)
const AllBinaryMidlet_NULL_ALLBINARY_MIDLETSet = Ref(false)
function staticGet_NULL_ALLBINARY_MIDLET(::Type{AllBinaryMidlet})
    if !AllBinaryMidlet_NULL_ALLBINARY_MIDLETSet[]
        AllBinaryMidlet_NULL_ALLBINARY_MIDLETSet[] = true
        AllBinaryMidlet_NULL_ALLBINARY_MIDLETValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    AllBinaryMidlet_NULL_ALLBINARY_MIDLETValue[]
end
function staticSet_NULL_ALLBINARY_MIDLET(::Type{AllBinaryMidlet}, value)
    AllBinaryMidlet_NULL_ALLBINARY_MIDLETSet[] = true
    AllBinaryMidlet_NULL_ALLBINARY_MIDLETValue[] = value
end

function initFieldsAllBinaryMidlet(this::AllBinaryMidlet)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.SET_DISPLAY = nothing
    this.SETTING_ = nothing
    this._DISPLAY_ = nothing
    this.SETTING_NO_TITLE = nothing
    this.hashtable = nothing
    this.midletDestroyed = false
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.SET_DISPLAY = "setDisplay"
    this.SETTING_ = "Setting: "
    this._DISPLAY_ = " Display: "
    this.SETTING_NO_TITLE = "Setting: No Title, Display: "
    this.hashtable = AllBinary.createHashtable(AllBinary.getInstance(StdUtil))
    this.midletDestroyed = false
    nothing
end


function getNullInstance(::Type{AllBinaryMidlet})
        if staticGet_NULL_ALLBINARY_MIDLET(AllBinaryMidlet) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_NULL_ALLBINARY_MIDLET(AllBinaryMidlet, newAllBinaryMidlet())
        end
        return (staticGet_NULL_ALLBINARY_MIDLET(AllBinaryMidlet))
end


function initAllBinaryMidlet(this::AllBinaryMidlet)
        initMIDlet(this)
        initFieldsAllBinaryMidlet(this)
        AllBinary.putF(this.logUtil, this.commonStrings.CONSTRUCTOR, this, "AllBinaryMidlet::AllBinaryMidlet")
        nothing
end

function newAllBinaryMidlet()
    this = AllBinaryMidlet()
    initAllBinaryMidlet(this)
    this
end


function setDisplay(this::AllBinaryMidlet, newDisplay)
        local title = AllBinary.getInstance(StringUtil).EMPTY_STRING
        if newDisplay !== staticGet_NULL_CANVAS(NullCanvas)
            title = AllBinary.getTitle(newDisplay)
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(newStringMaker(), this.SETTING_), title), this._DISPLAY_), AllBinary.toString(AllBinary.getInstance(StringUtil), newDisplay))), this, this.SET_DISPLAY)
        end
        local display = AllBinary.getDisplay(this)
        AllBinary.setCurrent(display, newDisplay)
        nothing
end


function getDisplay(this::AllBinaryMidlet)
        return AllBinary.getDisplay(Display, this)
end


function getCurrentDisplayable(this::AllBinaryMidlet)
        return AllBinary.getCurrent(AllBinary.getDisplay(Display, this))
end


function setDestroyed(this::AllBinaryMidlet, destroyed)
        this.midletDestroyed = destroyed
        nothing
end


function isDestroyed(this::AllBinaryMidlet)
        return this.midletDestroyed
end


function startApp(this::AllBinaryMidlet)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function pauseApp(this::AllBinaryMidlet)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function destroyAppInRunnable(this::AllBinaryMidlet, unconditional, isProgress)
        nothing
        nothing
end


function destroyApp(this::AllBinaryMidlet, unconditional)
        local METHOD_NAME = "AllBinaryMidlet::destroyApp"
        try
            AllBinary.putF(this.logUtil, this.commonStrings.START, this, METHOD_NAME)
            AllBinary.put(PreLogUtil, AllBinary.getInfo(Memory), this, METHOD_NAME)
            AllBinary.setDestroyed(this, true)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, METHOD_NAME, e)
        end
        nothing
end


function setStartStateHashtable(this::AllBinaryMidlet, hashtable)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonLabels).START_LABEL), AllBinary.toString(AllBinary.getInstance(StringUtil), hashtable))), this, "setStartStateHashtable")
        this.hashtable = hashtable
        nothing
end


function getStartStateHashtable(this::AllBinaryMidlet)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonLabels).START_LABEL), AllBinary.toString(AllBinary.getInstance(StringUtil), this.hashtable))), this, "getStartStateHashtable")
        return this.hashtable
end


function getCurrentStateHashtable(this::AllBinaryMidlet)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, "getStateHashtable")
        return AllBinary.getInstance(StdUtil).NULL_TABLE
end


function commandAction(this::AllBinaryMidlet, command, displayable)
        nothing
        nothing
end

