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
# package org.allbinary.logic.io

mutable struct BufferedLineReader <: JObject
    tmpIn::Any
    BufferedLineReader() = new()
end


function initFieldsBufferedLineReader(this::BufferedLineReader)
    this.tmpIn = nothing
    
    nothing
end


function initBufferedLineReader(this::BufferedLineReader, file)
        initFieldsBufferedLineReader(this)
        this.tmpIn = newBufferedReader(newFileReader(AllBinary.get(AbFileNativeUtil, file)))
        nothing
end

function newBufferedLineReader(file)
    this = BufferedLineReader()
    initBufferedLineReader(this, file)
    this
end


function readUpToLines(this::BufferedLineReader, readAheadIndex)
        nothing
        nothing
end


function readLine(this::BufferedLineReader)
        return AllBinary.readLine(this.tmpIn)
end


function ready(this::BufferedLineReader)
        return AllBinary.ready(this.tmpIn)
end


function getSize(this::BufferedLineReader)
        return Int64(0)
end


function getCurrent(this::BufferedLineReader)
        return Int32(0)
end

