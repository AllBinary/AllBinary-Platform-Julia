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
# package org.allbinary.graphics.form

mutable struct FormTypeFactory <: JObject
    UNK::Any
    NULL_FORM_TYPE::Any
    TEMP_HORIZONTAL_FORM::Any
    HORIZONTAL_FORM::Any
    VERTICAL_CENTER_FORM::Any
    FormTypeFactory() = new()
end

const FormTypeFactory_instanceValue = Ref{Any}(nothing)
const FormTypeFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{FormTypeFactory})
    if !FormTypeFactory_instanceSet[]
        FormTypeFactory_instanceSet[] = true
        FormTypeFactory_instanceValue[] = newFormTypeFactory()
    end
    FormTypeFactory_instanceValue[]
end
function staticSet_instance(::Type{FormTypeFactory}, value)
    FormTypeFactory_instanceSet[] = true
    FormTypeFactory_instanceValue[] = value
end

function initFieldsFormTypeFactory(this::FormTypeFactory)
    this.UNK = nothing
    this.NULL_FORM_TYPE = nothing
    this.TEMP_HORIZONTAL_FORM = nothing
    this.HORIZONTAL_FORM = nothing
    this.VERTICAL_CENTER_FORM = nothing
    this.UNK = "Unknown FormType"
    this.NULL_FORM_TYPE = newFormType(AllBinary.getInstance(StringUtil).NULL_STRING)
    this.TEMP_HORIZONTAL_FORM = newFormType("TempHorizontal")
    this.HORIZONTAL_FORM = newFormType("Horizontal")
    this.VERTICAL_CENTER_FORM = newFormType("Vertical")
    nothing
end

function initFormTypeFactory(this::FormTypeFactory)
    initFieldsFormTypeFactory(this)
end

function newFormTypeFactory()
    this = FormTypeFactory()
    initFormTypeFactory(this)
    this
end


function getInstance(::Type{FormTypeFactory})
        return staticGet_instance(FormTypeFactory)
end


function getFormType(this::FormTypeFactory)
        local displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
        local formType = nothing
        if AllBinary.isPortrait(displayInfo)
            formType = this.VERTICAL_CENTER_FORM
        else
            formType = this.HORIZONTAL_FORM
        end
        return formType
end

