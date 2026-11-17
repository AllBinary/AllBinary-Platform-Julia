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

mutable struct DataOutputStreamFactory <: JObject
    DataOutputStreamFactory() = new()
end

const DataOutputStreamFactory_instanceValue = Ref{Any}(nothing)
const DataOutputStreamFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{DataOutputStreamFactory})
    if !DataOutputStreamFactory_instanceSet[]
        DataOutputStreamFactory_instanceSet[] = true
        DataOutputStreamFactory_instanceValue[] = newDataOutputStreamFactory()
    end
    DataOutputStreamFactory_instanceValue[]
end
function staticSet_instance(::Type{DataOutputStreamFactory}, value)
    DataOutputStreamFactory_instanceSet[] = true
    DataOutputStreamFactory_instanceValue[] = value
end

function initFieldsDataOutputStreamFactory(this::DataOutputStreamFactory)
    nothing
end

function initDataOutputStreamFactory(this::DataOutputStreamFactory)
    initFieldsDataOutputStreamFactory(this)
end

function newDataOutputStreamFactory()
    this = DataOutputStreamFactory()
    initDataOutputStreamFactory(this)
    this
end


function getInstance(::Type{DataOutputStreamFactory})
        return staticGet_instance(DataOutputStreamFactory)
end


function getInstanceForAbFile(this::DataOutputStreamFactory, file)
        local idFileOutputStream = AllBinary.createFromAbFile(AbFileOutputStream, file)
        local idOutData = newAbDataOutputStream(idFileOutputStream)
        return idOutData
end


function getInstance(this::DataOutputStreamFactory, filePath, fileName)
        local fileStreamFactory = AllBinary.getInstance(FileStreamFactory)
        local fileOutputStream = AllBinary.getFileOutputStreamInstance(fileStreamFactory, filePath, fileName)
        local idOutData = newAbDataOutputStream(fileOutputStream)
        return idOutData
end

