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
# package org.allbinary.game.input

mutable struct TestInputExample <: JObject
    testValue::Int32
    TestInputExample() = new()
end


function initFieldsTestInputExample(this::TestInputExample)
    this.testValue = Int32(0)
    this.testValue = Int32(0)
    nothing
end

function initTestInputExample(this::TestInputExample)
    initFieldsTestInputExample(this)
end

function newTestInputExample()
    this = TestInputExample()
    initTestInputExample(this)
    this
end


function up(this::TestInputExample)
        nothing
        nothing
end


function down(this::TestInputExample)
        nothing
        nothing
end


function left(this::TestInputExample)
        this.testValue += Int32(1)
        nothing
end


function right(this::TestInputExample)
        this.testValue -= Int32(1)
        nothing
end


function strafeLeft(this::TestInputExample)
        nothing
        nothing
end


function strafeRight(this::TestInputExample)
        nothing
        nothing
end


function paint(this::TestInputExample, graphics)
        nothing
        nothing
end


function paintThreed(this::TestInputExample, graphics)
        nothing
        nothing
end

