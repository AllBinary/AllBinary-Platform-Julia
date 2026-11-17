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
# package org.allbinary.business.init

mutable struct LicenseInitInfoUtil <: JObject
    logUtil::Any
    stringUtil::Any
    INITFILENAME::Any
    ABOUT::Any
    PRIVACY_POLICY::Any
    filePath::Any
    LicenseInitInfoUtil() = new()
end

const LicenseInitInfoUtil_instanceValue = Ref{Any}(nothing)
const LicenseInitInfoUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{LicenseInitInfoUtil})
    if !LicenseInitInfoUtil_instanceSet[]
        LicenseInitInfoUtil_instanceSet[] = true
        LicenseInitInfoUtil_instanceValue[] = newLicenseInitInfoUtil()
    end
    LicenseInitInfoUtil_instanceValue[]
end
function staticSet_instance(::Type{LicenseInitInfoUtil}, value)
    LicenseInitInfoUtil_instanceSet[] = true
    LicenseInitInfoUtil_instanceValue[] = value
end

function initFieldsLicenseInitInfoUtil(this::LicenseInitInfoUtil)
    this.logUtil = nothing
    this.stringUtil = nothing
    this.INITFILENAME = nothing
    this.ABOUT = nothing
    this.PRIVACY_POLICY = nothing
    this.filePath = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.stringUtil = AllBinary.getInstance(StringUtil)
    this.INITFILENAME = "licenseinitdata.dat"
    this.ABOUT = "about"
    this.PRIVACY_POLICY = "privacy_policy"
    this.filePath = this.stringUtil.EMPTY_STRING
    nothing
end

function initLicenseInitInfoUtil(this::LicenseInitInfoUtil)
    initFieldsLicenseInitInfoUtil(this)
end

function newLicenseInitInfoUtil()
    this = LicenseInitInfoUtil()
    initLicenseInitInfoUtil(this)
    this
end


function getInstance(::Type{LicenseInitInfoUtil})
        return staticGet_instance(LicenseInitInfoUtil)
end


function setFilePath(this::LicenseInitInfoUtil, filePath)
        this.filePath = filePath
        nothing
end


function write(this::LicenseInitInfoUtil, initData)
        if this.filePath == this.stringUtil.EMPTY_STRING
            this.filePath = AllBinary.getMainPath(URLGLOBALS) + AllBinary.getInstance(PATH_GLOBALS).INIT_PATH
        end
        try
            local tsUtil = AllBinary.getInstance(TsUtil)
            local dataOutputStream = AllBinary.getInstance(AllBinary.getInstance(DataOutputStreamFactory), this.filePath, this.INITFILENAME)
            local licenseIdCrypted = AllBinary.getByteArray(tsUtil, AllBinary.encrypt(newWeakCrypt(Int32(1)), AllBinary.getLicenseId(initData)))
            AllBinary.writeUTF(dataOutputStream, AllBinary.encode(DatabaseEncoder, licenseIdCrypted))
            local numberOfLicenseServers::Int32 = AllBinary.getNumberOfServers(initData)
            AllBinary.writeInt(dataOutputStream, numberOfLicenseServers)
            local licenseServerCrypted = nothing
            let
                local index::Int32 = Int32(0)
                while index < numberOfLicenseServers
                try
                licenseServerCrypted = AllBinary.getByteArray(tsUtil, AllBinary.encrypt(newWeakCrypt(Int32(3)), AllBinary.getServer(initData, index)))
                AllBinary.writeUTF(dataOutputStream, AllBinary.encode(DatabaseEncoder, licenseServerCrypted))
                finally
                    index += Int32(1)
                end
                end
            end
        catch e
            AllBinary.put(this.logUtil, jstr("Command Failed: ") * jstr(this.INITFILENAME), this, "write", e)
            AllBinary.delete(AllBinary.getInstance(FileStreamFactory), this.filePath, this.INITFILENAME)
            throw(e)
        end
        nothing
end


function read(this::LicenseInitInfoUtil)
        return AllBinary.readAgain(this, Int32(0))
end


function readAgain(this::LicenseInitInfoUtil, initializeCounter)
        local METHOD_NAME = "readAgain"
        if this.filePath == this.stringUtil.EMPTY_STRING
            this.filePath = AllBinary.getMainPath(URLGLOBALS) + AllBinary.getInstance(PATH_GLOBALS).INIT_PATH
        end
        try
            AllBinary.putF(this.logUtil, jstr("LicenseInitInfo File: ") * jstr(this.INITFILENAME), this, METHOD_NAME)
            local fileStreamFactory = AllBinary.getInstance(FileStreamFactory)
            local iFile = AllBinary.getFileInputStreamInstance(fileStreamFactory, this.filePath, this.INITFILENAME)
            if iFile !== nothing
                local iData = newAbDataInputStream(iFile)
                local initInfo = newLicenseInitInfo()
                local decodedByteArray = AllBinary.decode(DatabaseEncoder, AllBinary.readUTF(iData))
                local licenseIdDecoded = decodedByteArray
                AllBinary.setLicenseId(initInfo, AllBinary.decrypt(newWeakCrypt(Int32(1)), licenseIdDecoded))
                local numberOfLicenseServers::Int32 = AllBinary.readInt(iData)
                local NEXT_FILE = AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonLabels).NEXT), " License Server From File: "))
                local licenseServerDecoded = nothing
                let
                    local index::Int32 = Int32(0)
                    while index < numberOfLicenseServers
                    try
                    decodedByteArray = AllBinary.decode(DatabaseEncoder, AllBinary.readUTF(iData))
                    licenseServerDecoded = decodedByteArray
                    AllBinary.setServer(initInfo, AllBinary.decrypt(newWeakCrypt(Int32(3)), licenseServerDecoded), index)
                    AllBinary.putF(this.logUtil, jstr(NEXT_FILE) * jstr(AllBinary.getServer(initInfo, index)), this, METHOD_NAME)
                    finally
                        index += Int32(1)
                    end
                    end
                end
                return initInfo
            else
                throw(jNewException("Exception", jstr("Could Not Load License InitInfo: ") * jstr(this.INITFILENAME)))
            end
        catch e
            try
                AllBinary.put(this.logUtil, jstr("Command Failed: ") * jstr(this.INITFILENAME), this, METHOD_NAME, e)
            catch e2
                AllBinary.put(this.logUtil, jstr("LicenseInitInfo Read Retry: ") * jstr(this.INITFILENAME), this, "readAgain()", e2)
            end
            throw(jNewException("Exception", jstr("LicenseInitInfo Read Error: ") * jstr(this.INITFILENAME)))
        end
end


function getFilePath(this::LicenseInitInfoUtil)
        return this.filePath
end

