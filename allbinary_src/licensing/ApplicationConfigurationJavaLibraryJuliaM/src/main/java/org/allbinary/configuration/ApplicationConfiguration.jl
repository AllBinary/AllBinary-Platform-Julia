# Generated Code Do Not Modify
# package org.allbinary.configuration

mutable struct ApplicationConfiguration <: JObject
    logUtil::Any
    fullscreen::Bool
    showTitleBar::Bool
    progressBarView::Bool
    FILE::Any
    ApplicationConfiguration() = new()
end

const ApplicationConfiguration_instanceValue = Ref{Any}(nothing)
const ApplicationConfiguration_instanceSet = Ref(false)
function staticGet_instance(::Type{ApplicationConfiguration})
    if !ApplicationConfiguration_instanceSet[]
        ApplicationConfiguration_instanceSet[] = true
        ApplicationConfiguration_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    ApplicationConfiguration_instanceValue[]
end
function staticSet_instance(::Type{ApplicationConfiguration}, value)
    ApplicationConfiguration_instanceSet[] = true
    ApplicationConfiguration_instanceValue[] = value
end

function initFieldsApplicationConfiguration(this::ApplicationConfiguration)
    this.logUtil = nothing
    this.fullscreen = false
    this.showTitleBar = false
    this.progressBarView = false
    this.FILE = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.fullscreen = true
    this.showTitleBar = false
    this.progressBarView = false
    this.FILE = "ReloadConfiguration.dat"
    nothing
end


function getInstance(::Type{ApplicationConfiguration})
        if staticGet_instance(ApplicationConfiguration) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(ApplicationConfiguration, newApplicationConfiguration())
        end
        return (staticGet_instance(ApplicationConfiguration))
end


function initApplicationConfiguration(this::ApplicationConfiguration)
        initFieldsApplicationConfiguration(this)
        try
            if AllBinary.isFile(AllBinary.getInstance(FileFactory), this.FILE)
                AllBinary.read(this)
            else
                AllBinary.write(this)
            end
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)
        end
        nothing
end

function newApplicationConfiguration()
    this = ApplicationConfiguration()
    initApplicationConfiguration(this)
    this
end


function read(this::ApplicationConfiguration)
        local fileInputStreamFactory = AllBinary.getInstance(FileStreamFactory)
        local fileInputStream = AllBinary.getFileInputStreamInstance(fileInputStreamFactory, AllBinary.getInstance(StringUtil).EMPTY_STRING, this.FILE)
        local dataInputStream = newAbDataInputStream(fileInputStream)
        local fullScreen::Int32 = AllBinary.readInt(dataInputStream)
        if fullScreen == Int32(0)
            AllBinary.setFullscreen(this, false)
        elseif fullScreen == Int32(1)
            AllBinary.setFullscreen(this, true)
        else
            throw(jNewException("Exception", "Invalid FullScreen ActivityConfiguration"))
        end
        local progressBarView::Int32 = AllBinary.readInt(dataInputStream)
        if progressBarView == Int32(0)
            AllBinary.setProgressBarView(this, false)
        elseif progressBarView == Int32(1)
            AllBinary.setProgressBarView(this, true)
        else
            throw(jNewException("Exception", "Invalid ProgressBarView ActivityConfiguration"))
        end
        local showTitleBar::Int32 = AllBinary.readInt(dataInputStream)
        if showTitleBar == Int32(0)
            AllBinary.setShowTitleBar(this, false)
        elseif showTitleBar == Int32(1)
            AllBinary.setShowTitleBar(this, true)
        else
            throw(jNewException("Exception", "Invalid ShowTitleBar ActivityConfiguration"))
        end
        AllBinary.putF(this.logUtil, jstr("Read Configuration: ") * jstr(AllBinary.toString(this)), this, "read")
        nothing
end


function write(this::ApplicationConfiguration)
        local closeable = staticGet_NULL_CLOSEABLE(NullCloseable)
        try
            AllBinary.putF(this.logUtil, jstr("Write Configuration: ") * jstr(AllBinary.toString(this)), this, "write")
            local fileInputStreamFactory = AllBinary.getInstance(FileStreamFactory)
            local fileOutputStream = AllBinary.getFileOutputStreamInstance(fileInputStreamFactory, AllBinary.getInstance(StringUtil).EMPTY_STRING, this.FILE)
            local dataOutputStream = newAbDataOutputStream(fileOutputStream)
            closeable = dataOutputStream
            if AllBinary.isFullscreen(this)
                AllBinary.writeInt(dataOutputStream, Int32(1))
            else
                AllBinary.writeInt(dataOutputStream, Int32(0))
            end
            if AllBinary.isProgressBarView(this)
                AllBinary.writeInt(dataOutputStream, Int32(1))
            else
                AllBinary.writeInt(dataOutputStream, Int32(0))
            end
            if AllBinary.isShowTitleBar(this)
                AllBinary.writeInt(dataOutputStream, Int32(1))
            else
                AllBinary.writeInt(dataOutputStream, Int32(0))
            end
            AllBinary.flush(dataOutputStream)
        catch e
            throw(e)
        finally
            AllBinary.close(AllBinary.getInstance(StreamUtil), closeable)
        end
        nothing
end


function update(this::ApplicationConfiguration, gameFeature)
        if gameFeature === AllBinary.getInstance(MainFeatureFactory).FULL_SCREEN
            local features = AllBinary.getInstance(Features)
            if AllBinary.isFeature(features, gameFeature)
                if !AllBinary.isFullscreen(this)
                    AllBinary.setFullscreen(this, true)
                    AllBinary.write(this)
                end
            else
                if AllBinary.isFullscreen(this)
                    AllBinary.setFullscreen(this, false)
                    AllBinary.write(this)
                end
            end
        end
        nothing
end


function setFullscreen(this::ApplicationConfiguration, fullscreen)
        this.fullscreen = fullscreen
        nothing
end


function isFullscreen(this::ApplicationConfiguration)
        return this.fullscreen
end


function setShowTitleBar(this::ApplicationConfiguration, showTitleBar)
        this.showTitleBar = showTitleBar
        nothing
end


function isShowTitleBar(this::ApplicationConfiguration)
        return this.showTitleBar
end


function setProgressBarView(this::ApplicationConfiguration, progressBarView)
        this.progressBarView = progressBarView
        nothing
end


function isProgressBarView(this::ApplicationConfiguration)
        return this.progressBarView
end


function toString(this::ApplicationConfiguration)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "isFullscreen: ")
        AllBinary.appendboolean(stringBuffer, AllBinary.isFullscreen(this))
        AllBinary.append(stringBuffer, " isProgressBarView: ")
        AllBinary.appendboolean(stringBuffer, AllBinary.isProgressBarView(this))
        AllBinary.append(stringBuffer, " isShowTitleBar: ")
        AllBinary.appendboolean(stringBuffer, AllBinary.isShowTitleBar(this))
        return AllBinary.toString(stringBuffer)
end

