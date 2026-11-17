# Generated Code Do Not Modify
# package org.allbinary.graphics.form

# extends CustomDisplayable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CustomScreen <: JObject
    CustomScreen() = new()
end


function initFieldsCustomScreen(this::CustomScreen)
    nothing
end

function initCustomScreen(this::CustomScreen)
    initCustomDisplayable(this)
    initFieldsCustomScreen(this)
end

function newCustomScreen()
    this = CustomScreen()
    initCustomScreen(this)
    this
end

