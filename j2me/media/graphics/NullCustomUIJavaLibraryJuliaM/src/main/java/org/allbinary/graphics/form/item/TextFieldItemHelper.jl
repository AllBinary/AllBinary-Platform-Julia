# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

mutable struct TextFieldItemHelper <: JObject
    TextFieldItemHelper() = new()
end


function initFieldsTextFieldItemHelper(this::TextFieldItemHelper)
    nothing
end

function initTextFieldItemHelper(this::TextFieldItemHelper)
    initFieldsTextFieldItemHelper(this)
end

function newTextFieldItemHelper()
    this = TextFieldItemHelper()
    initTextFieldItemHelper(this)
    this
end

