# Generated Code Do Not Modify
# package org.allbinary.business.advertisement

# extends AdConfiguration: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AppNameLicensingAdConfiguration <: JObject
    AppNameLicensingAdConfiguration() = new()
end


function initFieldsAppNameLicensingAdConfiguration(this::AppNameLicensingAdConfiguration)
    nothing
end


function initAppNameLicensingAdConfiguration(this::AppNameLicensingAdConfiguration)
        initAdConfiguration(this, Any[AllBinary.getInstance(StringUtil).EMPTY_STRING, AllBinary.getInstance(StringUtil).EMPTY_STRING, AllBinary.getInstance(StringUtil).EMPTY_STRING])
        nothing
end

function newAppNameLicensingAdConfiguration()
    this = AppNameLicensingAdConfiguration()
    initAppNameLicensingAdConfiguration(this)
    this
end

