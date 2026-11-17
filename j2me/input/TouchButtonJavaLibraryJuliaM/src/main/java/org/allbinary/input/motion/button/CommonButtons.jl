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
# package org.allbinary.input.motion.button

mutable struct CommonButtons <: JObject
    STANDARD_BUTTON_SIZE::Int32
    NORMAL_BUTTON::Any
    LARGE_BUTTON::Any
    CommonButtons() = new()
end

const CommonButtons_instanceValue = Ref{Any}(nothing)
const CommonButtons_instanceSet = Ref(false)
function staticGet_instance(::Type{CommonButtons})
    if !CommonButtons_instanceSet[]
        CommonButtons_instanceSet[] = true
        CommonButtons_instanceValue[] = newCommonButtons()
    end
    CommonButtons_instanceValue[]
end
function staticSet_instance(::Type{CommonButtons}, value)
    CommonButtons_instanceSet[] = true
    CommonButtons_instanceValue[] = value
end

function initFieldsCommonButtons(this::CommonButtons)
    this.STANDARD_BUTTON_SIZE = Int32(0)
    this.NORMAL_BUTTON = nothing
    this.LARGE_BUTTON = nothing
    
    
    
    nothing
end


function getInstance(::Type{CommonButtons})
        return staticGet_instance(CommonButtons)
end


function initCommonButtons(this::CommonButtons)
        initFieldsCommonButtons(this)
        local displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
        local commonButtonSize::Int32 = Int32(128)
        while commonButtonSize > Int32(64)
            local totalColumns::Int32 = AllBinary.getLastWidth(displayInfo) ÷ commonButtonSize
            local totalRows::Int32 = AllBinary.getLastHeight(displayInfo) ÷ commonButtonSize
            local max::Int32 = totalColumns
            if totalRows > max
                max = totalRows
            end
            if max > Int32(9)
                break
            end
            commonButtonSize = commonButtonSize >> Int32(1)
        end
        this.STANDARD_BUTTON_SIZE = commonButtonSize
        this.NORMAL_BUTTON = newRectangle(AllBinary.getInstance(PointFactory).ZERO_ZERO, this.STANDARD_BUTTON_SIZE, this.STANDARD_BUTTON_SIZE)
        this.LARGE_BUTTON = newRectangle(AllBinary.getInstance(PointFactory).ZERO_ZERO, this.STANDARD_BUTTON_SIZE << Int32(1), this.STANDARD_BUTTON_SIZE << Int32(1))
        nothing
end

function newCommonButtons()
    this = CommonButtons()
    initCommonButtons(this)
    this
end

