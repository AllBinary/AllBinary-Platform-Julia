#=
 
  AllBinary Open License Version 1
  Copyright (c) 2022 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
  
=#
# Generated Code Do Not Modify
# package org.allbinary.graphics.displayable.screen

mutable struct AboutPaintableFactory <: JObject
    paintableArray::Any
    AboutPaintableFactory() = new()
end

const AboutPaintableFactory_instanceValue = Ref{Any}(nothing)
const AboutPaintableFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{AboutPaintableFactory})
    if !AboutPaintableFactory_instanceSet[]
        AboutPaintableFactory_instanceSet[] = true
        AboutPaintableFactory_instanceValue[] = newAboutPaintableFactory()
    end
    AboutPaintableFactory_instanceValue[]
end
function staticSet_instance(::Type{AboutPaintableFactory}, value)
    AboutPaintableFactory_instanceSet[] = true
    AboutPaintableFactory_instanceValue[] = value
end

function initFieldsAboutPaintableFactory(this::AboutPaintableFactory)
    this.paintableArray = nothing
    this.paintableArray = Any[AllBinary.getInstance(NullPaintable)]
    nothing
end


function getInstance(::Type{AboutPaintableFactory})
        return staticGet_instance(AboutPaintableFactory)
end


function initAboutPaintableFactory(this::AboutPaintableFactory)
        initFieldsAboutPaintableFactory(this)
        local INFO = Any["Built with the", "AllBinary Platform", AllBinary.getInstance(StringUtil).EMPTY_STRING, "Comments or Questions:", "support@allbinary.com"]
        local DEVELOPERS = Any["Developed By:", "Travis Berthelot"]
        this.paintableArray = AllBinary.getPaintableArrayInstance(AllBinary.getInstance(AboutPaintable, INFO, DEVELOPERS))
        nothing
end

function newAboutPaintableFactory()
    this = AboutPaintableFactory()
    initAboutPaintableFactory(this)
    this
end

