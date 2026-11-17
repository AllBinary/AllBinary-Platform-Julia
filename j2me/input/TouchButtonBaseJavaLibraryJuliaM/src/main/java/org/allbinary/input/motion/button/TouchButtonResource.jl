#=
  
  To change this license header, choose License Headers in Project Properties. 
  To change this template file, choose Tools | Templates 
  and open the template in the editor.  
=#
# Generated Code Do Not Modify
# package org.allbinary.input.motion.button

mutable struct TouchButtonResource <: JObject
    RESOURCE::Any
    HINT::Any
    TouchButtonResource() = new()
end


function initFieldsTouchButtonResource(this::TouchButtonResource)
    this.RESOURCE = nothing
    this.HINT = nothing
    
    
    nothing
end


function initTouchButtonResource(this::TouchButtonResource, resource, hint)
        initFieldsTouchButtonResource(this)
        this.RESOURCE = resource
        this.HINT = hint
        nothing
end

function newTouchButtonResource(resource, hint)
    this = TouchButtonResource()
    initTouchButtonResource(this, resource, hint)
    this
end

