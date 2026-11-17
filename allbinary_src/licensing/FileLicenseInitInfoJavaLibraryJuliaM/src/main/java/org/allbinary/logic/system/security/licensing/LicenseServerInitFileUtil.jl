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
# package org.allbinary.logic.system.security.licensing

mutable struct LicenseServerInitFileUtil <: JObject
    logUtil::Any
    commonStrings::Any
    NULL_OUTPUT_STREAM::Any
    LicenseServerInitFileUtil() = new()
end


function initFieldsLicenseServerInitFileUtil(this::LicenseServerInitFileUtil)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.NULL_OUTPUT_STREAM = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.NULL_OUTPUT_STREAM = AllBinary.nullOutputStream(SimpleFileUtil)
    nothing
end

function initLicenseServerInitFileUtil(this::LicenseServerInitFileUtil)
    initFieldsLicenseServerInitFileUtil(this)
end

function newLicenseServerInitFileUtil()
    this = LicenseServerInitFileUtil()
    initLicenseServerInitFileUtil(this)
    this
end


function init(this::LicenseServerInitFileUtil)
        try
            local filePath = AllBinary.getInstance(LicenseInitInfoUtil).INITFILENAME
            AllBinary.setFilePath(AllBinary.getInstance(LicenseInitInfoUtil), AllBinary.getInstance(StringUtil).EMPTY_STRING)
            if AllBinary.isFile(AllBinary.getInstance(FileFactory), filePath)
                AllBinary.putF(this.logUtil, "Using Existing License File", this, this.commonStrings.INIT)
            else
                AllBinary.write(this)
            end
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, e)
        end
        nothing
end


function write(this::LicenseServerInitFileUtil)
        local fileOutputStream = this.NULL_OUTPUT_STREAM
        try
            local resourceUtil = AllBinary.getInstance(ResourceUtil)
            local filePath = AllBinary.getInstance(LicenseInitInfoUtil).INITFILENAME
            local inputStream = AllBinary.getResourceAsStream(resourceUtil, filePath)
            AllBinary.putF(this.logUtil, "Writing Default License File", this, this.commonStrings.INIT)
            local fileStreamFactory = AllBinary.getInstance(FileStreamFactory)
            fileOutputStream = AllBinary.getFileOutputStreamInstance(fileStreamFactory, AllBinary.getInstance(StringUtil).EMPTY_STRING, filePath)
            local b::Int32 = Int32(0)
            local index::Int32 = Int32(0)
            while true
                b = AllBinary.read(inputStream)
                if b == -Int32(1)
                    break
                end
                AllBinary.write(fileOutputStream, b)
                index += Int32(1)
            end
            AllBinary.putF(this.logUtil, jstr("Wrote Bytes: ") * jstr(index), this, this.commonStrings.INIT)
            AllBinary.flush(fileOutputStream)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, e)
        finally
            AllBinary.close(AllBinary.getInstance(StreamUtil), fileOutputStream)
        end
        nothing
end

