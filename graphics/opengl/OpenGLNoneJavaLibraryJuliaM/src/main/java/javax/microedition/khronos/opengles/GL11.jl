# Generated Code Do Not Modify
# package javax.microedition.khronos.opengles

# Java interface GL11: Julia dispatches on the class so an interface is an abstract type
abstract type GL11 <: JObject end

const GL11_GL_ACTIVE_TEXTUREValue = Ref{Any}(nothing)
const GL11_GL_ACTIVE_TEXTURESet = Ref(false)
function staticGet_GL_ACTIVE_TEXTURE(::Type{GL11})
    if !GL11_GL_ACTIVE_TEXTURESet[]
        GL11_GL_ACTIVE_TEXTURESet[] = true
        GL11_GL_ACTIVE_TEXTUREValue[] = Int32(34016)
    end
    GL11_GL_ACTIVE_TEXTUREValue[]
end
function staticSet_GL_ACTIVE_TEXTURE(::Type{GL11}, value)
    GL11_GL_ACTIVE_TEXTURESet[] = true
    GL11_GL_ACTIVE_TEXTUREValue[] = value
end
const GL11_GL_ADD_SIGNEDValue = Ref{Any}(nothing)
const GL11_GL_ADD_SIGNEDSet = Ref(false)
function staticGet_GL_ADD_SIGNED(::Type{GL11})
    if !GL11_GL_ADD_SIGNEDSet[]
        GL11_GL_ADD_SIGNEDSet[] = true
        GL11_GL_ADD_SIGNEDValue[] = Int32(34164)
    end
    GL11_GL_ADD_SIGNEDValue[]
end
function staticSet_GL_ADD_SIGNED(::Type{GL11}, value)
    GL11_GL_ADD_SIGNEDSet[] = true
    GL11_GL_ADD_SIGNEDValue[] = value
end
const GL11_GL_ALPHA_SCALEValue = Ref{Any}(nothing)
const GL11_GL_ALPHA_SCALESet = Ref(false)
function staticGet_GL_ALPHA_SCALE(::Type{GL11})
    if !GL11_GL_ALPHA_SCALESet[]
        GL11_GL_ALPHA_SCALESet[] = true
        GL11_GL_ALPHA_SCALEValue[] = Int32(3356)
    end
    GL11_GL_ALPHA_SCALEValue[]
end
function staticSet_GL_ALPHA_SCALE(::Type{GL11}, value)
    GL11_GL_ALPHA_SCALESet[] = true
    GL11_GL_ALPHA_SCALEValue[] = value
end
const GL11_GL_ALPHA_TEST_FUNCValue = Ref{Any}(nothing)
const GL11_GL_ALPHA_TEST_FUNCSet = Ref(false)
function staticGet_GL_ALPHA_TEST_FUNC(::Type{GL11})
    if !GL11_GL_ALPHA_TEST_FUNCSet[]
        GL11_GL_ALPHA_TEST_FUNCSet[] = true
        GL11_GL_ALPHA_TEST_FUNCValue[] = Int32(3009)
    end
    GL11_GL_ALPHA_TEST_FUNCValue[]
end
function staticSet_GL_ALPHA_TEST_FUNC(::Type{GL11}, value)
    GL11_GL_ALPHA_TEST_FUNCSet[] = true
    GL11_GL_ALPHA_TEST_FUNCValue[] = value
end
const GL11_GL_ALPHA_TEST_REFValue = Ref{Any}(nothing)
const GL11_GL_ALPHA_TEST_REFSet = Ref(false)
function staticGet_GL_ALPHA_TEST_REF(::Type{GL11})
    if !GL11_GL_ALPHA_TEST_REFSet[]
        GL11_GL_ALPHA_TEST_REFSet[] = true
        GL11_GL_ALPHA_TEST_REFValue[] = Int32(3010)
    end
    GL11_GL_ALPHA_TEST_REFValue[]
end
function staticSet_GL_ALPHA_TEST_REF(::Type{GL11}, value)
    GL11_GL_ALPHA_TEST_REFSet[] = true
    GL11_GL_ALPHA_TEST_REFValue[] = value
end
const GL11_GL_ARRAY_BUFFERValue = Ref{Any}(nothing)
const GL11_GL_ARRAY_BUFFERSet = Ref(false)
function staticGet_GL_ARRAY_BUFFER(::Type{GL11})
    if !GL11_GL_ARRAY_BUFFERSet[]
        GL11_GL_ARRAY_BUFFERSet[] = true
        GL11_GL_ARRAY_BUFFERValue[] = Int32(34962)
    end
    GL11_GL_ARRAY_BUFFERValue[]
end
function staticSet_GL_ARRAY_BUFFER(::Type{GL11}, value)
    GL11_GL_ARRAY_BUFFERSet[] = true
    GL11_GL_ARRAY_BUFFERValue[] = value
end
const GL11_GL_ARRAY_BUFFER_BINDINGValue = Ref{Any}(nothing)
const GL11_GL_ARRAY_BUFFER_BINDINGSet = Ref(false)
function staticGet_GL_ARRAY_BUFFER_BINDING(::Type{GL11})
    if !GL11_GL_ARRAY_BUFFER_BINDINGSet[]
        GL11_GL_ARRAY_BUFFER_BINDINGSet[] = true
        GL11_GL_ARRAY_BUFFER_BINDINGValue[] = Int32(34964)
    end
    GL11_GL_ARRAY_BUFFER_BINDINGValue[]
end
function staticSet_GL_ARRAY_BUFFER_BINDING(::Type{GL11}, value)
    GL11_GL_ARRAY_BUFFER_BINDINGSet[] = true
    GL11_GL_ARRAY_BUFFER_BINDINGValue[] = value
end
const GL11_GL_BLEND_DSTValue = Ref{Any}(nothing)
const GL11_GL_BLEND_DSTSet = Ref(false)
function staticGet_GL_BLEND_DST(::Type{GL11})
    if !GL11_GL_BLEND_DSTSet[]
        GL11_GL_BLEND_DSTSet[] = true
        GL11_GL_BLEND_DSTValue[] = Int32(3040)
    end
    GL11_GL_BLEND_DSTValue[]
end
function staticSet_GL_BLEND_DST(::Type{GL11}, value)
    GL11_GL_BLEND_DSTSet[] = true
    GL11_GL_BLEND_DSTValue[] = value
end
const GL11_GL_BLEND_SRCValue = Ref{Any}(nothing)
const GL11_GL_BLEND_SRCSet = Ref(false)
function staticGet_GL_BLEND_SRC(::Type{GL11})
    if !GL11_GL_BLEND_SRCSet[]
        GL11_GL_BLEND_SRCSet[] = true
        GL11_GL_BLEND_SRCValue[] = Int32(3041)
    end
    GL11_GL_BLEND_SRCValue[]
end
function staticSet_GL_BLEND_SRC(::Type{GL11}, value)
    GL11_GL_BLEND_SRCSet[] = true
    GL11_GL_BLEND_SRCValue[] = value
end
const GL11_GL_BUFFER_ACCESSValue = Ref{Any}(nothing)
const GL11_GL_BUFFER_ACCESSSet = Ref(false)
function staticGet_GL_BUFFER_ACCESS(::Type{GL11})
    if !GL11_GL_BUFFER_ACCESSSet[]
        GL11_GL_BUFFER_ACCESSSet[] = true
        GL11_GL_BUFFER_ACCESSValue[] = Int32(35003)
    end
    GL11_GL_BUFFER_ACCESSValue[]
end
function staticSet_GL_BUFFER_ACCESS(::Type{GL11}, value)
    GL11_GL_BUFFER_ACCESSSet[] = true
    GL11_GL_BUFFER_ACCESSValue[] = value
end
const GL11_GL_BUFFER_SIZEValue = Ref{Any}(nothing)
const GL11_GL_BUFFER_SIZESet = Ref(false)
function staticGet_GL_BUFFER_SIZE(::Type{GL11})
    if !GL11_GL_BUFFER_SIZESet[]
        GL11_GL_BUFFER_SIZESet[] = true
        GL11_GL_BUFFER_SIZEValue[] = Int32(34660)
    end
    GL11_GL_BUFFER_SIZEValue[]
end
function staticSet_GL_BUFFER_SIZE(::Type{GL11}, value)
    GL11_GL_BUFFER_SIZESet[] = true
    GL11_GL_BUFFER_SIZEValue[] = value
end
const GL11_GL_BUFFER_USAGEValue = Ref{Any}(nothing)
const GL11_GL_BUFFER_USAGESet = Ref(false)
function staticGet_GL_BUFFER_USAGE(::Type{GL11})
    if !GL11_GL_BUFFER_USAGESet[]
        GL11_GL_BUFFER_USAGESet[] = true
        GL11_GL_BUFFER_USAGEValue[] = Int32(34661)
    end
    GL11_GL_BUFFER_USAGEValue[]
end
function staticSet_GL_BUFFER_USAGE(::Type{GL11}, value)
    GL11_GL_BUFFER_USAGESet[] = true
    GL11_GL_BUFFER_USAGEValue[] = value
end
const GL11_GL_CLIENT_ACTIVE_TEXTUREValue = Ref{Any}(nothing)
const GL11_GL_CLIENT_ACTIVE_TEXTURESet = Ref(false)
function staticGet_GL_CLIENT_ACTIVE_TEXTURE(::Type{GL11})
    if !GL11_GL_CLIENT_ACTIVE_TEXTURESet[]
        GL11_GL_CLIENT_ACTIVE_TEXTURESet[] = true
        GL11_GL_CLIENT_ACTIVE_TEXTUREValue[] = Int32(34017)
    end
    GL11_GL_CLIENT_ACTIVE_TEXTUREValue[]
end
function staticSet_GL_CLIENT_ACTIVE_TEXTURE(::Type{GL11}, value)
    GL11_GL_CLIENT_ACTIVE_TEXTURESet[] = true
    GL11_GL_CLIENT_ACTIVE_TEXTUREValue[] = value
end
const GL11_GL_CLIP_PLANE0Value = Ref{Any}(nothing)
const GL11_GL_CLIP_PLANE0Set = Ref(false)
function staticGet_GL_CLIP_PLANE0(::Type{GL11})
    if !GL11_GL_CLIP_PLANE0Set[]
        GL11_GL_CLIP_PLANE0Set[] = true
        GL11_GL_CLIP_PLANE0Value[] = Int32(12288)
    end
    GL11_GL_CLIP_PLANE0Value[]
end
function staticSet_GL_CLIP_PLANE0(::Type{GL11}, value)
    GL11_GL_CLIP_PLANE0Set[] = true
    GL11_GL_CLIP_PLANE0Value[] = value
end
const GL11_GL_CLIP_PLANE1Value = Ref{Any}(nothing)
const GL11_GL_CLIP_PLANE1Set = Ref(false)
function staticGet_GL_CLIP_PLANE1(::Type{GL11})
    if !GL11_GL_CLIP_PLANE1Set[]
        GL11_GL_CLIP_PLANE1Set[] = true
        GL11_GL_CLIP_PLANE1Value[] = Int32(12289)
    end
    GL11_GL_CLIP_PLANE1Value[]
end
function staticSet_GL_CLIP_PLANE1(::Type{GL11}, value)
    GL11_GL_CLIP_PLANE1Set[] = true
    GL11_GL_CLIP_PLANE1Value[] = value
end
const GL11_GL_CLIP_PLANE2Value = Ref{Any}(nothing)
const GL11_GL_CLIP_PLANE2Set = Ref(false)
function staticGet_GL_CLIP_PLANE2(::Type{GL11})
    if !GL11_GL_CLIP_PLANE2Set[]
        GL11_GL_CLIP_PLANE2Set[] = true
        GL11_GL_CLIP_PLANE2Value[] = Int32(12290)
    end
    GL11_GL_CLIP_PLANE2Value[]
end
function staticSet_GL_CLIP_PLANE2(::Type{GL11}, value)
    GL11_GL_CLIP_PLANE2Set[] = true
    GL11_GL_CLIP_PLANE2Value[] = value
end
const GL11_GL_CLIP_PLANE3Value = Ref{Any}(nothing)
const GL11_GL_CLIP_PLANE3Set = Ref(false)
function staticGet_GL_CLIP_PLANE3(::Type{GL11})
    if !GL11_GL_CLIP_PLANE3Set[]
        GL11_GL_CLIP_PLANE3Set[] = true
        GL11_GL_CLIP_PLANE3Value[] = Int32(12291)
    end
    GL11_GL_CLIP_PLANE3Value[]
end
function staticSet_GL_CLIP_PLANE3(::Type{GL11}, value)
    GL11_GL_CLIP_PLANE3Set[] = true
    GL11_GL_CLIP_PLANE3Value[] = value
end
const GL11_GL_CLIP_PLANE4Value = Ref{Any}(nothing)
const GL11_GL_CLIP_PLANE4Set = Ref(false)
function staticGet_GL_CLIP_PLANE4(::Type{GL11})
    if !GL11_GL_CLIP_PLANE4Set[]
        GL11_GL_CLIP_PLANE4Set[] = true
        GL11_GL_CLIP_PLANE4Value[] = Int32(12292)
    end
    GL11_GL_CLIP_PLANE4Value[]
end
function staticSet_GL_CLIP_PLANE4(::Type{GL11}, value)
    GL11_GL_CLIP_PLANE4Set[] = true
    GL11_GL_CLIP_PLANE4Value[] = value
end
const GL11_GL_CLIP_PLANE5Value = Ref{Any}(nothing)
const GL11_GL_CLIP_PLANE5Set = Ref(false)
function staticGet_GL_CLIP_PLANE5(::Type{GL11})
    if !GL11_GL_CLIP_PLANE5Set[]
        GL11_GL_CLIP_PLANE5Set[] = true
        GL11_GL_CLIP_PLANE5Value[] = Int32(12293)
    end
    GL11_GL_CLIP_PLANE5Value[]
end
function staticSet_GL_CLIP_PLANE5(::Type{GL11}, value)
    GL11_GL_CLIP_PLANE5Set[] = true
    GL11_GL_CLIP_PLANE5Value[] = value
end
const GL11_GL_COLOR_ARRAY_BUFFER_BINDINGValue = Ref{Any}(nothing)
const GL11_GL_COLOR_ARRAY_BUFFER_BINDINGSet = Ref(false)
function staticGet_GL_COLOR_ARRAY_BUFFER_BINDING(::Type{GL11})
    if !GL11_GL_COLOR_ARRAY_BUFFER_BINDINGSet[]
        GL11_GL_COLOR_ARRAY_BUFFER_BINDINGSet[] = true
        GL11_GL_COLOR_ARRAY_BUFFER_BINDINGValue[] = Int32(34968)
    end
    GL11_GL_COLOR_ARRAY_BUFFER_BINDINGValue[]
end
function staticSet_GL_COLOR_ARRAY_BUFFER_BINDING(::Type{GL11}, value)
    GL11_GL_COLOR_ARRAY_BUFFER_BINDINGSet[] = true
    GL11_GL_COLOR_ARRAY_BUFFER_BINDINGValue[] = value
end
const GL11_GL_COLOR_ARRAY_POINTERValue = Ref{Any}(nothing)
const GL11_GL_COLOR_ARRAY_POINTERSet = Ref(false)
function staticGet_GL_COLOR_ARRAY_POINTER(::Type{GL11})
    if !GL11_GL_COLOR_ARRAY_POINTERSet[]
        GL11_GL_COLOR_ARRAY_POINTERSet[] = true
        GL11_GL_COLOR_ARRAY_POINTERValue[] = Int32(32912)
    end
    GL11_GL_COLOR_ARRAY_POINTERValue[]
end
function staticSet_GL_COLOR_ARRAY_POINTER(::Type{GL11}, value)
    GL11_GL_COLOR_ARRAY_POINTERSet[] = true
    GL11_GL_COLOR_ARRAY_POINTERValue[] = value
end
const GL11_GL_COLOR_ARRAY_SIZEValue = Ref{Any}(nothing)
const GL11_GL_COLOR_ARRAY_SIZESet = Ref(false)
function staticGet_GL_COLOR_ARRAY_SIZE(::Type{GL11})
    if !GL11_GL_COLOR_ARRAY_SIZESet[]
        GL11_GL_COLOR_ARRAY_SIZESet[] = true
        GL11_GL_COLOR_ARRAY_SIZEValue[] = Int32(32897)
    end
    GL11_GL_COLOR_ARRAY_SIZEValue[]
end
function staticSet_GL_COLOR_ARRAY_SIZE(::Type{GL11}, value)
    GL11_GL_COLOR_ARRAY_SIZESet[] = true
    GL11_GL_COLOR_ARRAY_SIZEValue[] = value
end
const GL11_GL_COLOR_ARRAY_STRIDEValue = Ref{Any}(nothing)
const GL11_GL_COLOR_ARRAY_STRIDESet = Ref(false)
function staticGet_GL_COLOR_ARRAY_STRIDE(::Type{GL11})
    if !GL11_GL_COLOR_ARRAY_STRIDESet[]
        GL11_GL_COLOR_ARRAY_STRIDESet[] = true
        GL11_GL_COLOR_ARRAY_STRIDEValue[] = Int32(32899)
    end
    GL11_GL_COLOR_ARRAY_STRIDEValue[]
end
function staticSet_GL_COLOR_ARRAY_STRIDE(::Type{GL11}, value)
    GL11_GL_COLOR_ARRAY_STRIDESet[] = true
    GL11_GL_COLOR_ARRAY_STRIDEValue[] = value
end
const GL11_GL_COLOR_ARRAY_TYPEValue = Ref{Any}(nothing)
const GL11_GL_COLOR_ARRAY_TYPESet = Ref(false)
function staticGet_GL_COLOR_ARRAY_TYPE(::Type{GL11})
    if !GL11_GL_COLOR_ARRAY_TYPESet[]
        GL11_GL_COLOR_ARRAY_TYPESet[] = true
        GL11_GL_COLOR_ARRAY_TYPEValue[] = Int32(32898)
    end
    GL11_GL_COLOR_ARRAY_TYPEValue[]
end
function staticSet_GL_COLOR_ARRAY_TYPE(::Type{GL11}, value)
    GL11_GL_COLOR_ARRAY_TYPESet[] = true
    GL11_GL_COLOR_ARRAY_TYPEValue[] = value
end
const GL11_GL_COLOR_CLEAR_VALUEValue = Ref{Any}(nothing)
const GL11_GL_COLOR_CLEAR_VALUESet = Ref(false)
function staticGet_GL_COLOR_CLEAR_VALUE(::Type{GL11})
    if !GL11_GL_COLOR_CLEAR_VALUESet[]
        GL11_GL_COLOR_CLEAR_VALUESet[] = true
        GL11_GL_COLOR_CLEAR_VALUEValue[] = Int32(3106)
    end
    GL11_GL_COLOR_CLEAR_VALUEValue[]
end
function staticSet_GL_COLOR_CLEAR_VALUE(::Type{GL11}, value)
    GL11_GL_COLOR_CLEAR_VALUESet[] = true
    GL11_GL_COLOR_CLEAR_VALUEValue[] = value
end
const GL11_GL_COLOR_WRITEMASKValue = Ref{Any}(nothing)
const GL11_GL_COLOR_WRITEMASKSet = Ref(false)
function staticGet_GL_COLOR_WRITEMASK(::Type{GL11})
    if !GL11_GL_COLOR_WRITEMASKSet[]
        GL11_GL_COLOR_WRITEMASKSet[] = true
        GL11_GL_COLOR_WRITEMASKValue[] = Int32(3107)
    end
    GL11_GL_COLOR_WRITEMASKValue[]
end
function staticSet_GL_COLOR_WRITEMASK(::Type{GL11}, value)
    GL11_GL_COLOR_WRITEMASKSet[] = true
    GL11_GL_COLOR_WRITEMASKValue[] = value
end
const GL11_GL_COMBINEValue = Ref{Any}(nothing)
const GL11_GL_COMBINESet = Ref(false)
function staticGet_GL_COMBINE(::Type{GL11})
    if !GL11_GL_COMBINESet[]
        GL11_GL_COMBINESet[] = true
        GL11_GL_COMBINEValue[] = Int32(34160)
    end
    GL11_GL_COMBINEValue[]
end
function staticSet_GL_COMBINE(::Type{GL11}, value)
    GL11_GL_COMBINESet[] = true
    GL11_GL_COMBINEValue[] = value
end
const GL11_GL_COMBINE_ALPHAValue = Ref{Any}(nothing)
const GL11_GL_COMBINE_ALPHASet = Ref(false)
function staticGet_GL_COMBINE_ALPHA(::Type{GL11})
    if !GL11_GL_COMBINE_ALPHASet[]
        GL11_GL_COMBINE_ALPHASet[] = true
        GL11_GL_COMBINE_ALPHAValue[] = Int32(34162)
    end
    GL11_GL_COMBINE_ALPHAValue[]
end
function staticSet_GL_COMBINE_ALPHA(::Type{GL11}, value)
    GL11_GL_COMBINE_ALPHASet[] = true
    GL11_GL_COMBINE_ALPHAValue[] = value
end
const GL11_GL_COMBINE_RGBValue = Ref{Any}(nothing)
const GL11_GL_COMBINE_RGBSet = Ref(false)
function staticGet_GL_COMBINE_RGB(::Type{GL11})
    if !GL11_GL_COMBINE_RGBSet[]
        GL11_GL_COMBINE_RGBSet[] = true
        GL11_GL_COMBINE_RGBValue[] = Int32(34161)
    end
    GL11_GL_COMBINE_RGBValue[]
end
function staticSet_GL_COMBINE_RGB(::Type{GL11}, value)
    GL11_GL_COMBINE_RGBSet[] = true
    GL11_GL_COMBINE_RGBValue[] = value
end
const GL11_GL_CONSTANTValue = Ref{Any}(nothing)
const GL11_GL_CONSTANTSet = Ref(false)
function staticGet_GL_CONSTANT(::Type{GL11})
    if !GL11_GL_CONSTANTSet[]
        GL11_GL_CONSTANTSet[] = true
        GL11_GL_CONSTANTValue[] = Int32(34166)
    end
    GL11_GL_CONSTANTValue[]
end
function staticSet_GL_CONSTANT(::Type{GL11}, value)
    GL11_GL_CONSTANTSet[] = true
    GL11_GL_CONSTANTValue[] = value
end
const GL11_GL_COORD_REPLACE_OESValue = Ref{Any}(nothing)
const GL11_GL_COORD_REPLACE_OESSet = Ref(false)
function staticGet_GL_COORD_REPLACE_OES(::Type{GL11})
    if !GL11_GL_COORD_REPLACE_OESSet[]
        GL11_GL_COORD_REPLACE_OESSet[] = true
        GL11_GL_COORD_REPLACE_OESValue[] = Int32(34914)
    end
    GL11_GL_COORD_REPLACE_OESValue[]
end
function staticSet_GL_COORD_REPLACE_OES(::Type{GL11}, value)
    GL11_GL_COORD_REPLACE_OESSet[] = true
    GL11_GL_COORD_REPLACE_OESValue[] = value
end
const GL11_GL_CULL_FACE_MODEValue = Ref{Any}(nothing)
const GL11_GL_CULL_FACE_MODESet = Ref(false)
function staticGet_GL_CULL_FACE_MODE(::Type{GL11})
    if !GL11_GL_CULL_FACE_MODESet[]
        GL11_GL_CULL_FACE_MODESet[] = true
        GL11_GL_CULL_FACE_MODEValue[] = Int32(2885)
    end
    GL11_GL_CULL_FACE_MODEValue[]
end
function staticSet_GL_CULL_FACE_MODE(::Type{GL11}, value)
    GL11_GL_CULL_FACE_MODESet[] = true
    GL11_GL_CULL_FACE_MODEValue[] = value
end
const GL11_GL_CURRENT_COLORValue = Ref{Any}(nothing)
const GL11_GL_CURRENT_COLORSet = Ref(false)
function staticGet_GL_CURRENT_COLOR(::Type{GL11})
    if !GL11_GL_CURRENT_COLORSet[]
        GL11_GL_CURRENT_COLORSet[] = true
        GL11_GL_CURRENT_COLORValue[] = Int32(2816)
    end
    GL11_GL_CURRENT_COLORValue[]
end
function staticSet_GL_CURRENT_COLOR(::Type{GL11}, value)
    GL11_GL_CURRENT_COLORSet[] = true
    GL11_GL_CURRENT_COLORValue[] = value
end
const GL11_GL_CURRENT_NORMALValue = Ref{Any}(nothing)
const GL11_GL_CURRENT_NORMALSet = Ref(false)
function staticGet_GL_CURRENT_NORMAL(::Type{GL11})
    if !GL11_GL_CURRENT_NORMALSet[]
        GL11_GL_CURRENT_NORMALSet[] = true
        GL11_GL_CURRENT_NORMALValue[] = Int32(2818)
    end
    GL11_GL_CURRENT_NORMALValue[]
end
function staticSet_GL_CURRENT_NORMAL(::Type{GL11}, value)
    GL11_GL_CURRENT_NORMALSet[] = true
    GL11_GL_CURRENT_NORMALValue[] = value
end
const GL11_GL_CURRENT_TEXTURE_COORDSValue = Ref{Any}(nothing)
const GL11_GL_CURRENT_TEXTURE_COORDSSet = Ref(false)
function staticGet_GL_CURRENT_TEXTURE_COORDS(::Type{GL11})
    if !GL11_GL_CURRENT_TEXTURE_COORDSSet[]
        GL11_GL_CURRENT_TEXTURE_COORDSSet[] = true
        GL11_GL_CURRENT_TEXTURE_COORDSValue[] = Int32(2819)
    end
    GL11_GL_CURRENT_TEXTURE_COORDSValue[]
end
function staticSet_GL_CURRENT_TEXTURE_COORDS(::Type{GL11}, value)
    GL11_GL_CURRENT_TEXTURE_COORDSSet[] = true
    GL11_GL_CURRENT_TEXTURE_COORDSValue[] = value
end
const GL11_GL_DEPTH_CLEAR_VALUEValue = Ref{Any}(nothing)
const GL11_GL_DEPTH_CLEAR_VALUESet = Ref(false)
function staticGet_GL_DEPTH_CLEAR_VALUE(::Type{GL11})
    if !GL11_GL_DEPTH_CLEAR_VALUESet[]
        GL11_GL_DEPTH_CLEAR_VALUESet[] = true
        GL11_GL_DEPTH_CLEAR_VALUEValue[] = Int32(2931)
    end
    GL11_GL_DEPTH_CLEAR_VALUEValue[]
end
function staticSet_GL_DEPTH_CLEAR_VALUE(::Type{GL11}, value)
    GL11_GL_DEPTH_CLEAR_VALUESet[] = true
    GL11_GL_DEPTH_CLEAR_VALUEValue[] = value
end
const GL11_GL_DEPTH_FUNCValue = Ref{Any}(nothing)
const GL11_GL_DEPTH_FUNCSet = Ref(false)
function staticGet_GL_DEPTH_FUNC(::Type{GL11})
    if !GL11_GL_DEPTH_FUNCSet[]
        GL11_GL_DEPTH_FUNCSet[] = true
        GL11_GL_DEPTH_FUNCValue[] = Int32(2932)
    end
    GL11_GL_DEPTH_FUNCValue[]
end
function staticSet_GL_DEPTH_FUNC(::Type{GL11}, value)
    GL11_GL_DEPTH_FUNCSet[] = true
    GL11_GL_DEPTH_FUNCValue[] = value
end
const GL11_GL_DEPTH_RANGEValue = Ref{Any}(nothing)
const GL11_GL_DEPTH_RANGESet = Ref(false)
function staticGet_GL_DEPTH_RANGE(::Type{GL11})
    if !GL11_GL_DEPTH_RANGESet[]
        GL11_GL_DEPTH_RANGESet[] = true
        GL11_GL_DEPTH_RANGEValue[] = Int32(2928)
    end
    GL11_GL_DEPTH_RANGEValue[]
end
function staticSet_GL_DEPTH_RANGE(::Type{GL11}, value)
    GL11_GL_DEPTH_RANGESet[] = true
    GL11_GL_DEPTH_RANGEValue[] = value
end
const GL11_GL_DEPTH_WRITEMASKValue = Ref{Any}(nothing)
const GL11_GL_DEPTH_WRITEMASKSet = Ref(false)
function staticGet_GL_DEPTH_WRITEMASK(::Type{GL11})
    if !GL11_GL_DEPTH_WRITEMASKSet[]
        GL11_GL_DEPTH_WRITEMASKSet[] = true
        GL11_GL_DEPTH_WRITEMASKValue[] = Int32(2930)
    end
    GL11_GL_DEPTH_WRITEMASKValue[]
end
function staticSet_GL_DEPTH_WRITEMASK(::Type{GL11}, value)
    GL11_GL_DEPTH_WRITEMASKSet[] = true
    GL11_GL_DEPTH_WRITEMASKValue[] = value
end
const GL11_GL_DOT3_RGBValue = Ref{Any}(nothing)
const GL11_GL_DOT3_RGBSet = Ref(false)
function staticGet_GL_DOT3_RGB(::Type{GL11})
    if !GL11_GL_DOT3_RGBSet[]
        GL11_GL_DOT3_RGBSet[] = true
        GL11_GL_DOT3_RGBValue[] = Int32(34478)
    end
    GL11_GL_DOT3_RGBValue[]
end
function staticSet_GL_DOT3_RGB(::Type{GL11}, value)
    GL11_GL_DOT3_RGBSet[] = true
    GL11_GL_DOT3_RGBValue[] = value
end
const GL11_GL_DOT3_RGBAValue = Ref{Any}(nothing)
const GL11_GL_DOT3_RGBASet = Ref(false)
function staticGet_GL_DOT3_RGBA(::Type{GL11})
    if !GL11_GL_DOT3_RGBASet[]
        GL11_GL_DOT3_RGBASet[] = true
        GL11_GL_DOT3_RGBAValue[] = Int32(34479)
    end
    GL11_GL_DOT3_RGBAValue[]
end
function staticSet_GL_DOT3_RGBA(::Type{GL11}, value)
    GL11_GL_DOT3_RGBASet[] = true
    GL11_GL_DOT3_RGBAValue[] = value
end
const GL11_GL_DYNAMIC_DRAWValue = Ref{Any}(nothing)
const GL11_GL_DYNAMIC_DRAWSet = Ref(false)
function staticGet_GL_DYNAMIC_DRAW(::Type{GL11})
    if !GL11_GL_DYNAMIC_DRAWSet[]
        GL11_GL_DYNAMIC_DRAWSet[] = true
        GL11_GL_DYNAMIC_DRAWValue[] = Int32(35048)
    end
    GL11_GL_DYNAMIC_DRAWValue[]
end
function staticSet_GL_DYNAMIC_DRAW(::Type{GL11}, value)
    GL11_GL_DYNAMIC_DRAWSet[] = true
    GL11_GL_DYNAMIC_DRAWValue[] = value
end
const GL11_GL_ELEMENT_ARRAY_BUFFERValue = Ref{Any}(nothing)
const GL11_GL_ELEMENT_ARRAY_BUFFERSet = Ref(false)
function staticGet_GL_ELEMENT_ARRAY_BUFFER(::Type{GL11})
    if !GL11_GL_ELEMENT_ARRAY_BUFFERSet[]
        GL11_GL_ELEMENT_ARRAY_BUFFERSet[] = true
        GL11_GL_ELEMENT_ARRAY_BUFFERValue[] = Int32(34963)
    end
    GL11_GL_ELEMENT_ARRAY_BUFFERValue[]
end
function staticSet_GL_ELEMENT_ARRAY_BUFFER(::Type{GL11}, value)
    GL11_GL_ELEMENT_ARRAY_BUFFERSet[] = true
    GL11_GL_ELEMENT_ARRAY_BUFFERValue[] = value
end
const GL11_GL_ELEMENT_ARRAY_BUFFER_BINDINGValue = Ref{Any}(nothing)
const GL11_GL_ELEMENT_ARRAY_BUFFER_BINDINGSet = Ref(false)
function staticGet_GL_ELEMENT_ARRAY_BUFFER_BINDING(::Type{GL11})
    if !GL11_GL_ELEMENT_ARRAY_BUFFER_BINDINGSet[]
        GL11_GL_ELEMENT_ARRAY_BUFFER_BINDINGSet[] = true
        GL11_GL_ELEMENT_ARRAY_BUFFER_BINDINGValue[] = Int32(34965)
    end
    GL11_GL_ELEMENT_ARRAY_BUFFER_BINDINGValue[]
end
function staticSet_GL_ELEMENT_ARRAY_BUFFER_BINDING(::Type{GL11}, value)
    GL11_GL_ELEMENT_ARRAY_BUFFER_BINDINGSet[] = true
    GL11_GL_ELEMENT_ARRAY_BUFFER_BINDINGValue[] = value
end
const GL11_GL_FRONT_FACEValue = Ref{Any}(nothing)
const GL11_GL_FRONT_FACESet = Ref(false)
function staticGet_GL_FRONT_FACE(::Type{GL11})
    if !GL11_GL_FRONT_FACESet[]
        GL11_GL_FRONT_FACESet[] = true
        GL11_GL_FRONT_FACEValue[] = Int32(2886)
    end
    GL11_GL_FRONT_FACEValue[]
end
function staticSet_GL_FRONT_FACE(::Type{GL11}, value)
    GL11_GL_FRONT_FACESet[] = true
    GL11_GL_FRONT_FACEValue[] = value
end
const GL11_GL_GENERATE_MIPMAPValue = Ref{Any}(nothing)
const GL11_GL_GENERATE_MIPMAPSet = Ref(false)
function staticGet_GL_GENERATE_MIPMAP(::Type{GL11})
    if !GL11_GL_GENERATE_MIPMAPSet[]
        GL11_GL_GENERATE_MIPMAPSet[] = true
        GL11_GL_GENERATE_MIPMAPValue[] = Int32(33169)
    end
    GL11_GL_GENERATE_MIPMAPValue[]
end
function staticSet_GL_GENERATE_MIPMAP(::Type{GL11}, value)
    GL11_GL_GENERATE_MIPMAPSet[] = true
    GL11_GL_GENERATE_MIPMAPValue[] = value
end
const GL11_GL_GENERATE_MIPMAP_HINTValue = Ref{Any}(nothing)
const GL11_GL_GENERATE_MIPMAP_HINTSet = Ref(false)
function staticGet_GL_GENERATE_MIPMAP_HINT(::Type{GL11})
    if !GL11_GL_GENERATE_MIPMAP_HINTSet[]
        GL11_GL_GENERATE_MIPMAP_HINTSet[] = true
        GL11_GL_GENERATE_MIPMAP_HINTValue[] = Int32(33170)
    end
    GL11_GL_GENERATE_MIPMAP_HINTValue[]
end
function staticSet_GL_GENERATE_MIPMAP_HINT(::Type{GL11}, value)
    GL11_GL_GENERATE_MIPMAP_HINTSet[] = true
    GL11_GL_GENERATE_MIPMAP_HINTValue[] = value
end
const GL11_GL_INTERPOLATEValue = Ref{Any}(nothing)
const GL11_GL_INTERPOLATESet = Ref(false)
function staticGet_GL_INTERPOLATE(::Type{GL11})
    if !GL11_GL_INTERPOLATESet[]
        GL11_GL_INTERPOLATESet[] = true
        GL11_GL_INTERPOLATEValue[] = Int32(34165)
    end
    GL11_GL_INTERPOLATEValue[]
end
function staticSet_GL_INTERPOLATE(::Type{GL11}, value)
    GL11_GL_INTERPOLATESet[] = true
    GL11_GL_INTERPOLATEValue[] = value
end
const GL11_GL_LINE_WIDTHValue = Ref{Any}(nothing)
const GL11_GL_LINE_WIDTHSet = Ref(false)
function staticGet_GL_LINE_WIDTH(::Type{GL11})
    if !GL11_GL_LINE_WIDTHSet[]
        GL11_GL_LINE_WIDTHSet[] = true
        GL11_GL_LINE_WIDTHValue[] = Int32(2849)
    end
    GL11_GL_LINE_WIDTHValue[]
end
function staticSet_GL_LINE_WIDTH(::Type{GL11}, value)
    GL11_GL_LINE_WIDTHSet[] = true
    GL11_GL_LINE_WIDTHValue[] = value
end
const GL11_GL_LOGIC_OP_MODEValue = Ref{Any}(nothing)
const GL11_GL_LOGIC_OP_MODESet = Ref(false)
function staticGet_GL_LOGIC_OP_MODE(::Type{GL11})
    if !GL11_GL_LOGIC_OP_MODESet[]
        GL11_GL_LOGIC_OP_MODESet[] = true
        GL11_GL_LOGIC_OP_MODEValue[] = Int32(3056)
    end
    GL11_GL_LOGIC_OP_MODEValue[]
end
function staticSet_GL_LOGIC_OP_MODE(::Type{GL11}, value)
    GL11_GL_LOGIC_OP_MODESet[] = true
    GL11_GL_LOGIC_OP_MODEValue[] = value
end
const GL11_GL_MATRIX_MODEValue = Ref{Any}(nothing)
const GL11_GL_MATRIX_MODESet = Ref(false)
function staticGet_GL_MATRIX_MODE(::Type{GL11})
    if !GL11_GL_MATRIX_MODESet[]
        GL11_GL_MATRIX_MODESet[] = true
        GL11_GL_MATRIX_MODEValue[] = Int32(2976)
    end
    GL11_GL_MATRIX_MODEValue[]
end
function staticSet_GL_MATRIX_MODE(::Type{GL11}, value)
    GL11_GL_MATRIX_MODESet[] = true
    GL11_GL_MATRIX_MODEValue[] = value
end
const GL11_GL_MAX_CLIP_PLANESValue = Ref{Any}(nothing)
const GL11_GL_MAX_CLIP_PLANESSet = Ref(false)
function staticGet_GL_MAX_CLIP_PLANES(::Type{GL11})
    if !GL11_GL_MAX_CLIP_PLANESSet[]
        GL11_GL_MAX_CLIP_PLANESSet[] = true
        GL11_GL_MAX_CLIP_PLANESValue[] = Int32(3378)
    end
    GL11_GL_MAX_CLIP_PLANESValue[]
end
function staticSet_GL_MAX_CLIP_PLANES(::Type{GL11}, value)
    GL11_GL_MAX_CLIP_PLANESSet[] = true
    GL11_GL_MAX_CLIP_PLANESValue[] = value
end
const GL11_GL_MODELVIEW_MATRIXValue = Ref{Any}(nothing)
const GL11_GL_MODELVIEW_MATRIXSet = Ref(false)
function staticGet_GL_MODELVIEW_MATRIX(::Type{GL11})
    if !GL11_GL_MODELVIEW_MATRIXSet[]
        GL11_GL_MODELVIEW_MATRIXSet[] = true
        GL11_GL_MODELVIEW_MATRIXValue[] = Int32(2982)
    end
    GL11_GL_MODELVIEW_MATRIXValue[]
end
function staticSet_GL_MODELVIEW_MATRIX(::Type{GL11}, value)
    GL11_GL_MODELVIEW_MATRIXSet[] = true
    GL11_GL_MODELVIEW_MATRIXValue[] = value
end
const GL11_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESValue = Ref{Any}(nothing)
const GL11_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESSet = Ref(false)
function staticGet_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES(::Type{GL11})
    if !GL11_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESSet[]
        GL11_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESSet[] = true
        GL11_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESValue[] = Int32(35213)
    end
    GL11_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESValue[]
end
function staticSet_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES(::Type{GL11}, value)
    GL11_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESSet[] = true
    GL11_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESValue[] = value
end
const GL11_GL_MODELVIEW_STACK_DEPTHValue = Ref{Any}(nothing)
const GL11_GL_MODELVIEW_STACK_DEPTHSet = Ref(false)
function staticGet_GL_MODELVIEW_STACK_DEPTH(::Type{GL11})
    if !GL11_GL_MODELVIEW_STACK_DEPTHSet[]
        GL11_GL_MODELVIEW_STACK_DEPTHSet[] = true
        GL11_GL_MODELVIEW_STACK_DEPTHValue[] = Int32(2979)
    end
    GL11_GL_MODELVIEW_STACK_DEPTHValue[]
end
function staticSet_GL_MODELVIEW_STACK_DEPTH(::Type{GL11}, value)
    GL11_GL_MODELVIEW_STACK_DEPTHSet[] = true
    GL11_GL_MODELVIEW_STACK_DEPTHValue[] = value
end
const GL11_GL_NORMAL_ARRAY_BUFFER_BINDINGValue = Ref{Any}(nothing)
const GL11_GL_NORMAL_ARRAY_BUFFER_BINDINGSet = Ref(false)
function staticGet_GL_NORMAL_ARRAY_BUFFER_BINDING(::Type{GL11})
    if !GL11_GL_NORMAL_ARRAY_BUFFER_BINDINGSet[]
        GL11_GL_NORMAL_ARRAY_BUFFER_BINDINGSet[] = true
        GL11_GL_NORMAL_ARRAY_BUFFER_BINDINGValue[] = Int32(34967)
    end
    GL11_GL_NORMAL_ARRAY_BUFFER_BINDINGValue[]
end
function staticSet_GL_NORMAL_ARRAY_BUFFER_BINDING(::Type{GL11}, value)
    GL11_GL_NORMAL_ARRAY_BUFFER_BINDINGSet[] = true
    GL11_GL_NORMAL_ARRAY_BUFFER_BINDINGValue[] = value
end
const GL11_GL_NORMAL_ARRAY_POINTERValue = Ref{Any}(nothing)
const GL11_GL_NORMAL_ARRAY_POINTERSet = Ref(false)
function staticGet_GL_NORMAL_ARRAY_POINTER(::Type{GL11})
    if !GL11_GL_NORMAL_ARRAY_POINTERSet[]
        GL11_GL_NORMAL_ARRAY_POINTERSet[] = true
        GL11_GL_NORMAL_ARRAY_POINTERValue[] = Int32(32911)
    end
    GL11_GL_NORMAL_ARRAY_POINTERValue[]
end
function staticSet_GL_NORMAL_ARRAY_POINTER(::Type{GL11}, value)
    GL11_GL_NORMAL_ARRAY_POINTERSet[] = true
    GL11_GL_NORMAL_ARRAY_POINTERValue[] = value
end
const GL11_GL_NORMAL_ARRAY_STRIDEValue = Ref{Any}(nothing)
const GL11_GL_NORMAL_ARRAY_STRIDESet = Ref(false)
function staticGet_GL_NORMAL_ARRAY_STRIDE(::Type{GL11})
    if !GL11_GL_NORMAL_ARRAY_STRIDESet[]
        GL11_GL_NORMAL_ARRAY_STRIDESet[] = true
        GL11_GL_NORMAL_ARRAY_STRIDEValue[] = Int32(32895)
    end
    GL11_GL_NORMAL_ARRAY_STRIDEValue[]
end
function staticSet_GL_NORMAL_ARRAY_STRIDE(::Type{GL11}, value)
    GL11_GL_NORMAL_ARRAY_STRIDESet[] = true
    GL11_GL_NORMAL_ARRAY_STRIDEValue[] = value
end
const GL11_GL_NORMAL_ARRAY_TYPEValue = Ref{Any}(nothing)
const GL11_GL_NORMAL_ARRAY_TYPESet = Ref(false)
function staticGet_GL_NORMAL_ARRAY_TYPE(::Type{GL11})
    if !GL11_GL_NORMAL_ARRAY_TYPESet[]
        GL11_GL_NORMAL_ARRAY_TYPESet[] = true
        GL11_GL_NORMAL_ARRAY_TYPEValue[] = Int32(32894)
    end
    GL11_GL_NORMAL_ARRAY_TYPEValue[]
end
function staticSet_GL_NORMAL_ARRAY_TYPE(::Type{GL11}, value)
    GL11_GL_NORMAL_ARRAY_TYPESet[] = true
    GL11_GL_NORMAL_ARRAY_TYPEValue[] = value
end
const GL11_GL_OPERAND0_ALPHAValue = Ref{Any}(nothing)
const GL11_GL_OPERAND0_ALPHASet = Ref(false)
function staticGet_GL_OPERAND0_ALPHA(::Type{GL11})
    if !GL11_GL_OPERAND0_ALPHASet[]
        GL11_GL_OPERAND0_ALPHASet[] = true
        GL11_GL_OPERAND0_ALPHAValue[] = Int32(34200)
    end
    GL11_GL_OPERAND0_ALPHAValue[]
end
function staticSet_GL_OPERAND0_ALPHA(::Type{GL11}, value)
    GL11_GL_OPERAND0_ALPHASet[] = true
    GL11_GL_OPERAND0_ALPHAValue[] = value
end
const GL11_GL_OPERAND0_RGBValue = Ref{Any}(nothing)
const GL11_GL_OPERAND0_RGBSet = Ref(false)
function staticGet_GL_OPERAND0_RGB(::Type{GL11})
    if !GL11_GL_OPERAND0_RGBSet[]
        GL11_GL_OPERAND0_RGBSet[] = true
        GL11_GL_OPERAND0_RGBValue[] = Int32(34192)
    end
    GL11_GL_OPERAND0_RGBValue[]
end
function staticSet_GL_OPERAND0_RGB(::Type{GL11}, value)
    GL11_GL_OPERAND0_RGBSet[] = true
    GL11_GL_OPERAND0_RGBValue[] = value
end
const GL11_GL_OPERAND1_ALPHAValue = Ref{Any}(nothing)
const GL11_GL_OPERAND1_ALPHASet = Ref(false)
function staticGet_GL_OPERAND1_ALPHA(::Type{GL11})
    if !GL11_GL_OPERAND1_ALPHASet[]
        GL11_GL_OPERAND1_ALPHASet[] = true
        GL11_GL_OPERAND1_ALPHAValue[] = Int32(34201)
    end
    GL11_GL_OPERAND1_ALPHAValue[]
end
function staticSet_GL_OPERAND1_ALPHA(::Type{GL11}, value)
    GL11_GL_OPERAND1_ALPHASet[] = true
    GL11_GL_OPERAND1_ALPHAValue[] = value
end
const GL11_GL_OPERAND1_RGBValue = Ref{Any}(nothing)
const GL11_GL_OPERAND1_RGBSet = Ref(false)
function staticGet_GL_OPERAND1_RGB(::Type{GL11})
    if !GL11_GL_OPERAND1_RGBSet[]
        GL11_GL_OPERAND1_RGBSet[] = true
        GL11_GL_OPERAND1_RGBValue[] = Int32(34193)
    end
    GL11_GL_OPERAND1_RGBValue[]
end
function staticSet_GL_OPERAND1_RGB(::Type{GL11}, value)
    GL11_GL_OPERAND1_RGBSet[] = true
    GL11_GL_OPERAND1_RGBValue[] = value
end
const GL11_GL_OPERAND2_ALPHAValue = Ref{Any}(nothing)
const GL11_GL_OPERAND2_ALPHASet = Ref(false)
function staticGet_GL_OPERAND2_ALPHA(::Type{GL11})
    if !GL11_GL_OPERAND2_ALPHASet[]
        GL11_GL_OPERAND2_ALPHASet[] = true
        GL11_GL_OPERAND2_ALPHAValue[] = Int32(34202)
    end
    GL11_GL_OPERAND2_ALPHAValue[]
end
function staticSet_GL_OPERAND2_ALPHA(::Type{GL11}, value)
    GL11_GL_OPERAND2_ALPHASet[] = true
    GL11_GL_OPERAND2_ALPHAValue[] = value
end
const GL11_GL_OPERAND2_RGBValue = Ref{Any}(nothing)
const GL11_GL_OPERAND2_RGBSet = Ref(false)
function staticGet_GL_OPERAND2_RGB(::Type{GL11})
    if !GL11_GL_OPERAND2_RGBSet[]
        GL11_GL_OPERAND2_RGBSet[] = true
        GL11_GL_OPERAND2_RGBValue[] = Int32(34194)
    end
    GL11_GL_OPERAND2_RGBValue[]
end
function staticSet_GL_OPERAND2_RGB(::Type{GL11}, value)
    GL11_GL_OPERAND2_RGBSet[] = true
    GL11_GL_OPERAND2_RGBValue[] = value
end
const GL11_GL_POINT_DISTANCE_ATTENUATIONValue = Ref{Any}(nothing)
const GL11_GL_POINT_DISTANCE_ATTENUATIONSet = Ref(false)
function staticGet_GL_POINT_DISTANCE_ATTENUATION(::Type{GL11})
    if !GL11_GL_POINT_DISTANCE_ATTENUATIONSet[]
        GL11_GL_POINT_DISTANCE_ATTENUATIONSet[] = true
        GL11_GL_POINT_DISTANCE_ATTENUATIONValue[] = Int32(33065)
    end
    GL11_GL_POINT_DISTANCE_ATTENUATIONValue[]
end
function staticSet_GL_POINT_DISTANCE_ATTENUATION(::Type{GL11}, value)
    GL11_GL_POINT_DISTANCE_ATTENUATIONSet[] = true
    GL11_GL_POINT_DISTANCE_ATTENUATIONValue[] = value
end
const GL11_GL_POINT_FADE_THRESHOLD_SIZEValue = Ref{Any}(nothing)
const GL11_GL_POINT_FADE_THRESHOLD_SIZESet = Ref(false)
function staticGet_GL_POINT_FADE_THRESHOLD_SIZE(::Type{GL11})
    if !GL11_GL_POINT_FADE_THRESHOLD_SIZESet[]
        GL11_GL_POINT_FADE_THRESHOLD_SIZESet[] = true
        GL11_GL_POINT_FADE_THRESHOLD_SIZEValue[] = Int32(33064)
    end
    GL11_GL_POINT_FADE_THRESHOLD_SIZEValue[]
end
function staticSet_GL_POINT_FADE_THRESHOLD_SIZE(::Type{GL11}, value)
    GL11_GL_POINT_FADE_THRESHOLD_SIZESet[] = true
    GL11_GL_POINT_FADE_THRESHOLD_SIZEValue[] = value
end
const GL11_GL_POINT_SIZEValue = Ref{Any}(nothing)
const GL11_GL_POINT_SIZESet = Ref(false)
function staticGet_GL_POINT_SIZE(::Type{GL11})
    if !GL11_GL_POINT_SIZESet[]
        GL11_GL_POINT_SIZESet[] = true
        GL11_GL_POINT_SIZEValue[] = Int32(2833)
    end
    GL11_GL_POINT_SIZEValue[]
end
function staticSet_GL_POINT_SIZE(::Type{GL11}, value)
    GL11_GL_POINT_SIZESet[] = true
    GL11_GL_POINT_SIZEValue[] = value
end
const GL11_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESValue = Ref{Any}(nothing)
const GL11_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESSet = Ref(false)
function staticGet_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES(::Type{GL11})
    if !GL11_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESSet[]
        GL11_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESSet[] = true
        GL11_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESValue[] = Int32(35743)
    end
    GL11_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESValue[]
end
function staticSet_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES(::Type{GL11}, value)
    GL11_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESSet[] = true
    GL11_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESValue[] = value
end
const GL11_GL_POINT_SIZE_ARRAY_OESValue = Ref{Any}(nothing)
const GL11_GL_POINT_SIZE_ARRAY_OESSet = Ref(false)
function staticGet_GL_POINT_SIZE_ARRAY_OES(::Type{GL11})
    if !GL11_GL_POINT_SIZE_ARRAY_OESSet[]
        GL11_GL_POINT_SIZE_ARRAY_OESSet[] = true
        GL11_GL_POINT_SIZE_ARRAY_OESValue[] = Int32(35740)
    end
    GL11_GL_POINT_SIZE_ARRAY_OESValue[]
end
function staticSet_GL_POINT_SIZE_ARRAY_OES(::Type{GL11}, value)
    GL11_GL_POINT_SIZE_ARRAY_OESSet[] = true
    GL11_GL_POINT_SIZE_ARRAY_OESValue[] = value
end
const GL11_GL_POINT_SIZE_ARRAY_POINTER_OESValue = Ref{Any}(nothing)
const GL11_GL_POINT_SIZE_ARRAY_POINTER_OESSet = Ref(false)
function staticGet_GL_POINT_SIZE_ARRAY_POINTER_OES(::Type{GL11})
    if !GL11_GL_POINT_SIZE_ARRAY_POINTER_OESSet[]
        GL11_GL_POINT_SIZE_ARRAY_POINTER_OESSet[] = true
        GL11_GL_POINT_SIZE_ARRAY_POINTER_OESValue[] = Int32(35212)
    end
    GL11_GL_POINT_SIZE_ARRAY_POINTER_OESValue[]
end
function staticSet_GL_POINT_SIZE_ARRAY_POINTER_OES(::Type{GL11}, value)
    GL11_GL_POINT_SIZE_ARRAY_POINTER_OESSet[] = true
    GL11_GL_POINT_SIZE_ARRAY_POINTER_OESValue[] = value
end
const GL11_GL_POINT_SIZE_ARRAY_STRIDE_OESValue = Ref{Any}(nothing)
const GL11_GL_POINT_SIZE_ARRAY_STRIDE_OESSet = Ref(false)
function staticGet_GL_POINT_SIZE_ARRAY_STRIDE_OES(::Type{GL11})
    if !GL11_GL_POINT_SIZE_ARRAY_STRIDE_OESSet[]
        GL11_GL_POINT_SIZE_ARRAY_STRIDE_OESSet[] = true
        GL11_GL_POINT_SIZE_ARRAY_STRIDE_OESValue[] = Int32(35211)
    end
    GL11_GL_POINT_SIZE_ARRAY_STRIDE_OESValue[]
end
function staticSet_GL_POINT_SIZE_ARRAY_STRIDE_OES(::Type{GL11}, value)
    GL11_GL_POINT_SIZE_ARRAY_STRIDE_OESSet[] = true
    GL11_GL_POINT_SIZE_ARRAY_STRIDE_OESValue[] = value
end
const GL11_GL_POINT_SIZE_ARRAY_TYPE_OESValue = Ref{Any}(nothing)
const GL11_GL_POINT_SIZE_ARRAY_TYPE_OESSet = Ref(false)
function staticGet_GL_POINT_SIZE_ARRAY_TYPE_OES(::Type{GL11})
    if !GL11_GL_POINT_SIZE_ARRAY_TYPE_OESSet[]
        GL11_GL_POINT_SIZE_ARRAY_TYPE_OESSet[] = true
        GL11_GL_POINT_SIZE_ARRAY_TYPE_OESValue[] = Int32(35210)
    end
    GL11_GL_POINT_SIZE_ARRAY_TYPE_OESValue[]
end
function staticSet_GL_POINT_SIZE_ARRAY_TYPE_OES(::Type{GL11}, value)
    GL11_GL_POINT_SIZE_ARRAY_TYPE_OESSet[] = true
    GL11_GL_POINT_SIZE_ARRAY_TYPE_OESValue[] = value
end
const GL11_GL_POINT_SIZE_MAXValue = Ref{Any}(nothing)
const GL11_GL_POINT_SIZE_MAXSet = Ref(false)
function staticGet_GL_POINT_SIZE_MAX(::Type{GL11})
    if !GL11_GL_POINT_SIZE_MAXSet[]
        GL11_GL_POINT_SIZE_MAXSet[] = true
        GL11_GL_POINT_SIZE_MAXValue[] = Int32(33063)
    end
    GL11_GL_POINT_SIZE_MAXValue[]
end
function staticSet_GL_POINT_SIZE_MAX(::Type{GL11}, value)
    GL11_GL_POINT_SIZE_MAXSet[] = true
    GL11_GL_POINT_SIZE_MAXValue[] = value
end
const GL11_GL_POINT_SIZE_MINValue = Ref{Any}(nothing)
const GL11_GL_POINT_SIZE_MINSet = Ref(false)
function staticGet_GL_POINT_SIZE_MIN(::Type{GL11})
    if !GL11_GL_POINT_SIZE_MINSet[]
        GL11_GL_POINT_SIZE_MINSet[] = true
        GL11_GL_POINT_SIZE_MINValue[] = Int32(33062)
    end
    GL11_GL_POINT_SIZE_MINValue[]
end
function staticSet_GL_POINT_SIZE_MIN(::Type{GL11}, value)
    GL11_GL_POINT_SIZE_MINSet[] = true
    GL11_GL_POINT_SIZE_MINValue[] = value
end
const GL11_GL_POINT_SPRITE_OESValue = Ref{Any}(nothing)
const GL11_GL_POINT_SPRITE_OESSet = Ref(false)
function staticGet_GL_POINT_SPRITE_OES(::Type{GL11})
    if !GL11_GL_POINT_SPRITE_OESSet[]
        GL11_GL_POINT_SPRITE_OESSet[] = true
        GL11_GL_POINT_SPRITE_OESValue[] = Int32(34913)
    end
    GL11_GL_POINT_SPRITE_OESValue[]
end
function staticSet_GL_POINT_SPRITE_OES(::Type{GL11}, value)
    GL11_GL_POINT_SPRITE_OESSet[] = true
    GL11_GL_POINT_SPRITE_OESValue[] = value
end
const GL11_GL_POLYGON_OFFSET_FACTORValue = Ref{Any}(nothing)
const GL11_GL_POLYGON_OFFSET_FACTORSet = Ref(false)
function staticGet_GL_POLYGON_OFFSET_FACTOR(::Type{GL11})
    if !GL11_GL_POLYGON_OFFSET_FACTORSet[]
        GL11_GL_POLYGON_OFFSET_FACTORSet[] = true
        GL11_GL_POLYGON_OFFSET_FACTORValue[] = Int32(32824)
    end
    GL11_GL_POLYGON_OFFSET_FACTORValue[]
end
function staticSet_GL_POLYGON_OFFSET_FACTOR(::Type{GL11}, value)
    GL11_GL_POLYGON_OFFSET_FACTORSet[] = true
    GL11_GL_POLYGON_OFFSET_FACTORValue[] = value
end
const GL11_GL_POLYGON_OFFSET_UNITSValue = Ref{Any}(nothing)
const GL11_GL_POLYGON_OFFSET_UNITSSet = Ref(false)
function staticGet_GL_POLYGON_OFFSET_UNITS(::Type{GL11})
    if !GL11_GL_POLYGON_OFFSET_UNITSSet[]
        GL11_GL_POLYGON_OFFSET_UNITSSet[] = true
        GL11_GL_POLYGON_OFFSET_UNITSValue[] = Int32(10752)
    end
    GL11_GL_POLYGON_OFFSET_UNITSValue[]
end
function staticSet_GL_POLYGON_OFFSET_UNITS(::Type{GL11}, value)
    GL11_GL_POLYGON_OFFSET_UNITSSet[] = true
    GL11_GL_POLYGON_OFFSET_UNITSValue[] = value
end
const GL11_GL_PREVIOUSValue = Ref{Any}(nothing)
const GL11_GL_PREVIOUSSet = Ref(false)
function staticGet_GL_PREVIOUS(::Type{GL11})
    if !GL11_GL_PREVIOUSSet[]
        GL11_GL_PREVIOUSSet[] = true
        GL11_GL_PREVIOUSValue[] = Int32(34168)
    end
    GL11_GL_PREVIOUSValue[]
end
function staticSet_GL_PREVIOUS(::Type{GL11}, value)
    GL11_GL_PREVIOUSSet[] = true
    GL11_GL_PREVIOUSValue[] = value
end
const GL11_GL_PRIMARY_COLORValue = Ref{Any}(nothing)
const GL11_GL_PRIMARY_COLORSet = Ref(false)
function staticGet_GL_PRIMARY_COLOR(::Type{GL11})
    if !GL11_GL_PRIMARY_COLORSet[]
        GL11_GL_PRIMARY_COLORSet[] = true
        GL11_GL_PRIMARY_COLORValue[] = Int32(34167)
    end
    GL11_GL_PRIMARY_COLORValue[]
end
function staticSet_GL_PRIMARY_COLOR(::Type{GL11}, value)
    GL11_GL_PRIMARY_COLORSet[] = true
    GL11_GL_PRIMARY_COLORValue[] = value
end
const GL11_GL_PROJECTION_MATRIXValue = Ref{Any}(nothing)
const GL11_GL_PROJECTION_MATRIXSet = Ref(false)
function staticGet_GL_PROJECTION_MATRIX(::Type{GL11})
    if !GL11_GL_PROJECTION_MATRIXSet[]
        GL11_GL_PROJECTION_MATRIXSet[] = true
        GL11_GL_PROJECTION_MATRIXValue[] = Int32(2983)
    end
    GL11_GL_PROJECTION_MATRIXValue[]
end
function staticSet_GL_PROJECTION_MATRIX(::Type{GL11}, value)
    GL11_GL_PROJECTION_MATRIXSet[] = true
    GL11_GL_PROJECTION_MATRIXValue[] = value
end
const GL11_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESValue = Ref{Any}(nothing)
const GL11_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESSet = Ref(false)
function staticGet_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES(::Type{GL11})
    if !GL11_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESSet[]
        GL11_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESSet[] = true
        GL11_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESValue[] = Int32(35214)
    end
    GL11_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESValue[]
end
function staticSet_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES(::Type{GL11}, value)
    GL11_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESSet[] = true
    GL11_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESValue[] = value
end
const GL11_GL_PROJECTION_STACK_DEPTHValue = Ref{Any}(nothing)
const GL11_GL_PROJECTION_STACK_DEPTHSet = Ref(false)
function staticGet_GL_PROJECTION_STACK_DEPTH(::Type{GL11})
    if !GL11_GL_PROJECTION_STACK_DEPTHSet[]
        GL11_GL_PROJECTION_STACK_DEPTHSet[] = true
        GL11_GL_PROJECTION_STACK_DEPTHValue[] = Int32(2980)
    end
    GL11_GL_PROJECTION_STACK_DEPTHValue[]
end
function staticSet_GL_PROJECTION_STACK_DEPTH(::Type{GL11}, value)
    GL11_GL_PROJECTION_STACK_DEPTHSet[] = true
    GL11_GL_PROJECTION_STACK_DEPTHValue[] = value
end
const GL11_GL_RGB_SCALEValue = Ref{Any}(nothing)
const GL11_GL_RGB_SCALESet = Ref(false)
function staticGet_GL_RGB_SCALE(::Type{GL11})
    if !GL11_GL_RGB_SCALESet[]
        GL11_GL_RGB_SCALESet[] = true
        GL11_GL_RGB_SCALEValue[] = Int32(34163)
    end
    GL11_GL_RGB_SCALEValue[]
end
function staticSet_GL_RGB_SCALE(::Type{GL11}, value)
    GL11_GL_RGB_SCALESet[] = true
    GL11_GL_RGB_SCALEValue[] = value
end
const GL11_GL_SAMPLE_BUFFERSValue = Ref{Any}(nothing)
const GL11_GL_SAMPLE_BUFFERSSet = Ref(false)
function staticGet_GL_SAMPLE_BUFFERS(::Type{GL11})
    if !GL11_GL_SAMPLE_BUFFERSSet[]
        GL11_GL_SAMPLE_BUFFERSSet[] = true
        GL11_GL_SAMPLE_BUFFERSValue[] = Int32(32936)
    end
    GL11_GL_SAMPLE_BUFFERSValue[]
end
function staticSet_GL_SAMPLE_BUFFERS(::Type{GL11}, value)
    GL11_GL_SAMPLE_BUFFERSSet[] = true
    GL11_GL_SAMPLE_BUFFERSValue[] = value
end
const GL11_GL_SAMPLE_COVERAGE_INVERTValue = Ref{Any}(nothing)
const GL11_GL_SAMPLE_COVERAGE_INVERTSet = Ref(false)
function staticGet_GL_SAMPLE_COVERAGE_INVERT(::Type{GL11})
    if !GL11_GL_SAMPLE_COVERAGE_INVERTSet[]
        GL11_GL_SAMPLE_COVERAGE_INVERTSet[] = true
        GL11_GL_SAMPLE_COVERAGE_INVERTValue[] = Int32(32939)
    end
    GL11_GL_SAMPLE_COVERAGE_INVERTValue[]
end
function staticSet_GL_SAMPLE_COVERAGE_INVERT(::Type{GL11}, value)
    GL11_GL_SAMPLE_COVERAGE_INVERTSet[] = true
    GL11_GL_SAMPLE_COVERAGE_INVERTValue[] = value
end
const GL11_GL_SAMPLE_COVERAGE_VALUEValue = Ref{Any}(nothing)
const GL11_GL_SAMPLE_COVERAGE_VALUESet = Ref(false)
function staticGet_GL_SAMPLE_COVERAGE_VALUE(::Type{GL11})
    if !GL11_GL_SAMPLE_COVERAGE_VALUESet[]
        GL11_GL_SAMPLE_COVERAGE_VALUESet[] = true
        GL11_GL_SAMPLE_COVERAGE_VALUEValue[] = Int32(32938)
    end
    GL11_GL_SAMPLE_COVERAGE_VALUEValue[]
end
function staticSet_GL_SAMPLE_COVERAGE_VALUE(::Type{GL11}, value)
    GL11_GL_SAMPLE_COVERAGE_VALUESet[] = true
    GL11_GL_SAMPLE_COVERAGE_VALUEValue[] = value
end
const GL11_GL_SAMPLESValue = Ref{Any}(nothing)
const GL11_GL_SAMPLESSet = Ref(false)
function staticGet_GL_SAMPLES(::Type{GL11})
    if !GL11_GL_SAMPLESSet[]
        GL11_GL_SAMPLESSet[] = true
        GL11_GL_SAMPLESValue[] = Int32(32937)
    end
    GL11_GL_SAMPLESValue[]
end
function staticSet_GL_SAMPLES(::Type{GL11}, value)
    GL11_GL_SAMPLESSet[] = true
    GL11_GL_SAMPLESValue[] = value
end
const GL11_GL_SCISSOR_BOXValue = Ref{Any}(nothing)
const GL11_GL_SCISSOR_BOXSet = Ref(false)
function staticGet_GL_SCISSOR_BOX(::Type{GL11})
    if !GL11_GL_SCISSOR_BOXSet[]
        GL11_GL_SCISSOR_BOXSet[] = true
        GL11_GL_SCISSOR_BOXValue[] = Int32(3088)
    end
    GL11_GL_SCISSOR_BOXValue[]
end
function staticSet_GL_SCISSOR_BOX(::Type{GL11}, value)
    GL11_GL_SCISSOR_BOXSet[] = true
    GL11_GL_SCISSOR_BOXValue[] = value
end
const GL11_GL_SHADE_MODELValue = Ref{Any}(nothing)
const GL11_GL_SHADE_MODELSet = Ref(false)
function staticGet_GL_SHADE_MODEL(::Type{GL11})
    if !GL11_GL_SHADE_MODELSet[]
        GL11_GL_SHADE_MODELSet[] = true
        GL11_GL_SHADE_MODELValue[] = Int32(2900)
    end
    GL11_GL_SHADE_MODELValue[]
end
function staticSet_GL_SHADE_MODEL(::Type{GL11}, value)
    GL11_GL_SHADE_MODELSet[] = true
    GL11_GL_SHADE_MODELValue[] = value
end
const GL11_GL_SRC0_ALPHAValue = Ref{Any}(nothing)
const GL11_GL_SRC0_ALPHASet = Ref(false)
function staticGet_GL_SRC0_ALPHA(::Type{GL11})
    if !GL11_GL_SRC0_ALPHASet[]
        GL11_GL_SRC0_ALPHASet[] = true
        GL11_GL_SRC0_ALPHAValue[] = Int32(34184)
    end
    GL11_GL_SRC0_ALPHAValue[]
end
function staticSet_GL_SRC0_ALPHA(::Type{GL11}, value)
    GL11_GL_SRC0_ALPHASet[] = true
    GL11_GL_SRC0_ALPHAValue[] = value
end
const GL11_GL_SRC0_RGBValue = Ref{Any}(nothing)
const GL11_GL_SRC0_RGBSet = Ref(false)
function staticGet_GL_SRC0_RGB(::Type{GL11})
    if !GL11_GL_SRC0_RGBSet[]
        GL11_GL_SRC0_RGBSet[] = true
        GL11_GL_SRC0_RGBValue[] = Int32(34176)
    end
    GL11_GL_SRC0_RGBValue[]
end
function staticSet_GL_SRC0_RGB(::Type{GL11}, value)
    GL11_GL_SRC0_RGBSet[] = true
    GL11_GL_SRC0_RGBValue[] = value
end
const GL11_GL_SRC1_ALPHAValue = Ref{Any}(nothing)
const GL11_GL_SRC1_ALPHASet = Ref(false)
function staticGet_GL_SRC1_ALPHA(::Type{GL11})
    if !GL11_GL_SRC1_ALPHASet[]
        GL11_GL_SRC1_ALPHASet[] = true
        GL11_GL_SRC1_ALPHAValue[] = Int32(34185)
    end
    GL11_GL_SRC1_ALPHAValue[]
end
function staticSet_GL_SRC1_ALPHA(::Type{GL11}, value)
    GL11_GL_SRC1_ALPHASet[] = true
    GL11_GL_SRC1_ALPHAValue[] = value
end
const GL11_GL_SRC1_RGBValue = Ref{Any}(nothing)
const GL11_GL_SRC1_RGBSet = Ref(false)
function staticGet_GL_SRC1_RGB(::Type{GL11})
    if !GL11_GL_SRC1_RGBSet[]
        GL11_GL_SRC1_RGBSet[] = true
        GL11_GL_SRC1_RGBValue[] = Int32(34177)
    end
    GL11_GL_SRC1_RGBValue[]
end
function staticSet_GL_SRC1_RGB(::Type{GL11}, value)
    GL11_GL_SRC1_RGBSet[] = true
    GL11_GL_SRC1_RGBValue[] = value
end
const GL11_GL_SRC2_ALPHAValue = Ref{Any}(nothing)
const GL11_GL_SRC2_ALPHASet = Ref(false)
function staticGet_GL_SRC2_ALPHA(::Type{GL11})
    if !GL11_GL_SRC2_ALPHASet[]
        GL11_GL_SRC2_ALPHASet[] = true
        GL11_GL_SRC2_ALPHAValue[] = Int32(34186)
    end
    GL11_GL_SRC2_ALPHAValue[]
end
function staticSet_GL_SRC2_ALPHA(::Type{GL11}, value)
    GL11_GL_SRC2_ALPHASet[] = true
    GL11_GL_SRC2_ALPHAValue[] = value
end
const GL11_GL_SRC2_RGBValue = Ref{Any}(nothing)
const GL11_GL_SRC2_RGBSet = Ref(false)
function staticGet_GL_SRC2_RGB(::Type{GL11})
    if !GL11_GL_SRC2_RGBSet[]
        GL11_GL_SRC2_RGBSet[] = true
        GL11_GL_SRC2_RGBValue[] = Int32(34178)
    end
    GL11_GL_SRC2_RGBValue[]
end
function staticSet_GL_SRC2_RGB(::Type{GL11}, value)
    GL11_GL_SRC2_RGBSet[] = true
    GL11_GL_SRC2_RGBValue[] = value
end
const GL11_GL_STATIC_DRAWValue = Ref{Any}(nothing)
const GL11_GL_STATIC_DRAWSet = Ref(false)
function staticGet_GL_STATIC_DRAW(::Type{GL11})
    if !GL11_GL_STATIC_DRAWSet[]
        GL11_GL_STATIC_DRAWSet[] = true
        GL11_GL_STATIC_DRAWValue[] = Int32(35044)
    end
    GL11_GL_STATIC_DRAWValue[]
end
function staticSet_GL_STATIC_DRAW(::Type{GL11}, value)
    GL11_GL_STATIC_DRAWSet[] = true
    GL11_GL_STATIC_DRAWValue[] = value
end
const GL11_GL_STENCIL_CLEAR_VALUEValue = Ref{Any}(nothing)
const GL11_GL_STENCIL_CLEAR_VALUESet = Ref(false)
function staticGet_GL_STENCIL_CLEAR_VALUE(::Type{GL11})
    if !GL11_GL_STENCIL_CLEAR_VALUESet[]
        GL11_GL_STENCIL_CLEAR_VALUESet[] = true
        GL11_GL_STENCIL_CLEAR_VALUEValue[] = Int32(2961)
    end
    GL11_GL_STENCIL_CLEAR_VALUEValue[]
end
function staticSet_GL_STENCIL_CLEAR_VALUE(::Type{GL11}, value)
    GL11_GL_STENCIL_CLEAR_VALUESet[] = true
    GL11_GL_STENCIL_CLEAR_VALUEValue[] = value
end
const GL11_GL_STENCIL_FAILValue = Ref{Any}(nothing)
const GL11_GL_STENCIL_FAILSet = Ref(false)
function staticGet_GL_STENCIL_FAIL(::Type{GL11})
    if !GL11_GL_STENCIL_FAILSet[]
        GL11_GL_STENCIL_FAILSet[] = true
        GL11_GL_STENCIL_FAILValue[] = Int32(2964)
    end
    GL11_GL_STENCIL_FAILValue[]
end
function staticSet_GL_STENCIL_FAIL(::Type{GL11}, value)
    GL11_GL_STENCIL_FAILSet[] = true
    GL11_GL_STENCIL_FAILValue[] = value
end
const GL11_GL_STENCIL_FUNCValue = Ref{Any}(nothing)
const GL11_GL_STENCIL_FUNCSet = Ref(false)
function staticGet_GL_STENCIL_FUNC(::Type{GL11})
    if !GL11_GL_STENCIL_FUNCSet[]
        GL11_GL_STENCIL_FUNCSet[] = true
        GL11_GL_STENCIL_FUNCValue[] = Int32(2962)
    end
    GL11_GL_STENCIL_FUNCValue[]
end
function staticSet_GL_STENCIL_FUNC(::Type{GL11}, value)
    GL11_GL_STENCIL_FUNCSet[] = true
    GL11_GL_STENCIL_FUNCValue[] = value
end
const GL11_GL_STENCIL_PASS_DEPTH_FAILValue = Ref{Any}(nothing)
const GL11_GL_STENCIL_PASS_DEPTH_FAILSet = Ref(false)
function staticGet_GL_STENCIL_PASS_DEPTH_FAIL(::Type{GL11})
    if !GL11_GL_STENCIL_PASS_DEPTH_FAILSet[]
        GL11_GL_STENCIL_PASS_DEPTH_FAILSet[] = true
        GL11_GL_STENCIL_PASS_DEPTH_FAILValue[] = Int32(2965)
    end
    GL11_GL_STENCIL_PASS_DEPTH_FAILValue[]
end
function staticSet_GL_STENCIL_PASS_DEPTH_FAIL(::Type{GL11}, value)
    GL11_GL_STENCIL_PASS_DEPTH_FAILSet[] = true
    GL11_GL_STENCIL_PASS_DEPTH_FAILValue[] = value
end
const GL11_GL_STENCIL_PASS_DEPTH_PASSValue = Ref{Any}(nothing)
const GL11_GL_STENCIL_PASS_DEPTH_PASSSet = Ref(false)
function staticGet_GL_STENCIL_PASS_DEPTH_PASS(::Type{GL11})
    if !GL11_GL_STENCIL_PASS_DEPTH_PASSSet[]
        GL11_GL_STENCIL_PASS_DEPTH_PASSSet[] = true
        GL11_GL_STENCIL_PASS_DEPTH_PASSValue[] = Int32(2966)
    end
    GL11_GL_STENCIL_PASS_DEPTH_PASSValue[]
end
function staticSet_GL_STENCIL_PASS_DEPTH_PASS(::Type{GL11}, value)
    GL11_GL_STENCIL_PASS_DEPTH_PASSSet[] = true
    GL11_GL_STENCIL_PASS_DEPTH_PASSValue[] = value
end
const GL11_GL_STENCIL_REFValue = Ref{Any}(nothing)
const GL11_GL_STENCIL_REFSet = Ref(false)
function staticGet_GL_STENCIL_REF(::Type{GL11})
    if !GL11_GL_STENCIL_REFSet[]
        GL11_GL_STENCIL_REFSet[] = true
        GL11_GL_STENCIL_REFValue[] = Int32(2967)
    end
    GL11_GL_STENCIL_REFValue[]
end
function staticSet_GL_STENCIL_REF(::Type{GL11}, value)
    GL11_GL_STENCIL_REFSet[] = true
    GL11_GL_STENCIL_REFValue[] = value
end
const GL11_GL_STENCIL_VALUE_MASKValue = Ref{Any}(nothing)
const GL11_GL_STENCIL_VALUE_MASKSet = Ref(false)
function staticGet_GL_STENCIL_VALUE_MASK(::Type{GL11})
    if !GL11_GL_STENCIL_VALUE_MASKSet[]
        GL11_GL_STENCIL_VALUE_MASKSet[] = true
        GL11_GL_STENCIL_VALUE_MASKValue[] = Int32(2963)
    end
    GL11_GL_STENCIL_VALUE_MASKValue[]
end
function staticSet_GL_STENCIL_VALUE_MASK(::Type{GL11}, value)
    GL11_GL_STENCIL_VALUE_MASKSet[] = true
    GL11_GL_STENCIL_VALUE_MASKValue[] = value
end
const GL11_GL_STENCIL_WRITEMASKValue = Ref{Any}(nothing)
const GL11_GL_STENCIL_WRITEMASKSet = Ref(false)
function staticGet_GL_STENCIL_WRITEMASK(::Type{GL11})
    if !GL11_GL_STENCIL_WRITEMASKSet[]
        GL11_GL_STENCIL_WRITEMASKSet[] = true
        GL11_GL_STENCIL_WRITEMASKValue[] = Int32(2968)
    end
    GL11_GL_STENCIL_WRITEMASKValue[]
end
function staticSet_GL_STENCIL_WRITEMASK(::Type{GL11}, value)
    GL11_GL_STENCIL_WRITEMASKSet[] = true
    GL11_GL_STENCIL_WRITEMASKValue[] = value
end
const GL11_GL_SUBTRACTValue = Ref{Any}(nothing)
const GL11_GL_SUBTRACTSet = Ref(false)
function staticGet_GL_SUBTRACT(::Type{GL11})
    if !GL11_GL_SUBTRACTSet[]
        GL11_GL_SUBTRACTSet[] = true
        GL11_GL_SUBTRACTValue[] = Int32(34023)
    end
    GL11_GL_SUBTRACTValue[]
end
function staticSet_GL_SUBTRACT(::Type{GL11}, value)
    GL11_GL_SUBTRACTSet[] = true
    GL11_GL_SUBTRACTValue[] = value
end
const GL11_GL_TEXTURE_BINDING_2DValue = Ref{Any}(nothing)
const GL11_GL_TEXTURE_BINDING_2DSet = Ref(false)
function staticGet_GL_TEXTURE_BINDING_2D(::Type{GL11})
    if !GL11_GL_TEXTURE_BINDING_2DSet[]
        GL11_GL_TEXTURE_BINDING_2DSet[] = true
        GL11_GL_TEXTURE_BINDING_2DValue[] = Int32(32873)
    end
    GL11_GL_TEXTURE_BINDING_2DValue[]
end
function staticSet_GL_TEXTURE_BINDING_2D(::Type{GL11}, value)
    GL11_GL_TEXTURE_BINDING_2DSet[] = true
    GL11_GL_TEXTURE_BINDING_2DValue[] = value
end
const GL11_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGValue = Ref{Any}(nothing)
const GL11_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGSet = Ref(false)
function staticGet_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING(::Type{GL11})
    if !GL11_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGSet[]
        GL11_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGSet[] = true
        GL11_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGValue[] = Int32(34970)
    end
    GL11_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGValue[]
end
function staticSet_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING(::Type{GL11}, value)
    GL11_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGSet[] = true
    GL11_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGValue[] = value
end
const GL11_GL_TEXTURE_COORD_ARRAY_POINTERValue = Ref{Any}(nothing)
const GL11_GL_TEXTURE_COORD_ARRAY_POINTERSet = Ref(false)
function staticGet_GL_TEXTURE_COORD_ARRAY_POINTER(::Type{GL11})
    if !GL11_GL_TEXTURE_COORD_ARRAY_POINTERSet[]
        GL11_GL_TEXTURE_COORD_ARRAY_POINTERSet[] = true
        GL11_GL_TEXTURE_COORD_ARRAY_POINTERValue[] = Int32(32914)
    end
    GL11_GL_TEXTURE_COORD_ARRAY_POINTERValue[]
end
function staticSet_GL_TEXTURE_COORD_ARRAY_POINTER(::Type{GL11}, value)
    GL11_GL_TEXTURE_COORD_ARRAY_POINTERSet[] = true
    GL11_GL_TEXTURE_COORD_ARRAY_POINTERValue[] = value
end
const GL11_GL_TEXTURE_COORD_ARRAY_SIZEValue = Ref{Any}(nothing)
const GL11_GL_TEXTURE_COORD_ARRAY_SIZESet = Ref(false)
function staticGet_GL_TEXTURE_COORD_ARRAY_SIZE(::Type{GL11})
    if !GL11_GL_TEXTURE_COORD_ARRAY_SIZESet[]
        GL11_GL_TEXTURE_COORD_ARRAY_SIZESet[] = true
        GL11_GL_TEXTURE_COORD_ARRAY_SIZEValue[] = Int32(32904)
    end
    GL11_GL_TEXTURE_COORD_ARRAY_SIZEValue[]
end
function staticSet_GL_TEXTURE_COORD_ARRAY_SIZE(::Type{GL11}, value)
    GL11_GL_TEXTURE_COORD_ARRAY_SIZESet[] = true
    GL11_GL_TEXTURE_COORD_ARRAY_SIZEValue[] = value
end
const GL11_GL_TEXTURE_COORD_ARRAY_STRIDEValue = Ref{Any}(nothing)
const GL11_GL_TEXTURE_COORD_ARRAY_STRIDESet = Ref(false)
function staticGet_GL_TEXTURE_COORD_ARRAY_STRIDE(::Type{GL11})
    if !GL11_GL_TEXTURE_COORD_ARRAY_STRIDESet[]
        GL11_GL_TEXTURE_COORD_ARRAY_STRIDESet[] = true
        GL11_GL_TEXTURE_COORD_ARRAY_STRIDEValue[] = Int32(32906)
    end
    GL11_GL_TEXTURE_COORD_ARRAY_STRIDEValue[]
end
function staticSet_GL_TEXTURE_COORD_ARRAY_STRIDE(::Type{GL11}, value)
    GL11_GL_TEXTURE_COORD_ARRAY_STRIDESet[] = true
    GL11_GL_TEXTURE_COORD_ARRAY_STRIDEValue[] = value
end
const GL11_GL_TEXTURE_COORD_ARRAY_TYPEValue = Ref{Any}(nothing)
const GL11_GL_TEXTURE_COORD_ARRAY_TYPESet = Ref(false)
function staticGet_GL_TEXTURE_COORD_ARRAY_TYPE(::Type{GL11})
    if !GL11_GL_TEXTURE_COORD_ARRAY_TYPESet[]
        GL11_GL_TEXTURE_COORD_ARRAY_TYPESet[] = true
        GL11_GL_TEXTURE_COORD_ARRAY_TYPEValue[] = Int32(32905)
    end
    GL11_GL_TEXTURE_COORD_ARRAY_TYPEValue[]
end
function staticSet_GL_TEXTURE_COORD_ARRAY_TYPE(::Type{GL11}, value)
    GL11_GL_TEXTURE_COORD_ARRAY_TYPESet[] = true
    GL11_GL_TEXTURE_COORD_ARRAY_TYPEValue[] = value
end
const GL11_GL_TEXTURE_MATRIXValue = Ref{Any}(nothing)
const GL11_GL_TEXTURE_MATRIXSet = Ref(false)
function staticGet_GL_TEXTURE_MATRIX(::Type{GL11})
    if !GL11_GL_TEXTURE_MATRIXSet[]
        GL11_GL_TEXTURE_MATRIXSet[] = true
        GL11_GL_TEXTURE_MATRIXValue[] = Int32(2984)
    end
    GL11_GL_TEXTURE_MATRIXValue[]
end
function staticSet_GL_TEXTURE_MATRIX(::Type{GL11}, value)
    GL11_GL_TEXTURE_MATRIXSet[] = true
    GL11_GL_TEXTURE_MATRIXValue[] = value
end
const GL11_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESValue = Ref{Any}(nothing)
const GL11_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESSet = Ref(false)
function staticGet_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES(::Type{GL11})
    if !GL11_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESSet[]
        GL11_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESSet[] = true
        GL11_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESValue[] = Int32(35215)
    end
    GL11_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESValue[]
end
function staticSet_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES(::Type{GL11}, value)
    GL11_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESSet[] = true
    GL11_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESValue[] = value
end
const GL11_GL_TEXTURE_STACK_DEPTHValue = Ref{Any}(nothing)
const GL11_GL_TEXTURE_STACK_DEPTHSet = Ref(false)
function staticGet_GL_TEXTURE_STACK_DEPTH(::Type{GL11})
    if !GL11_GL_TEXTURE_STACK_DEPTHSet[]
        GL11_GL_TEXTURE_STACK_DEPTHSet[] = true
        GL11_GL_TEXTURE_STACK_DEPTHValue[] = Int32(2981)
    end
    GL11_GL_TEXTURE_STACK_DEPTHValue[]
end
function staticSet_GL_TEXTURE_STACK_DEPTH(::Type{GL11}, value)
    GL11_GL_TEXTURE_STACK_DEPTHSet[] = true
    GL11_GL_TEXTURE_STACK_DEPTHValue[] = value
end
const GL11_GL_VERTEX_ARRAY_BUFFER_BINDINGValue = Ref{Any}(nothing)
const GL11_GL_VERTEX_ARRAY_BUFFER_BINDINGSet = Ref(false)
function staticGet_GL_VERTEX_ARRAY_BUFFER_BINDING(::Type{GL11})
    if !GL11_GL_VERTEX_ARRAY_BUFFER_BINDINGSet[]
        GL11_GL_VERTEX_ARRAY_BUFFER_BINDINGSet[] = true
        GL11_GL_VERTEX_ARRAY_BUFFER_BINDINGValue[] = Int32(34966)
    end
    GL11_GL_VERTEX_ARRAY_BUFFER_BINDINGValue[]
end
function staticSet_GL_VERTEX_ARRAY_BUFFER_BINDING(::Type{GL11}, value)
    GL11_GL_VERTEX_ARRAY_BUFFER_BINDINGSet[] = true
    GL11_GL_VERTEX_ARRAY_BUFFER_BINDINGValue[] = value
end
const GL11_GL_VERTEX_ARRAY_POINTERValue = Ref{Any}(nothing)
const GL11_GL_VERTEX_ARRAY_POINTERSet = Ref(false)
function staticGet_GL_VERTEX_ARRAY_POINTER(::Type{GL11})
    if !GL11_GL_VERTEX_ARRAY_POINTERSet[]
        GL11_GL_VERTEX_ARRAY_POINTERSet[] = true
        GL11_GL_VERTEX_ARRAY_POINTERValue[] = Int32(32910)
    end
    GL11_GL_VERTEX_ARRAY_POINTERValue[]
end
function staticSet_GL_VERTEX_ARRAY_POINTER(::Type{GL11}, value)
    GL11_GL_VERTEX_ARRAY_POINTERSet[] = true
    GL11_GL_VERTEX_ARRAY_POINTERValue[] = value
end
const GL11_GL_VERTEX_ARRAY_SIZEValue = Ref{Any}(nothing)
const GL11_GL_VERTEX_ARRAY_SIZESet = Ref(false)
function staticGet_GL_VERTEX_ARRAY_SIZE(::Type{GL11})
    if !GL11_GL_VERTEX_ARRAY_SIZESet[]
        GL11_GL_VERTEX_ARRAY_SIZESet[] = true
        GL11_GL_VERTEX_ARRAY_SIZEValue[] = Int32(32890)
    end
    GL11_GL_VERTEX_ARRAY_SIZEValue[]
end
function staticSet_GL_VERTEX_ARRAY_SIZE(::Type{GL11}, value)
    GL11_GL_VERTEX_ARRAY_SIZESet[] = true
    GL11_GL_VERTEX_ARRAY_SIZEValue[] = value
end
const GL11_GL_VERTEX_ARRAY_STRIDEValue = Ref{Any}(nothing)
const GL11_GL_VERTEX_ARRAY_STRIDESet = Ref(false)
function staticGet_GL_VERTEX_ARRAY_STRIDE(::Type{GL11})
    if !GL11_GL_VERTEX_ARRAY_STRIDESet[]
        GL11_GL_VERTEX_ARRAY_STRIDESet[] = true
        GL11_GL_VERTEX_ARRAY_STRIDEValue[] = Int32(32892)
    end
    GL11_GL_VERTEX_ARRAY_STRIDEValue[]
end
function staticSet_GL_VERTEX_ARRAY_STRIDE(::Type{GL11}, value)
    GL11_GL_VERTEX_ARRAY_STRIDESet[] = true
    GL11_GL_VERTEX_ARRAY_STRIDEValue[] = value
end
const GL11_GL_VERTEX_ARRAY_TYPEValue = Ref{Any}(nothing)
const GL11_GL_VERTEX_ARRAY_TYPESet = Ref(false)
function staticGet_GL_VERTEX_ARRAY_TYPE(::Type{GL11})
    if !GL11_GL_VERTEX_ARRAY_TYPESet[]
        GL11_GL_VERTEX_ARRAY_TYPESet[] = true
        GL11_GL_VERTEX_ARRAY_TYPEValue[] = Int32(32891)
    end
    GL11_GL_VERTEX_ARRAY_TYPEValue[]
end
function staticSet_GL_VERTEX_ARRAY_TYPE(::Type{GL11}, value)
    GL11_GL_VERTEX_ARRAY_TYPESet[] = true
    GL11_GL_VERTEX_ARRAY_TYPEValue[] = value
end
const GL11_GL_VIEWPORTValue = Ref{Any}(nothing)
const GL11_GL_VIEWPORTSet = Ref(false)
function staticGet_GL_VIEWPORT(::Type{GL11})
    if !GL11_GL_VIEWPORTSet[]
        GL11_GL_VIEWPORTSet[] = true
        GL11_GL_VIEWPORTValue[] = Int32(2978)
    end
    GL11_GL_VIEWPORTValue[]
end
function staticSet_GL_VIEWPORT(::Type{GL11}, value)
    GL11_GL_VIEWPORTSet[] = true
    GL11_GL_VIEWPORTValue[] = value
end
const GL11_GL_WRITE_ONLYValue = Ref{Any}(nothing)
const GL11_GL_WRITE_ONLYSet = Ref(false)
function staticGet_GL_WRITE_ONLY(::Type{GL11})
    if !GL11_GL_WRITE_ONLYSet[]
        GL11_GL_WRITE_ONLYSet[] = true
        GL11_GL_WRITE_ONLYValue[] = Int32(35001)
    end
    GL11_GL_WRITE_ONLYValue[]
end
function staticSet_GL_WRITE_ONLY(::Type{GL11}, value)
    GL11_GL_WRITE_ONLYSet[] = true
    GL11_GL_WRITE_ONLYValue[] = value
end

