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
# package org.allbinary.data.tree.dom

mutable struct DomData <: JObject
    DomData() = new()
end

const DomData_IDValue = Ref{Any}(nothing)
const DomData_IDSet = Ref(false)
function staticGet_ID(::Type{DomData})
    if !DomData_IDSet[]
        DomData_IDSet[] = true
        DomData_IDValue[] = "id"
    end
    DomData_IDValue[]
end
function staticSet_ID(::Type{DomData}, value)
    DomData_IDSet[] = true
    DomData_IDValue[] = value
end
const DomData_CHILDValue = Ref{Any}(nothing)
const DomData_CHILDSet = Ref(false)
function staticGet_CHILD(::Type{DomData})
    if !DomData_CHILDSet[]
        DomData_CHILDSet[] = true
        DomData_CHILDValue[] = "child"
    end
    DomData_CHILDValue[]
end
function staticSet_CHILD(::Type{DomData}, value)
    DomData_CHILDSet[] = true
    DomData_CHILDValue[] = value
end
const DomData_NAMEValue = Ref{Any}(nothing)
const DomData_NAMESet = Ref(false)
function staticGet_NAME(::Type{DomData})
    if !DomData_NAMESet[]
        DomData_NAMESet[] = true
        DomData_NAMEValue[] = "name"
    end
    DomData_NAMEValue[]
end
function staticSet_NAME(::Type{DomData}, value)
    DomData_NAMESet[] = true
    DomData_NAMEValue[] = value
end
const DomData_VALUEValue = Ref{Any}(nothing)
const DomData_VALUESet = Ref(false)
function staticGet_VALUE(::Type{DomData})
    if !DomData_VALUESet[]
        DomData_VALUESet[] = true
        DomData_VALUEValue[] = "value"
    end
    DomData_VALUEValue[]
end
function staticSet_VALUE(::Type{DomData}, value)
    DomData_VALUESet[] = true
    DomData_VALUEValue[] = value
end
const DomData_INDEXValue = Ref{Any}(nothing)
const DomData_INDEXSet = Ref(false)
function staticGet_INDEX(::Type{DomData})
    if !DomData_INDEXSet[]
        DomData_INDEXSet[] = true
        DomData_INDEXValue[] = "index"
    end
    DomData_INDEXValue[]
end
function staticSet_INDEX(::Type{DomData}, value)
    DomData_INDEXSet[] = true
    DomData_INDEXValue[] = value
end

function initFieldsDomData(this::DomData)
    nothing
end


function initDomData(this::DomData)
        initFieldsDomData(this)
        nothing
        nothing
end

function newDomData()
    this = DomData()
    initDomData(this)
    this
end

