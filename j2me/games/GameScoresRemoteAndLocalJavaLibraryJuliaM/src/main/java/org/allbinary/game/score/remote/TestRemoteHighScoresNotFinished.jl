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
# package org.allbinary.game.score.remote

mutable struct TestRemoteHighScoresNotFinished <: JObject
    TestRemoteHighScoresNotFinished() = new()
end

const TestRemoteHighScoresNotFinished_PATHValue = Ref{Any}(nothing)
const TestRemoteHighScoresNotFinished_PATHSet = Ref(false)
function staticGet_PATH(::Type{TestRemoteHighScoresNotFinished})
    if !TestRemoteHighScoresNotFinished_PATHSet[]
        TestRemoteHighScoresNotFinished_PATHSet[] = true
        TestRemoteHighScoresNotFinished_PATHValue[] = "G:\\mnt\\bc\\mydev\\work\\allbinary_src\\licensing\\data\\"
    end
    TestRemoteHighScoresNotFinished_PATHValue[]
end
function staticSet_PATH(::Type{TestRemoteHighScoresNotFinished}, value)
    TestRemoteHighScoresNotFinished_PATHSet[] = true
    TestRemoteHighScoresNotFinished_PATHValue[] = value
end

function initFieldsTestRemoteHighScoresNotFinished(this::TestRemoteHighScoresNotFinished)
    nothing
end


function initTestRemoteHighScoresNotFinished(this::TestRemoteHighScoresNotFinished)
        initFieldsTestRemoteHighScoresNotFinished(this)
        nothing
        nothing
end

function newTestRemoteHighScoresNotFinished()
    this = TestRemoteHighScoresNotFinished()
    initTestRemoteHighScoresNotFinished(this)
    this
end


function main(::Type{TestRemoteHighScoresNotFinished}, args)
        newTestRemoteHighScoresNotFinished()
        nothing
end

