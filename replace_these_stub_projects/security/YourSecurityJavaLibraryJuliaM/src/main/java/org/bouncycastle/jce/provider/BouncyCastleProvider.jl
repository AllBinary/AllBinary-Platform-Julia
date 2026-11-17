# Generated Code Do Not Modify
# package org.bouncycastle.jce.provider

# extends Provider: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BouncyCastleProvider <: JObject
    BouncyCastleProvider() = new()
end

const BouncyCastleProvider_infoValue = Ref{Any}(nothing)
const BouncyCastleProvider_infoSet = Ref(false)
function staticGet_info(::Type{BouncyCastleProvider})
    if !BouncyCastleProvider_infoSet[]
        BouncyCastleProvider_infoSet[] = true
        BouncyCastleProvider_infoValue[] = "BouncyCastle Security Provider v1.41"
    end
    BouncyCastleProvider_infoValue[]
end
function staticSet_info(::Type{BouncyCastleProvider}, value)
    BouncyCastleProvider_infoSet[] = true
    BouncyCastleProvider_infoValue[] = value
end
const BouncyCastleProvider_PROVIDER_NAMEValue = Ref{Any}(nothing)
const BouncyCastleProvider_PROVIDER_NAMESet = Ref(false)
function staticGet_PROVIDER_NAME(::Type{BouncyCastleProvider})
    if !BouncyCastleProvider_PROVIDER_NAMESet[]
        BouncyCastleProvider_PROVIDER_NAMESet[] = true
        BouncyCastleProvider_PROVIDER_NAMEValue[] = "BC"
    end
    BouncyCastleProvider_PROVIDER_NAMEValue[]
end
function staticSet_PROVIDER_NAME(::Type{BouncyCastleProvider}, value)
    BouncyCastleProvider_PROVIDER_NAMESet[] = true
    BouncyCastleProvider_PROVIDER_NAMEValue[] = value
end

function initFieldsBouncyCastleProvider(this::BouncyCastleProvider)
    nothing
end


function initBouncyCastleProvider(this::BouncyCastleProvider)
        initProvider(this, staticGet_PROVIDER_NAME(BouncyCastleProvider), 1.41, staticGet_info(BouncyCastleProvider))
        nothing
end

function newBouncyCastleProvider()
    this = BouncyCastleProvider()
    initBouncyCastleProvider(this)
    this
end


function setParameter(this::BouncyCastleProvider, parameterName, parameter)
        nothing
        nothing
end

