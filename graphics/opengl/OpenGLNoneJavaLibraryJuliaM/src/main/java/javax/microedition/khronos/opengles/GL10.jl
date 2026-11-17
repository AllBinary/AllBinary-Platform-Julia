# Generated Code Do Not Modify
# package javax.microedition.khronos.opengles

# Java interface GL10: Julia dispatches on the class so an interface is an abstract type
abstract type GL10 <: JObject end

const GL10_GL_ADDValue = Ref{Any}(nothing)
const GL10_GL_ADDSet = Ref(false)
function staticGet_GL_ADD(::Type{GL10})
    if !GL10_GL_ADDSet[]
        GL10_GL_ADDSet[] = true
        GL10_GL_ADDValue[] = Int32(260)
    end
    GL10_GL_ADDValue[]
end
function staticSet_GL_ADD(::Type{GL10}, value)
    GL10_GL_ADDSet[] = true
    GL10_GL_ADDValue[] = value
end
const GL10_GL_ALIASED_LINE_WIDTH_RANGEValue = Ref{Any}(nothing)
const GL10_GL_ALIASED_LINE_WIDTH_RANGESet = Ref(false)
function staticGet_GL_ALIASED_LINE_WIDTH_RANGE(::Type{GL10})
    if !GL10_GL_ALIASED_LINE_WIDTH_RANGESet[]
        GL10_GL_ALIASED_LINE_WIDTH_RANGESet[] = true
        GL10_GL_ALIASED_LINE_WIDTH_RANGEValue[] = Int32(33902)
    end
    GL10_GL_ALIASED_LINE_WIDTH_RANGEValue[]
end
function staticSet_GL_ALIASED_LINE_WIDTH_RANGE(::Type{GL10}, value)
    GL10_GL_ALIASED_LINE_WIDTH_RANGESet[] = true
    GL10_GL_ALIASED_LINE_WIDTH_RANGEValue[] = value
end
const GL10_GL_ALIASED_POINT_SIZE_RANGEValue = Ref{Any}(nothing)
const GL10_GL_ALIASED_POINT_SIZE_RANGESet = Ref(false)
function staticGet_GL_ALIASED_POINT_SIZE_RANGE(::Type{GL10})
    if !GL10_GL_ALIASED_POINT_SIZE_RANGESet[]
        GL10_GL_ALIASED_POINT_SIZE_RANGESet[] = true
        GL10_GL_ALIASED_POINT_SIZE_RANGEValue[] = Int32(33901)
    end
    GL10_GL_ALIASED_POINT_SIZE_RANGEValue[]
end
function staticSet_GL_ALIASED_POINT_SIZE_RANGE(::Type{GL10}, value)
    GL10_GL_ALIASED_POINT_SIZE_RANGESet[] = true
    GL10_GL_ALIASED_POINT_SIZE_RANGEValue[] = value
end
const GL10_GL_ALPHAValue = Ref{Any}(nothing)
const GL10_GL_ALPHASet = Ref(false)
function staticGet_GL_ALPHA(::Type{GL10})
    if !GL10_GL_ALPHASet[]
        GL10_GL_ALPHASet[] = true
        GL10_GL_ALPHAValue[] = Int32(6406)
    end
    GL10_GL_ALPHAValue[]
end
function staticSet_GL_ALPHA(::Type{GL10}, value)
    GL10_GL_ALPHASet[] = true
    GL10_GL_ALPHAValue[] = value
end
const GL10_GL_ALPHA_BITSValue = Ref{Any}(nothing)
const GL10_GL_ALPHA_BITSSet = Ref(false)
function staticGet_GL_ALPHA_BITS(::Type{GL10})
    if !GL10_GL_ALPHA_BITSSet[]
        GL10_GL_ALPHA_BITSSet[] = true
        GL10_GL_ALPHA_BITSValue[] = Int32(3413)
    end
    GL10_GL_ALPHA_BITSValue[]
end
function staticSet_GL_ALPHA_BITS(::Type{GL10}, value)
    GL10_GL_ALPHA_BITSSet[] = true
    GL10_GL_ALPHA_BITSValue[] = value
end
const GL10_GL_ALPHA_TESTValue = Ref{Any}(nothing)
const GL10_GL_ALPHA_TESTSet = Ref(false)
function staticGet_GL_ALPHA_TEST(::Type{GL10})
    if !GL10_GL_ALPHA_TESTSet[]
        GL10_GL_ALPHA_TESTSet[] = true
        GL10_GL_ALPHA_TESTValue[] = Int32(3008)
    end
    GL10_GL_ALPHA_TESTValue[]
end
function staticSet_GL_ALPHA_TEST(::Type{GL10}, value)
    GL10_GL_ALPHA_TESTSet[] = true
    GL10_GL_ALPHA_TESTValue[] = value
end
const GL10_GL_ALWAYSValue = Ref{Any}(nothing)
const GL10_GL_ALWAYSSet = Ref(false)
function staticGet_GL_ALWAYS(::Type{GL10})
    if !GL10_GL_ALWAYSSet[]
        GL10_GL_ALWAYSSet[] = true
        GL10_GL_ALWAYSValue[] = Int32(519)
    end
    GL10_GL_ALWAYSValue[]
end
function staticSet_GL_ALWAYS(::Type{GL10}, value)
    GL10_GL_ALWAYSSet[] = true
    GL10_GL_ALWAYSValue[] = value
end
const GL10_GL_AMBIENTValue = Ref{Any}(nothing)
const GL10_GL_AMBIENTSet = Ref(false)
function staticGet_GL_AMBIENT(::Type{GL10})
    if !GL10_GL_AMBIENTSet[]
        GL10_GL_AMBIENTSet[] = true
        GL10_GL_AMBIENTValue[] = Int32(4608)
    end
    GL10_GL_AMBIENTValue[]
end
function staticSet_GL_AMBIENT(::Type{GL10}, value)
    GL10_GL_AMBIENTSet[] = true
    GL10_GL_AMBIENTValue[] = value
end
const GL10_GL_AMBIENT_AND_DIFFUSEValue = Ref{Any}(nothing)
const GL10_GL_AMBIENT_AND_DIFFUSESet = Ref(false)
function staticGet_GL_AMBIENT_AND_DIFFUSE(::Type{GL10})
    if !GL10_GL_AMBIENT_AND_DIFFUSESet[]
        GL10_GL_AMBIENT_AND_DIFFUSESet[] = true
        GL10_GL_AMBIENT_AND_DIFFUSEValue[] = Int32(5634)
    end
    GL10_GL_AMBIENT_AND_DIFFUSEValue[]
end
function staticSet_GL_AMBIENT_AND_DIFFUSE(::Type{GL10}, value)
    GL10_GL_AMBIENT_AND_DIFFUSESet[] = true
    GL10_GL_AMBIENT_AND_DIFFUSEValue[] = value
end
const GL10_GL_ANDValue = Ref{Any}(nothing)
const GL10_GL_ANDSet = Ref(false)
function staticGet_GL_AND(::Type{GL10})
    if !GL10_GL_ANDSet[]
        GL10_GL_ANDSet[] = true
        GL10_GL_ANDValue[] = Int32(5377)
    end
    GL10_GL_ANDValue[]
end
function staticSet_GL_AND(::Type{GL10}, value)
    GL10_GL_ANDSet[] = true
    GL10_GL_ANDValue[] = value
end
const GL10_GL_AND_INVERTEDValue = Ref{Any}(nothing)
const GL10_GL_AND_INVERTEDSet = Ref(false)
function staticGet_GL_AND_INVERTED(::Type{GL10})
    if !GL10_GL_AND_INVERTEDSet[]
        GL10_GL_AND_INVERTEDSet[] = true
        GL10_GL_AND_INVERTEDValue[] = Int32(5380)
    end
    GL10_GL_AND_INVERTEDValue[]
end
function staticSet_GL_AND_INVERTED(::Type{GL10}, value)
    GL10_GL_AND_INVERTEDSet[] = true
    GL10_GL_AND_INVERTEDValue[] = value
end
const GL10_GL_AND_REVERSEValue = Ref{Any}(nothing)
const GL10_GL_AND_REVERSESet = Ref(false)
function staticGet_GL_AND_REVERSE(::Type{GL10})
    if !GL10_GL_AND_REVERSESet[]
        GL10_GL_AND_REVERSESet[] = true
        GL10_GL_AND_REVERSEValue[] = Int32(5378)
    end
    GL10_GL_AND_REVERSEValue[]
end
function staticSet_GL_AND_REVERSE(::Type{GL10}, value)
    GL10_GL_AND_REVERSESet[] = true
    GL10_GL_AND_REVERSEValue[] = value
end
const GL10_GL_BACKValue = Ref{Any}(nothing)
const GL10_GL_BACKSet = Ref(false)
function staticGet_GL_BACK(::Type{GL10})
    if !GL10_GL_BACKSet[]
        GL10_GL_BACKSet[] = true
        GL10_GL_BACKValue[] = Int32(1029)
    end
    GL10_GL_BACKValue[]
end
function staticSet_GL_BACK(::Type{GL10}, value)
    GL10_GL_BACKSet[] = true
    GL10_GL_BACKValue[] = value
end
const GL10_GL_BLENDValue = Ref{Any}(nothing)
const GL10_GL_BLENDSet = Ref(false)
function staticGet_GL_BLEND(::Type{GL10})
    if !GL10_GL_BLENDSet[]
        GL10_GL_BLENDSet[] = true
        GL10_GL_BLENDValue[] = Int32(3042)
    end
    GL10_GL_BLENDValue[]
end
function staticSet_GL_BLEND(::Type{GL10}, value)
    GL10_GL_BLENDSet[] = true
    GL10_GL_BLENDValue[] = value
end
const GL10_GL_BLUE_BITSValue = Ref{Any}(nothing)
const GL10_GL_BLUE_BITSSet = Ref(false)
function staticGet_GL_BLUE_BITS(::Type{GL10})
    if !GL10_GL_BLUE_BITSSet[]
        GL10_GL_BLUE_BITSSet[] = true
        GL10_GL_BLUE_BITSValue[] = Int32(3412)
    end
    GL10_GL_BLUE_BITSValue[]
end
function staticSet_GL_BLUE_BITS(::Type{GL10}, value)
    GL10_GL_BLUE_BITSSet[] = true
    GL10_GL_BLUE_BITSValue[] = value
end
const GL10_GL_BYTEValue = Ref{Any}(nothing)
const GL10_GL_BYTESet = Ref(false)
function staticGet_GL_BYTE(::Type{GL10})
    if !GL10_GL_BYTESet[]
        GL10_GL_BYTESet[] = true
        GL10_GL_BYTEValue[] = Int32(5120)
    end
    GL10_GL_BYTEValue[]
end
function staticSet_GL_BYTE(::Type{GL10}, value)
    GL10_GL_BYTESet[] = true
    GL10_GL_BYTEValue[] = value
end
const GL10_GL_CCWValue = Ref{Any}(nothing)
const GL10_GL_CCWSet = Ref(false)
function staticGet_GL_CCW(::Type{GL10})
    if !GL10_GL_CCWSet[]
        GL10_GL_CCWSet[] = true
        GL10_GL_CCWValue[] = Int32(2305)
    end
    GL10_GL_CCWValue[]
end
function staticSet_GL_CCW(::Type{GL10}, value)
    GL10_GL_CCWSet[] = true
    GL10_GL_CCWValue[] = value
end
const GL10_GL_CLAMP_TO_EDGEValue = Ref{Any}(nothing)
const GL10_GL_CLAMP_TO_EDGESet = Ref(false)
function staticGet_GL_CLAMP_TO_EDGE(::Type{GL10})
    if !GL10_GL_CLAMP_TO_EDGESet[]
        GL10_GL_CLAMP_TO_EDGESet[] = true
        GL10_GL_CLAMP_TO_EDGEValue[] = Int32(33071)
    end
    GL10_GL_CLAMP_TO_EDGEValue[]
end
function staticSet_GL_CLAMP_TO_EDGE(::Type{GL10}, value)
    GL10_GL_CLAMP_TO_EDGESet[] = true
    GL10_GL_CLAMP_TO_EDGEValue[] = value
end
const GL10_GL_CLEARValue = Ref{Any}(nothing)
const GL10_GL_CLEARSet = Ref(false)
function staticGet_GL_CLEAR(::Type{GL10})
    if !GL10_GL_CLEARSet[]
        GL10_GL_CLEARSet[] = true
        GL10_GL_CLEARValue[] = Int32(5376)
    end
    GL10_GL_CLEARValue[]
end
function staticSet_GL_CLEAR(::Type{GL10}, value)
    GL10_GL_CLEARSet[] = true
    GL10_GL_CLEARValue[] = value
end
const GL10_GL_COLOR_ARRAYValue = Ref{Any}(nothing)
const GL10_GL_COLOR_ARRAYSet = Ref(false)
function staticGet_GL_COLOR_ARRAY(::Type{GL10})
    if !GL10_GL_COLOR_ARRAYSet[]
        GL10_GL_COLOR_ARRAYSet[] = true
        GL10_GL_COLOR_ARRAYValue[] = Int32(32886)
    end
    GL10_GL_COLOR_ARRAYValue[]
end
function staticSet_GL_COLOR_ARRAY(::Type{GL10}, value)
    GL10_GL_COLOR_ARRAYSet[] = true
    GL10_GL_COLOR_ARRAYValue[] = value
end
const GL10_GL_COLOR_BUFFER_BITValue = Ref{Any}(nothing)
const GL10_GL_COLOR_BUFFER_BITSet = Ref(false)
function staticGet_GL_COLOR_BUFFER_BIT(::Type{GL10})
    if !GL10_GL_COLOR_BUFFER_BITSet[]
        GL10_GL_COLOR_BUFFER_BITSet[] = true
        GL10_GL_COLOR_BUFFER_BITValue[] = Int32(16384)
    end
    GL10_GL_COLOR_BUFFER_BITValue[]
end
function staticSet_GL_COLOR_BUFFER_BIT(::Type{GL10}, value)
    GL10_GL_COLOR_BUFFER_BITSet[] = true
    GL10_GL_COLOR_BUFFER_BITValue[] = value
end
const GL10_GL_COLOR_LOGIC_OPValue = Ref{Any}(nothing)
const GL10_GL_COLOR_LOGIC_OPSet = Ref(false)
function staticGet_GL_COLOR_LOGIC_OP(::Type{GL10})
    if !GL10_GL_COLOR_LOGIC_OPSet[]
        GL10_GL_COLOR_LOGIC_OPSet[] = true
        GL10_GL_COLOR_LOGIC_OPValue[] = Int32(3058)
    end
    GL10_GL_COLOR_LOGIC_OPValue[]
end
function staticSet_GL_COLOR_LOGIC_OP(::Type{GL10}, value)
    GL10_GL_COLOR_LOGIC_OPSet[] = true
    GL10_GL_COLOR_LOGIC_OPValue[] = value
end
const GL10_GL_COLOR_MATERIALValue = Ref{Any}(nothing)
const GL10_GL_COLOR_MATERIALSet = Ref(false)
function staticGet_GL_COLOR_MATERIAL(::Type{GL10})
    if !GL10_GL_COLOR_MATERIALSet[]
        GL10_GL_COLOR_MATERIALSet[] = true
        GL10_GL_COLOR_MATERIALValue[] = Int32(2903)
    end
    GL10_GL_COLOR_MATERIALValue[]
end
function staticSet_GL_COLOR_MATERIAL(::Type{GL10}, value)
    GL10_GL_COLOR_MATERIALSet[] = true
    GL10_GL_COLOR_MATERIALValue[] = value
end
const GL10_GL_COMPRESSED_TEXTURE_FORMATSValue = Ref{Any}(nothing)
const GL10_GL_COMPRESSED_TEXTURE_FORMATSSet = Ref(false)
function staticGet_GL_COMPRESSED_TEXTURE_FORMATS(::Type{GL10})
    if !GL10_GL_COMPRESSED_TEXTURE_FORMATSSet[]
        GL10_GL_COMPRESSED_TEXTURE_FORMATSSet[] = true
        GL10_GL_COMPRESSED_TEXTURE_FORMATSValue[] = Int32(34467)
    end
    GL10_GL_COMPRESSED_TEXTURE_FORMATSValue[]
end
function staticSet_GL_COMPRESSED_TEXTURE_FORMATS(::Type{GL10}, value)
    GL10_GL_COMPRESSED_TEXTURE_FORMATSSet[] = true
    GL10_GL_COMPRESSED_TEXTURE_FORMATSValue[] = value
end
const GL10_GL_CONSTANT_ATTENUATIONValue = Ref{Any}(nothing)
const GL10_GL_CONSTANT_ATTENUATIONSet = Ref(false)
function staticGet_GL_CONSTANT_ATTENUATION(::Type{GL10})
    if !GL10_GL_CONSTANT_ATTENUATIONSet[]
        GL10_GL_CONSTANT_ATTENUATIONSet[] = true
        GL10_GL_CONSTANT_ATTENUATIONValue[] = Int32(4615)
    end
    GL10_GL_CONSTANT_ATTENUATIONValue[]
end
function staticSet_GL_CONSTANT_ATTENUATION(::Type{GL10}, value)
    GL10_GL_CONSTANT_ATTENUATIONSet[] = true
    GL10_GL_CONSTANT_ATTENUATIONValue[] = value
end
const GL10_GL_COPYValue = Ref{Any}(nothing)
const GL10_GL_COPYSet = Ref(false)
function staticGet_GL_COPY(::Type{GL10})
    if !GL10_GL_COPYSet[]
        GL10_GL_COPYSet[] = true
        GL10_GL_COPYValue[] = Int32(5379)
    end
    GL10_GL_COPYValue[]
end
function staticSet_GL_COPY(::Type{GL10}, value)
    GL10_GL_COPYSet[] = true
    GL10_GL_COPYValue[] = value
end
const GL10_GL_COPY_INVERTEDValue = Ref{Any}(nothing)
const GL10_GL_COPY_INVERTEDSet = Ref(false)
function staticGet_GL_COPY_INVERTED(::Type{GL10})
    if !GL10_GL_COPY_INVERTEDSet[]
        GL10_GL_COPY_INVERTEDSet[] = true
        GL10_GL_COPY_INVERTEDValue[] = Int32(5388)
    end
    GL10_GL_COPY_INVERTEDValue[]
end
function staticSet_GL_COPY_INVERTED(::Type{GL10}, value)
    GL10_GL_COPY_INVERTEDSet[] = true
    GL10_GL_COPY_INVERTEDValue[] = value
end
const GL10_GL_CULL_FACEValue = Ref{Any}(nothing)
const GL10_GL_CULL_FACESet = Ref(false)
function staticGet_GL_CULL_FACE(::Type{GL10})
    if !GL10_GL_CULL_FACESet[]
        GL10_GL_CULL_FACESet[] = true
        GL10_GL_CULL_FACEValue[] = Int32(2884)
    end
    GL10_GL_CULL_FACEValue[]
end
function staticSet_GL_CULL_FACE(::Type{GL10}, value)
    GL10_GL_CULL_FACESet[] = true
    GL10_GL_CULL_FACEValue[] = value
end
const GL10_GL_CWValue = Ref{Any}(nothing)
const GL10_GL_CWSet = Ref(false)
function staticGet_GL_CW(::Type{GL10})
    if !GL10_GL_CWSet[]
        GL10_GL_CWSet[] = true
        GL10_GL_CWValue[] = Int32(2304)
    end
    GL10_GL_CWValue[]
end
function staticSet_GL_CW(::Type{GL10}, value)
    GL10_GL_CWSet[] = true
    GL10_GL_CWValue[] = value
end
const GL10_GL_DECALValue = Ref{Any}(nothing)
const GL10_GL_DECALSet = Ref(false)
function staticGet_GL_DECAL(::Type{GL10})
    if !GL10_GL_DECALSet[]
        GL10_GL_DECALSet[] = true
        GL10_GL_DECALValue[] = Int32(8449)
    end
    GL10_GL_DECALValue[]
end
function staticSet_GL_DECAL(::Type{GL10}, value)
    GL10_GL_DECALSet[] = true
    GL10_GL_DECALValue[] = value
end
const GL10_GL_DECRValue = Ref{Any}(nothing)
const GL10_GL_DECRSet = Ref(false)
function staticGet_GL_DECR(::Type{GL10})
    if !GL10_GL_DECRSet[]
        GL10_GL_DECRSet[] = true
        GL10_GL_DECRValue[] = Int32(7683)
    end
    GL10_GL_DECRValue[]
end
function staticSet_GL_DECR(::Type{GL10}, value)
    GL10_GL_DECRSet[] = true
    GL10_GL_DECRValue[] = value
end
const GL10_GL_DEPTH_BITSValue = Ref{Any}(nothing)
const GL10_GL_DEPTH_BITSSet = Ref(false)
function staticGet_GL_DEPTH_BITS(::Type{GL10})
    if !GL10_GL_DEPTH_BITSSet[]
        GL10_GL_DEPTH_BITSSet[] = true
        GL10_GL_DEPTH_BITSValue[] = Int32(3414)
    end
    GL10_GL_DEPTH_BITSValue[]
end
function staticSet_GL_DEPTH_BITS(::Type{GL10}, value)
    GL10_GL_DEPTH_BITSSet[] = true
    GL10_GL_DEPTH_BITSValue[] = value
end
const GL10_GL_DEPTH_BUFFER_BITValue = Ref{Any}(nothing)
const GL10_GL_DEPTH_BUFFER_BITSet = Ref(false)
function staticGet_GL_DEPTH_BUFFER_BIT(::Type{GL10})
    if !GL10_GL_DEPTH_BUFFER_BITSet[]
        GL10_GL_DEPTH_BUFFER_BITSet[] = true
        GL10_GL_DEPTH_BUFFER_BITValue[] = Int32(256)
    end
    GL10_GL_DEPTH_BUFFER_BITValue[]
end
function staticSet_GL_DEPTH_BUFFER_BIT(::Type{GL10}, value)
    GL10_GL_DEPTH_BUFFER_BITSet[] = true
    GL10_GL_DEPTH_BUFFER_BITValue[] = value
end
const GL10_GL_DEPTH_TESTValue = Ref{Any}(nothing)
const GL10_GL_DEPTH_TESTSet = Ref(false)
function staticGet_GL_DEPTH_TEST(::Type{GL10})
    if !GL10_GL_DEPTH_TESTSet[]
        GL10_GL_DEPTH_TESTSet[] = true
        GL10_GL_DEPTH_TESTValue[] = Int32(2929)
    end
    GL10_GL_DEPTH_TESTValue[]
end
function staticSet_GL_DEPTH_TEST(::Type{GL10}, value)
    GL10_GL_DEPTH_TESTSet[] = true
    GL10_GL_DEPTH_TESTValue[] = value
end
const GL10_GL_DIFFUSEValue = Ref{Any}(nothing)
const GL10_GL_DIFFUSESet = Ref(false)
function staticGet_GL_DIFFUSE(::Type{GL10})
    if !GL10_GL_DIFFUSESet[]
        GL10_GL_DIFFUSESet[] = true
        GL10_GL_DIFFUSEValue[] = Int32(4609)
    end
    GL10_GL_DIFFUSEValue[]
end
function staticSet_GL_DIFFUSE(::Type{GL10}, value)
    GL10_GL_DIFFUSESet[] = true
    GL10_GL_DIFFUSEValue[] = value
end
const GL10_GL_DITHERValue = Ref{Any}(nothing)
const GL10_GL_DITHERSet = Ref(false)
function staticGet_GL_DITHER(::Type{GL10})
    if !GL10_GL_DITHERSet[]
        GL10_GL_DITHERSet[] = true
        GL10_GL_DITHERValue[] = Int32(3024)
    end
    GL10_GL_DITHERValue[]
end
function staticSet_GL_DITHER(::Type{GL10}, value)
    GL10_GL_DITHERSet[] = true
    GL10_GL_DITHERValue[] = value
end
const GL10_GL_DONT_CAREValue = Ref{Any}(nothing)
const GL10_GL_DONT_CARESet = Ref(false)
function staticGet_GL_DONT_CARE(::Type{GL10})
    if !GL10_GL_DONT_CARESet[]
        GL10_GL_DONT_CARESet[] = true
        GL10_GL_DONT_CAREValue[] = Int32(4352)
    end
    GL10_GL_DONT_CAREValue[]
end
function staticSet_GL_DONT_CARE(::Type{GL10}, value)
    GL10_GL_DONT_CARESet[] = true
    GL10_GL_DONT_CAREValue[] = value
end
const GL10_GL_DST_ALPHAValue = Ref{Any}(nothing)
const GL10_GL_DST_ALPHASet = Ref(false)
function staticGet_GL_DST_ALPHA(::Type{GL10})
    if !GL10_GL_DST_ALPHASet[]
        GL10_GL_DST_ALPHASet[] = true
        GL10_GL_DST_ALPHAValue[] = Int32(772)
    end
    GL10_GL_DST_ALPHAValue[]
end
function staticSet_GL_DST_ALPHA(::Type{GL10}, value)
    GL10_GL_DST_ALPHASet[] = true
    GL10_GL_DST_ALPHAValue[] = value
end
const GL10_GL_DST_COLORValue = Ref{Any}(nothing)
const GL10_GL_DST_COLORSet = Ref(false)
function staticGet_GL_DST_COLOR(::Type{GL10})
    if !GL10_GL_DST_COLORSet[]
        GL10_GL_DST_COLORSet[] = true
        GL10_GL_DST_COLORValue[] = Int32(774)
    end
    GL10_GL_DST_COLORValue[]
end
function staticSet_GL_DST_COLOR(::Type{GL10}, value)
    GL10_GL_DST_COLORSet[] = true
    GL10_GL_DST_COLORValue[] = value
end
const GL10_GL_EMISSIONValue = Ref{Any}(nothing)
const GL10_GL_EMISSIONSet = Ref(false)
function staticGet_GL_EMISSION(::Type{GL10})
    if !GL10_GL_EMISSIONSet[]
        GL10_GL_EMISSIONSet[] = true
        GL10_GL_EMISSIONValue[] = Int32(5632)
    end
    GL10_GL_EMISSIONValue[]
end
function staticSet_GL_EMISSION(::Type{GL10}, value)
    GL10_GL_EMISSIONSet[] = true
    GL10_GL_EMISSIONValue[] = value
end
const GL10_GL_EQUALValue = Ref{Any}(nothing)
const GL10_GL_EQUALSet = Ref(false)
function staticGet_GL_EQUAL(::Type{GL10})
    if !GL10_GL_EQUALSet[]
        GL10_GL_EQUALSet[] = true
        GL10_GL_EQUALValue[] = Int32(514)
    end
    GL10_GL_EQUALValue[]
end
function staticSet_GL_EQUAL(::Type{GL10}, value)
    GL10_GL_EQUALSet[] = true
    GL10_GL_EQUALValue[] = value
end
const GL10_GL_EQUIVValue = Ref{Any}(nothing)
const GL10_GL_EQUIVSet = Ref(false)
function staticGet_GL_EQUIV(::Type{GL10})
    if !GL10_GL_EQUIVSet[]
        GL10_GL_EQUIVSet[] = true
        GL10_GL_EQUIVValue[] = Int32(5385)
    end
    GL10_GL_EQUIVValue[]
end
function staticSet_GL_EQUIV(::Type{GL10}, value)
    GL10_GL_EQUIVSet[] = true
    GL10_GL_EQUIVValue[] = value
end
const GL10_GL_EXPValue = Ref{Any}(nothing)
const GL10_GL_EXPSet = Ref(false)
function staticGet_GL_EXP(::Type{GL10})
    if !GL10_GL_EXPSet[]
        GL10_GL_EXPSet[] = true
        GL10_GL_EXPValue[] = Int32(2048)
    end
    GL10_GL_EXPValue[]
end
function staticSet_GL_EXP(::Type{GL10}, value)
    GL10_GL_EXPSet[] = true
    GL10_GL_EXPValue[] = value
end
const GL10_GL_EXP2Value = Ref{Any}(nothing)
const GL10_GL_EXP2Set = Ref(false)
function staticGet_GL_EXP2(::Type{GL10})
    if !GL10_GL_EXP2Set[]
        GL10_GL_EXP2Set[] = true
        GL10_GL_EXP2Value[] = Int32(2049)
    end
    GL10_GL_EXP2Value[]
end
function staticSet_GL_EXP2(::Type{GL10}, value)
    GL10_GL_EXP2Set[] = true
    GL10_GL_EXP2Value[] = value
end
const GL10_GL_EXTENSIONSValue = Ref{Any}(nothing)
const GL10_GL_EXTENSIONSSet = Ref(false)
function staticGet_GL_EXTENSIONS(::Type{GL10})
    if !GL10_GL_EXTENSIONSSet[]
        GL10_GL_EXTENSIONSSet[] = true
        GL10_GL_EXTENSIONSValue[] = Int32(7939)
    end
    GL10_GL_EXTENSIONSValue[]
end
function staticSet_GL_EXTENSIONS(::Type{GL10}, value)
    GL10_GL_EXTENSIONSSet[] = true
    GL10_GL_EXTENSIONSValue[] = value
end
const GL10_GL_FALSEValue = Ref{Any}(nothing)
const GL10_GL_FALSESet = Ref(false)
function staticGet_GL_FALSE(::Type{GL10})
    if !GL10_GL_FALSESet[]
        GL10_GL_FALSESet[] = true
        GL10_GL_FALSEValue[] = Int32(0)
    end
    GL10_GL_FALSEValue[]
end
function staticSet_GL_FALSE(::Type{GL10}, value)
    GL10_GL_FALSESet[] = true
    GL10_GL_FALSEValue[] = value
end
const GL10_GL_FASTESTValue = Ref{Any}(nothing)
const GL10_GL_FASTESTSet = Ref(false)
function staticGet_GL_FASTEST(::Type{GL10})
    if !GL10_GL_FASTESTSet[]
        GL10_GL_FASTESTSet[] = true
        GL10_GL_FASTESTValue[] = Int32(4353)
    end
    GL10_GL_FASTESTValue[]
end
function staticSet_GL_FASTEST(::Type{GL10}, value)
    GL10_GL_FASTESTSet[] = true
    GL10_GL_FASTESTValue[] = value
end
const GL10_GL_FIXEDValue = Ref{Any}(nothing)
const GL10_GL_FIXEDSet = Ref(false)
function staticGet_GL_FIXED(::Type{GL10})
    if !GL10_GL_FIXEDSet[]
        GL10_GL_FIXEDSet[] = true
        GL10_GL_FIXEDValue[] = Int32(5132)
    end
    GL10_GL_FIXEDValue[]
end
function staticSet_GL_FIXED(::Type{GL10}, value)
    GL10_GL_FIXEDSet[] = true
    GL10_GL_FIXEDValue[] = value
end
const GL10_GL_FLATValue = Ref{Any}(nothing)
const GL10_GL_FLATSet = Ref(false)
function staticGet_GL_FLAT(::Type{GL10})
    if !GL10_GL_FLATSet[]
        GL10_GL_FLATSet[] = true
        GL10_GL_FLATValue[] = Int32(7424)
    end
    GL10_GL_FLATValue[]
end
function staticSet_GL_FLAT(::Type{GL10}, value)
    GL10_GL_FLATSet[] = true
    GL10_GL_FLATValue[] = value
end
const GL10_GL_FLOATValue = Ref{Any}(nothing)
const GL10_GL_FLOATSet = Ref(false)
function staticGet_GL_FLOAT(::Type{GL10})
    if !GL10_GL_FLOATSet[]
        GL10_GL_FLOATSet[] = true
        GL10_GL_FLOATValue[] = Int32(5126)
    end
    GL10_GL_FLOATValue[]
end
function staticSet_GL_FLOAT(::Type{GL10}, value)
    GL10_GL_FLOATSet[] = true
    GL10_GL_FLOATValue[] = value
end
const GL10_GL_FOGValue = Ref{Any}(nothing)
const GL10_GL_FOGSet = Ref(false)
function staticGet_GL_FOG(::Type{GL10})
    if !GL10_GL_FOGSet[]
        GL10_GL_FOGSet[] = true
        GL10_GL_FOGValue[] = Int32(2912)
    end
    GL10_GL_FOGValue[]
end
function staticSet_GL_FOG(::Type{GL10}, value)
    GL10_GL_FOGSet[] = true
    GL10_GL_FOGValue[] = value
end
const GL10_GL_FOG_COLORValue = Ref{Any}(nothing)
const GL10_GL_FOG_COLORSet = Ref(false)
function staticGet_GL_FOG_COLOR(::Type{GL10})
    if !GL10_GL_FOG_COLORSet[]
        GL10_GL_FOG_COLORSet[] = true
        GL10_GL_FOG_COLORValue[] = Int32(2918)
    end
    GL10_GL_FOG_COLORValue[]
end
function staticSet_GL_FOG_COLOR(::Type{GL10}, value)
    GL10_GL_FOG_COLORSet[] = true
    GL10_GL_FOG_COLORValue[] = value
end
const GL10_GL_FOG_DENSITYValue = Ref{Any}(nothing)
const GL10_GL_FOG_DENSITYSet = Ref(false)
function staticGet_GL_FOG_DENSITY(::Type{GL10})
    if !GL10_GL_FOG_DENSITYSet[]
        GL10_GL_FOG_DENSITYSet[] = true
        GL10_GL_FOG_DENSITYValue[] = Int32(2914)
    end
    GL10_GL_FOG_DENSITYValue[]
end
function staticSet_GL_FOG_DENSITY(::Type{GL10}, value)
    GL10_GL_FOG_DENSITYSet[] = true
    GL10_GL_FOG_DENSITYValue[] = value
end
const GL10_GL_FOG_ENDValue = Ref{Any}(nothing)
const GL10_GL_FOG_ENDSet = Ref(false)
function staticGet_GL_FOG_END(::Type{GL10})
    if !GL10_GL_FOG_ENDSet[]
        GL10_GL_FOG_ENDSet[] = true
        GL10_GL_FOG_ENDValue[] = Int32(2916)
    end
    GL10_GL_FOG_ENDValue[]
end
function staticSet_GL_FOG_END(::Type{GL10}, value)
    GL10_GL_FOG_ENDSet[] = true
    GL10_GL_FOG_ENDValue[] = value
end
const GL10_GL_FOG_HINTValue = Ref{Any}(nothing)
const GL10_GL_FOG_HINTSet = Ref(false)
function staticGet_GL_FOG_HINT(::Type{GL10})
    if !GL10_GL_FOG_HINTSet[]
        GL10_GL_FOG_HINTSet[] = true
        GL10_GL_FOG_HINTValue[] = Int32(3156)
    end
    GL10_GL_FOG_HINTValue[]
end
function staticSet_GL_FOG_HINT(::Type{GL10}, value)
    GL10_GL_FOG_HINTSet[] = true
    GL10_GL_FOG_HINTValue[] = value
end
const GL10_GL_FOG_MODEValue = Ref{Any}(nothing)
const GL10_GL_FOG_MODESet = Ref(false)
function staticGet_GL_FOG_MODE(::Type{GL10})
    if !GL10_GL_FOG_MODESet[]
        GL10_GL_FOG_MODESet[] = true
        GL10_GL_FOG_MODEValue[] = Int32(2917)
    end
    GL10_GL_FOG_MODEValue[]
end
function staticSet_GL_FOG_MODE(::Type{GL10}, value)
    GL10_GL_FOG_MODESet[] = true
    GL10_GL_FOG_MODEValue[] = value
end
const GL10_GL_FOG_STARTValue = Ref{Any}(nothing)
const GL10_GL_FOG_STARTSet = Ref(false)
function staticGet_GL_FOG_START(::Type{GL10})
    if !GL10_GL_FOG_STARTSet[]
        GL10_GL_FOG_STARTSet[] = true
        GL10_GL_FOG_STARTValue[] = Int32(2915)
    end
    GL10_GL_FOG_STARTValue[]
end
function staticSet_GL_FOG_START(::Type{GL10}, value)
    GL10_GL_FOG_STARTSet[] = true
    GL10_GL_FOG_STARTValue[] = value
end
const GL10_GL_FRONTValue = Ref{Any}(nothing)
const GL10_GL_FRONTSet = Ref(false)
function staticGet_GL_FRONT(::Type{GL10})
    if !GL10_GL_FRONTSet[]
        GL10_GL_FRONTSet[] = true
        GL10_GL_FRONTValue[] = Int32(1028)
    end
    GL10_GL_FRONTValue[]
end
function staticSet_GL_FRONT(::Type{GL10}, value)
    GL10_GL_FRONTSet[] = true
    GL10_GL_FRONTValue[] = value
end
const GL10_GL_FRONT_AND_BACKValue = Ref{Any}(nothing)
const GL10_GL_FRONT_AND_BACKSet = Ref(false)
function staticGet_GL_FRONT_AND_BACK(::Type{GL10})
    if !GL10_GL_FRONT_AND_BACKSet[]
        GL10_GL_FRONT_AND_BACKSet[] = true
        GL10_GL_FRONT_AND_BACKValue[] = Int32(1032)
    end
    GL10_GL_FRONT_AND_BACKValue[]
end
function staticSet_GL_FRONT_AND_BACK(::Type{GL10}, value)
    GL10_GL_FRONT_AND_BACKSet[] = true
    GL10_GL_FRONT_AND_BACKValue[] = value
end
const GL10_GL_GEQUALValue = Ref{Any}(nothing)
const GL10_GL_GEQUALSet = Ref(false)
function staticGet_GL_GEQUAL(::Type{GL10})
    if !GL10_GL_GEQUALSet[]
        GL10_GL_GEQUALSet[] = true
        GL10_GL_GEQUALValue[] = Int32(518)
    end
    GL10_GL_GEQUALValue[]
end
function staticSet_GL_GEQUAL(::Type{GL10}, value)
    GL10_GL_GEQUALSet[] = true
    GL10_GL_GEQUALValue[] = value
end
const GL10_GL_GREATERValue = Ref{Any}(nothing)
const GL10_GL_GREATERSet = Ref(false)
function staticGet_GL_GREATER(::Type{GL10})
    if !GL10_GL_GREATERSet[]
        GL10_GL_GREATERSet[] = true
        GL10_GL_GREATERValue[] = Int32(516)
    end
    GL10_GL_GREATERValue[]
end
function staticSet_GL_GREATER(::Type{GL10}, value)
    GL10_GL_GREATERSet[] = true
    GL10_GL_GREATERValue[] = value
end
const GL10_GL_GREEN_BITSValue = Ref{Any}(nothing)
const GL10_GL_GREEN_BITSSet = Ref(false)
function staticGet_GL_GREEN_BITS(::Type{GL10})
    if !GL10_GL_GREEN_BITSSet[]
        GL10_GL_GREEN_BITSSet[] = true
        GL10_GL_GREEN_BITSValue[] = Int32(3411)
    end
    GL10_GL_GREEN_BITSValue[]
end
function staticSet_GL_GREEN_BITS(::Type{GL10}, value)
    GL10_GL_GREEN_BITSSet[] = true
    GL10_GL_GREEN_BITSValue[] = value
end
const GL10_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OESValue = Ref{Any}(nothing)
const GL10_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OESSet = Ref(false)
function staticGet_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES(::Type{GL10})
    if !GL10_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OESSet[]
        GL10_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OESSet[] = true
        GL10_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OESValue[] = Int32(35739)
    end
    GL10_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OESValue[]
end
function staticSet_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES(::Type{GL10}, value)
    GL10_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OESSet[] = true
    GL10_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OESValue[] = value
end
const GL10_GL_IMPLEMENTATION_COLOR_READ_TYPE_OESValue = Ref{Any}(nothing)
const GL10_GL_IMPLEMENTATION_COLOR_READ_TYPE_OESSet = Ref(false)
function staticGet_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES(::Type{GL10})
    if !GL10_GL_IMPLEMENTATION_COLOR_READ_TYPE_OESSet[]
        GL10_GL_IMPLEMENTATION_COLOR_READ_TYPE_OESSet[] = true
        GL10_GL_IMPLEMENTATION_COLOR_READ_TYPE_OESValue[] = Int32(35738)
    end
    GL10_GL_IMPLEMENTATION_COLOR_READ_TYPE_OESValue[]
end
function staticSet_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES(::Type{GL10}, value)
    GL10_GL_IMPLEMENTATION_COLOR_READ_TYPE_OESSet[] = true
    GL10_GL_IMPLEMENTATION_COLOR_READ_TYPE_OESValue[] = value
end
const GL10_GL_INCRValue = Ref{Any}(nothing)
const GL10_GL_INCRSet = Ref(false)
function staticGet_GL_INCR(::Type{GL10})
    if !GL10_GL_INCRSet[]
        GL10_GL_INCRSet[] = true
        GL10_GL_INCRValue[] = Int32(7682)
    end
    GL10_GL_INCRValue[]
end
function staticSet_GL_INCR(::Type{GL10}, value)
    GL10_GL_INCRSet[] = true
    GL10_GL_INCRValue[] = value
end
const GL10_GL_INVALID_ENUMValue = Ref{Any}(nothing)
const GL10_GL_INVALID_ENUMSet = Ref(false)
function staticGet_GL_INVALID_ENUM(::Type{GL10})
    if !GL10_GL_INVALID_ENUMSet[]
        GL10_GL_INVALID_ENUMSet[] = true
        GL10_GL_INVALID_ENUMValue[] = Int32(1280)
    end
    GL10_GL_INVALID_ENUMValue[]
end
function staticSet_GL_INVALID_ENUM(::Type{GL10}, value)
    GL10_GL_INVALID_ENUMSet[] = true
    GL10_GL_INVALID_ENUMValue[] = value
end
const GL10_GL_INVALID_OPERATIONValue = Ref{Any}(nothing)
const GL10_GL_INVALID_OPERATIONSet = Ref(false)
function staticGet_GL_INVALID_OPERATION(::Type{GL10})
    if !GL10_GL_INVALID_OPERATIONSet[]
        GL10_GL_INVALID_OPERATIONSet[] = true
        GL10_GL_INVALID_OPERATIONValue[] = Int32(1282)
    end
    GL10_GL_INVALID_OPERATIONValue[]
end
function staticSet_GL_INVALID_OPERATION(::Type{GL10}, value)
    GL10_GL_INVALID_OPERATIONSet[] = true
    GL10_GL_INVALID_OPERATIONValue[] = value
end
const GL10_GL_INVALID_VALUEValue = Ref{Any}(nothing)
const GL10_GL_INVALID_VALUESet = Ref(false)
function staticGet_GL_INVALID_VALUE(::Type{GL10})
    if !GL10_GL_INVALID_VALUESet[]
        GL10_GL_INVALID_VALUESet[] = true
        GL10_GL_INVALID_VALUEValue[] = Int32(1281)
    end
    GL10_GL_INVALID_VALUEValue[]
end
function staticSet_GL_INVALID_VALUE(::Type{GL10}, value)
    GL10_GL_INVALID_VALUESet[] = true
    GL10_GL_INVALID_VALUEValue[] = value
end
const GL10_GL_INVERTValue = Ref{Any}(nothing)
const GL10_GL_INVERTSet = Ref(false)
function staticGet_GL_INVERT(::Type{GL10})
    if !GL10_GL_INVERTSet[]
        GL10_GL_INVERTSet[] = true
        GL10_GL_INVERTValue[] = Int32(5386)
    end
    GL10_GL_INVERTValue[]
end
function staticSet_GL_INVERT(::Type{GL10}, value)
    GL10_GL_INVERTSet[] = true
    GL10_GL_INVERTValue[] = value
end
const GL10_GL_KEEPValue = Ref{Any}(nothing)
const GL10_GL_KEEPSet = Ref(false)
function staticGet_GL_KEEP(::Type{GL10})
    if !GL10_GL_KEEPSet[]
        GL10_GL_KEEPSet[] = true
        GL10_GL_KEEPValue[] = Int32(7680)
    end
    GL10_GL_KEEPValue[]
end
function staticSet_GL_KEEP(::Type{GL10}, value)
    GL10_GL_KEEPSet[] = true
    GL10_GL_KEEPValue[] = value
end
const GL10_GL_LEQUALValue = Ref{Any}(nothing)
const GL10_GL_LEQUALSet = Ref(false)
function staticGet_GL_LEQUAL(::Type{GL10})
    if !GL10_GL_LEQUALSet[]
        GL10_GL_LEQUALSet[] = true
        GL10_GL_LEQUALValue[] = Int32(515)
    end
    GL10_GL_LEQUALValue[]
end
function staticSet_GL_LEQUAL(::Type{GL10}, value)
    GL10_GL_LEQUALSet[] = true
    GL10_GL_LEQUALValue[] = value
end
const GL10_GL_LESSValue = Ref{Any}(nothing)
const GL10_GL_LESSSet = Ref(false)
function staticGet_GL_LESS(::Type{GL10})
    if !GL10_GL_LESSSet[]
        GL10_GL_LESSSet[] = true
        GL10_GL_LESSValue[] = Int32(513)
    end
    GL10_GL_LESSValue[]
end
function staticSet_GL_LESS(::Type{GL10}, value)
    GL10_GL_LESSSet[] = true
    GL10_GL_LESSValue[] = value
end
const GL10_GL_LIGHT_MODEL_AMBIENTValue = Ref{Any}(nothing)
const GL10_GL_LIGHT_MODEL_AMBIENTSet = Ref(false)
function staticGet_GL_LIGHT_MODEL_AMBIENT(::Type{GL10})
    if !GL10_GL_LIGHT_MODEL_AMBIENTSet[]
        GL10_GL_LIGHT_MODEL_AMBIENTSet[] = true
        GL10_GL_LIGHT_MODEL_AMBIENTValue[] = Int32(2899)
    end
    GL10_GL_LIGHT_MODEL_AMBIENTValue[]
end
function staticSet_GL_LIGHT_MODEL_AMBIENT(::Type{GL10}, value)
    GL10_GL_LIGHT_MODEL_AMBIENTSet[] = true
    GL10_GL_LIGHT_MODEL_AMBIENTValue[] = value
end
const GL10_GL_LIGHT_MODEL_TWO_SIDEValue = Ref{Any}(nothing)
const GL10_GL_LIGHT_MODEL_TWO_SIDESet = Ref(false)
function staticGet_GL_LIGHT_MODEL_TWO_SIDE(::Type{GL10})
    if !GL10_GL_LIGHT_MODEL_TWO_SIDESet[]
        GL10_GL_LIGHT_MODEL_TWO_SIDESet[] = true
        GL10_GL_LIGHT_MODEL_TWO_SIDEValue[] = Int32(2898)
    end
    GL10_GL_LIGHT_MODEL_TWO_SIDEValue[]
end
function staticSet_GL_LIGHT_MODEL_TWO_SIDE(::Type{GL10}, value)
    GL10_GL_LIGHT_MODEL_TWO_SIDESet[] = true
    GL10_GL_LIGHT_MODEL_TWO_SIDEValue[] = value
end
const GL10_GL_LIGHT0Value = Ref{Any}(nothing)
const GL10_GL_LIGHT0Set = Ref(false)
function staticGet_GL_LIGHT0(::Type{GL10})
    if !GL10_GL_LIGHT0Set[]
        GL10_GL_LIGHT0Set[] = true
        GL10_GL_LIGHT0Value[] = Int32(16384)
    end
    GL10_GL_LIGHT0Value[]
end
function staticSet_GL_LIGHT0(::Type{GL10}, value)
    GL10_GL_LIGHT0Set[] = true
    GL10_GL_LIGHT0Value[] = value
end
const GL10_GL_LIGHT1Value = Ref{Any}(nothing)
const GL10_GL_LIGHT1Set = Ref(false)
function staticGet_GL_LIGHT1(::Type{GL10})
    if !GL10_GL_LIGHT1Set[]
        GL10_GL_LIGHT1Set[] = true
        GL10_GL_LIGHT1Value[] = Int32(16385)
    end
    GL10_GL_LIGHT1Value[]
end
function staticSet_GL_LIGHT1(::Type{GL10}, value)
    GL10_GL_LIGHT1Set[] = true
    GL10_GL_LIGHT1Value[] = value
end
const GL10_GL_LIGHT2Value = Ref{Any}(nothing)
const GL10_GL_LIGHT2Set = Ref(false)
function staticGet_GL_LIGHT2(::Type{GL10})
    if !GL10_GL_LIGHT2Set[]
        GL10_GL_LIGHT2Set[] = true
        GL10_GL_LIGHT2Value[] = Int32(16386)
    end
    GL10_GL_LIGHT2Value[]
end
function staticSet_GL_LIGHT2(::Type{GL10}, value)
    GL10_GL_LIGHT2Set[] = true
    GL10_GL_LIGHT2Value[] = value
end
const GL10_GL_LIGHT3Value = Ref{Any}(nothing)
const GL10_GL_LIGHT3Set = Ref(false)
function staticGet_GL_LIGHT3(::Type{GL10})
    if !GL10_GL_LIGHT3Set[]
        GL10_GL_LIGHT3Set[] = true
        GL10_GL_LIGHT3Value[] = Int32(16387)
    end
    GL10_GL_LIGHT3Value[]
end
function staticSet_GL_LIGHT3(::Type{GL10}, value)
    GL10_GL_LIGHT3Set[] = true
    GL10_GL_LIGHT3Value[] = value
end
const GL10_GL_LIGHT4Value = Ref{Any}(nothing)
const GL10_GL_LIGHT4Set = Ref(false)
function staticGet_GL_LIGHT4(::Type{GL10})
    if !GL10_GL_LIGHT4Set[]
        GL10_GL_LIGHT4Set[] = true
        GL10_GL_LIGHT4Value[] = Int32(16388)
    end
    GL10_GL_LIGHT4Value[]
end
function staticSet_GL_LIGHT4(::Type{GL10}, value)
    GL10_GL_LIGHT4Set[] = true
    GL10_GL_LIGHT4Value[] = value
end
const GL10_GL_LIGHT5Value = Ref{Any}(nothing)
const GL10_GL_LIGHT5Set = Ref(false)
function staticGet_GL_LIGHT5(::Type{GL10})
    if !GL10_GL_LIGHT5Set[]
        GL10_GL_LIGHT5Set[] = true
        GL10_GL_LIGHT5Value[] = Int32(16389)
    end
    GL10_GL_LIGHT5Value[]
end
function staticSet_GL_LIGHT5(::Type{GL10}, value)
    GL10_GL_LIGHT5Set[] = true
    GL10_GL_LIGHT5Value[] = value
end
const GL10_GL_LIGHT6Value = Ref{Any}(nothing)
const GL10_GL_LIGHT6Set = Ref(false)
function staticGet_GL_LIGHT6(::Type{GL10})
    if !GL10_GL_LIGHT6Set[]
        GL10_GL_LIGHT6Set[] = true
        GL10_GL_LIGHT6Value[] = Int32(16390)
    end
    GL10_GL_LIGHT6Value[]
end
function staticSet_GL_LIGHT6(::Type{GL10}, value)
    GL10_GL_LIGHT6Set[] = true
    GL10_GL_LIGHT6Value[] = value
end
const GL10_GL_LIGHT7Value = Ref{Any}(nothing)
const GL10_GL_LIGHT7Set = Ref(false)
function staticGet_GL_LIGHT7(::Type{GL10})
    if !GL10_GL_LIGHT7Set[]
        GL10_GL_LIGHT7Set[] = true
        GL10_GL_LIGHT7Value[] = Int32(16391)
    end
    GL10_GL_LIGHT7Value[]
end
function staticSet_GL_LIGHT7(::Type{GL10}, value)
    GL10_GL_LIGHT7Set[] = true
    GL10_GL_LIGHT7Value[] = value
end
const GL10_GL_LIGHTINGValue = Ref{Any}(nothing)
const GL10_GL_LIGHTINGSet = Ref(false)
function staticGet_GL_LIGHTING(::Type{GL10})
    if !GL10_GL_LIGHTINGSet[]
        GL10_GL_LIGHTINGSet[] = true
        GL10_GL_LIGHTINGValue[] = Int32(2896)
    end
    GL10_GL_LIGHTINGValue[]
end
function staticSet_GL_LIGHTING(::Type{GL10}, value)
    GL10_GL_LIGHTINGSet[] = true
    GL10_GL_LIGHTINGValue[] = value
end
const GL10_GL_LINE_LOOPValue = Ref{Any}(nothing)
const GL10_GL_LINE_LOOPSet = Ref(false)
function staticGet_GL_LINE_LOOP(::Type{GL10})
    if !GL10_GL_LINE_LOOPSet[]
        GL10_GL_LINE_LOOPSet[] = true
        GL10_GL_LINE_LOOPValue[] = Int32(2)
    end
    GL10_GL_LINE_LOOPValue[]
end
function staticSet_GL_LINE_LOOP(::Type{GL10}, value)
    GL10_GL_LINE_LOOPSet[] = true
    GL10_GL_LINE_LOOPValue[] = value
end
const GL10_GL_LINE_SMOOTHValue = Ref{Any}(nothing)
const GL10_GL_LINE_SMOOTHSet = Ref(false)
function staticGet_GL_LINE_SMOOTH(::Type{GL10})
    if !GL10_GL_LINE_SMOOTHSet[]
        GL10_GL_LINE_SMOOTHSet[] = true
        GL10_GL_LINE_SMOOTHValue[] = Int32(2848)
    end
    GL10_GL_LINE_SMOOTHValue[]
end
function staticSet_GL_LINE_SMOOTH(::Type{GL10}, value)
    GL10_GL_LINE_SMOOTHSet[] = true
    GL10_GL_LINE_SMOOTHValue[] = value
end
const GL10_GL_LINE_SMOOTH_HINTValue = Ref{Any}(nothing)
const GL10_GL_LINE_SMOOTH_HINTSet = Ref(false)
function staticGet_GL_LINE_SMOOTH_HINT(::Type{GL10})
    if !GL10_GL_LINE_SMOOTH_HINTSet[]
        GL10_GL_LINE_SMOOTH_HINTSet[] = true
        GL10_GL_LINE_SMOOTH_HINTValue[] = Int32(3154)
    end
    GL10_GL_LINE_SMOOTH_HINTValue[]
end
function staticSet_GL_LINE_SMOOTH_HINT(::Type{GL10}, value)
    GL10_GL_LINE_SMOOTH_HINTSet[] = true
    GL10_GL_LINE_SMOOTH_HINTValue[] = value
end
const GL10_GL_LINE_STRIPValue = Ref{Any}(nothing)
const GL10_GL_LINE_STRIPSet = Ref(false)
function staticGet_GL_LINE_STRIP(::Type{GL10})
    if !GL10_GL_LINE_STRIPSet[]
        GL10_GL_LINE_STRIPSet[] = true
        GL10_GL_LINE_STRIPValue[] = Int32(3)
    end
    GL10_GL_LINE_STRIPValue[]
end
function staticSet_GL_LINE_STRIP(::Type{GL10}, value)
    GL10_GL_LINE_STRIPSet[] = true
    GL10_GL_LINE_STRIPValue[] = value
end
const GL10_GL_LINEARValue = Ref{Any}(nothing)
const GL10_GL_LINEARSet = Ref(false)
function staticGet_GL_LINEAR(::Type{GL10})
    if !GL10_GL_LINEARSet[]
        GL10_GL_LINEARSet[] = true
        GL10_GL_LINEARValue[] = Int32(9729)
    end
    GL10_GL_LINEARValue[]
end
function staticSet_GL_LINEAR(::Type{GL10}, value)
    GL10_GL_LINEARSet[] = true
    GL10_GL_LINEARValue[] = value
end
const GL10_GL_LINEAR_ATTENUATIONValue = Ref{Any}(nothing)
const GL10_GL_LINEAR_ATTENUATIONSet = Ref(false)
function staticGet_GL_LINEAR_ATTENUATION(::Type{GL10})
    if !GL10_GL_LINEAR_ATTENUATIONSet[]
        GL10_GL_LINEAR_ATTENUATIONSet[] = true
        GL10_GL_LINEAR_ATTENUATIONValue[] = Int32(4616)
    end
    GL10_GL_LINEAR_ATTENUATIONValue[]
end
function staticSet_GL_LINEAR_ATTENUATION(::Type{GL10}, value)
    GL10_GL_LINEAR_ATTENUATIONSet[] = true
    GL10_GL_LINEAR_ATTENUATIONValue[] = value
end
const GL10_GL_LINEAR_MIPMAP_LINEARValue = Ref{Any}(nothing)
const GL10_GL_LINEAR_MIPMAP_LINEARSet = Ref(false)
function staticGet_GL_LINEAR_MIPMAP_LINEAR(::Type{GL10})
    if !GL10_GL_LINEAR_MIPMAP_LINEARSet[]
        GL10_GL_LINEAR_MIPMAP_LINEARSet[] = true
        GL10_GL_LINEAR_MIPMAP_LINEARValue[] = Int32(9987)
    end
    GL10_GL_LINEAR_MIPMAP_LINEARValue[]
end
function staticSet_GL_LINEAR_MIPMAP_LINEAR(::Type{GL10}, value)
    GL10_GL_LINEAR_MIPMAP_LINEARSet[] = true
    GL10_GL_LINEAR_MIPMAP_LINEARValue[] = value
end
const GL10_GL_LINEAR_MIPMAP_NEARESTValue = Ref{Any}(nothing)
const GL10_GL_LINEAR_MIPMAP_NEARESTSet = Ref(false)
function staticGet_GL_LINEAR_MIPMAP_NEAREST(::Type{GL10})
    if !GL10_GL_LINEAR_MIPMAP_NEARESTSet[]
        GL10_GL_LINEAR_MIPMAP_NEARESTSet[] = true
        GL10_GL_LINEAR_MIPMAP_NEARESTValue[] = Int32(9985)
    end
    GL10_GL_LINEAR_MIPMAP_NEARESTValue[]
end
function staticSet_GL_LINEAR_MIPMAP_NEAREST(::Type{GL10}, value)
    GL10_GL_LINEAR_MIPMAP_NEARESTSet[] = true
    GL10_GL_LINEAR_MIPMAP_NEARESTValue[] = value
end
const GL10_GL_LINESValue = Ref{Any}(nothing)
const GL10_GL_LINESSet = Ref(false)
function staticGet_GL_LINES(::Type{GL10})
    if !GL10_GL_LINESSet[]
        GL10_GL_LINESSet[] = true
        GL10_GL_LINESValue[] = Int32(1)
    end
    GL10_GL_LINESValue[]
end
function staticSet_GL_LINES(::Type{GL10}, value)
    GL10_GL_LINESSet[] = true
    GL10_GL_LINESValue[] = value
end
const GL10_GL_LUMINANCEValue = Ref{Any}(nothing)
const GL10_GL_LUMINANCESet = Ref(false)
function staticGet_GL_LUMINANCE(::Type{GL10})
    if !GL10_GL_LUMINANCESet[]
        GL10_GL_LUMINANCESet[] = true
        GL10_GL_LUMINANCEValue[] = Int32(6409)
    end
    GL10_GL_LUMINANCEValue[]
end
function staticSet_GL_LUMINANCE(::Type{GL10}, value)
    GL10_GL_LUMINANCESet[] = true
    GL10_GL_LUMINANCEValue[] = value
end
const GL10_GL_LUMINANCE_ALPHAValue = Ref{Any}(nothing)
const GL10_GL_LUMINANCE_ALPHASet = Ref(false)
function staticGet_GL_LUMINANCE_ALPHA(::Type{GL10})
    if !GL10_GL_LUMINANCE_ALPHASet[]
        GL10_GL_LUMINANCE_ALPHASet[] = true
        GL10_GL_LUMINANCE_ALPHAValue[] = Int32(6410)
    end
    GL10_GL_LUMINANCE_ALPHAValue[]
end
function staticSet_GL_LUMINANCE_ALPHA(::Type{GL10}, value)
    GL10_GL_LUMINANCE_ALPHASet[] = true
    GL10_GL_LUMINANCE_ALPHAValue[] = value
end
const GL10_GL_MAX_ELEMENTS_INDICESValue = Ref{Any}(nothing)
const GL10_GL_MAX_ELEMENTS_INDICESSet = Ref(false)
function staticGet_GL_MAX_ELEMENTS_INDICES(::Type{GL10})
    if !GL10_GL_MAX_ELEMENTS_INDICESSet[]
        GL10_GL_MAX_ELEMENTS_INDICESSet[] = true
        GL10_GL_MAX_ELEMENTS_INDICESValue[] = Int32(33001)
    end
    GL10_GL_MAX_ELEMENTS_INDICESValue[]
end
function staticSet_GL_MAX_ELEMENTS_INDICES(::Type{GL10}, value)
    GL10_GL_MAX_ELEMENTS_INDICESSet[] = true
    GL10_GL_MAX_ELEMENTS_INDICESValue[] = value
end
const GL10_GL_MAX_ELEMENTS_VERTICESValue = Ref{Any}(nothing)
const GL10_GL_MAX_ELEMENTS_VERTICESSet = Ref(false)
function staticGet_GL_MAX_ELEMENTS_VERTICES(::Type{GL10})
    if !GL10_GL_MAX_ELEMENTS_VERTICESSet[]
        GL10_GL_MAX_ELEMENTS_VERTICESSet[] = true
        GL10_GL_MAX_ELEMENTS_VERTICESValue[] = Int32(33000)
    end
    GL10_GL_MAX_ELEMENTS_VERTICESValue[]
end
function staticSet_GL_MAX_ELEMENTS_VERTICES(::Type{GL10}, value)
    GL10_GL_MAX_ELEMENTS_VERTICESSet[] = true
    GL10_GL_MAX_ELEMENTS_VERTICESValue[] = value
end
const GL10_GL_MAX_LIGHTSValue = Ref{Any}(nothing)
const GL10_GL_MAX_LIGHTSSet = Ref(false)
function staticGet_GL_MAX_LIGHTS(::Type{GL10})
    if !GL10_GL_MAX_LIGHTSSet[]
        GL10_GL_MAX_LIGHTSSet[] = true
        GL10_GL_MAX_LIGHTSValue[] = Int32(3377)
    end
    GL10_GL_MAX_LIGHTSValue[]
end
function staticSet_GL_MAX_LIGHTS(::Type{GL10}, value)
    GL10_GL_MAX_LIGHTSSet[] = true
    GL10_GL_MAX_LIGHTSValue[] = value
end
const GL10_GL_MAX_MODELVIEW_STACK_DEPTHValue = Ref{Any}(nothing)
const GL10_GL_MAX_MODELVIEW_STACK_DEPTHSet = Ref(false)
function staticGet_GL_MAX_MODELVIEW_STACK_DEPTH(::Type{GL10})
    if !GL10_GL_MAX_MODELVIEW_STACK_DEPTHSet[]
        GL10_GL_MAX_MODELVIEW_STACK_DEPTHSet[] = true
        GL10_GL_MAX_MODELVIEW_STACK_DEPTHValue[] = Int32(3382)
    end
    GL10_GL_MAX_MODELVIEW_STACK_DEPTHValue[]
end
function staticSet_GL_MAX_MODELVIEW_STACK_DEPTH(::Type{GL10}, value)
    GL10_GL_MAX_MODELVIEW_STACK_DEPTHSet[] = true
    GL10_GL_MAX_MODELVIEW_STACK_DEPTHValue[] = value
end
const GL10_GL_MAX_PROJECTION_STACK_DEPTHValue = Ref{Any}(nothing)
const GL10_GL_MAX_PROJECTION_STACK_DEPTHSet = Ref(false)
function staticGet_GL_MAX_PROJECTION_STACK_DEPTH(::Type{GL10})
    if !GL10_GL_MAX_PROJECTION_STACK_DEPTHSet[]
        GL10_GL_MAX_PROJECTION_STACK_DEPTHSet[] = true
        GL10_GL_MAX_PROJECTION_STACK_DEPTHValue[] = Int32(3384)
    end
    GL10_GL_MAX_PROJECTION_STACK_DEPTHValue[]
end
function staticSet_GL_MAX_PROJECTION_STACK_DEPTH(::Type{GL10}, value)
    GL10_GL_MAX_PROJECTION_STACK_DEPTHSet[] = true
    GL10_GL_MAX_PROJECTION_STACK_DEPTHValue[] = value
end
const GL10_GL_MAX_TEXTURE_SIZEValue = Ref{Any}(nothing)
const GL10_GL_MAX_TEXTURE_SIZESet = Ref(false)
function staticGet_GL_MAX_TEXTURE_SIZE(::Type{GL10})
    if !GL10_GL_MAX_TEXTURE_SIZESet[]
        GL10_GL_MAX_TEXTURE_SIZESet[] = true
        GL10_GL_MAX_TEXTURE_SIZEValue[] = Int32(3379)
    end
    GL10_GL_MAX_TEXTURE_SIZEValue[]
end
function staticSet_GL_MAX_TEXTURE_SIZE(::Type{GL10}, value)
    GL10_GL_MAX_TEXTURE_SIZESet[] = true
    GL10_GL_MAX_TEXTURE_SIZEValue[] = value
end
const GL10_GL_MAX_TEXTURE_STACK_DEPTHValue = Ref{Any}(nothing)
const GL10_GL_MAX_TEXTURE_STACK_DEPTHSet = Ref(false)
function staticGet_GL_MAX_TEXTURE_STACK_DEPTH(::Type{GL10})
    if !GL10_GL_MAX_TEXTURE_STACK_DEPTHSet[]
        GL10_GL_MAX_TEXTURE_STACK_DEPTHSet[] = true
        GL10_GL_MAX_TEXTURE_STACK_DEPTHValue[] = Int32(3385)
    end
    GL10_GL_MAX_TEXTURE_STACK_DEPTHValue[]
end
function staticSet_GL_MAX_TEXTURE_STACK_DEPTH(::Type{GL10}, value)
    GL10_GL_MAX_TEXTURE_STACK_DEPTHSet[] = true
    GL10_GL_MAX_TEXTURE_STACK_DEPTHValue[] = value
end
const GL10_GL_MAX_TEXTURE_UNITSValue = Ref{Any}(nothing)
const GL10_GL_MAX_TEXTURE_UNITSSet = Ref(false)
function staticGet_GL_MAX_TEXTURE_UNITS(::Type{GL10})
    if !GL10_GL_MAX_TEXTURE_UNITSSet[]
        GL10_GL_MAX_TEXTURE_UNITSSet[] = true
        GL10_GL_MAX_TEXTURE_UNITSValue[] = Int32(34018)
    end
    GL10_GL_MAX_TEXTURE_UNITSValue[]
end
function staticSet_GL_MAX_TEXTURE_UNITS(::Type{GL10}, value)
    GL10_GL_MAX_TEXTURE_UNITSSet[] = true
    GL10_GL_MAX_TEXTURE_UNITSValue[] = value
end
const GL10_GL_MAX_VIEWPORT_DIMSValue = Ref{Any}(nothing)
const GL10_GL_MAX_VIEWPORT_DIMSSet = Ref(false)
function staticGet_GL_MAX_VIEWPORT_DIMS(::Type{GL10})
    if !GL10_GL_MAX_VIEWPORT_DIMSSet[]
        GL10_GL_MAX_VIEWPORT_DIMSSet[] = true
        GL10_GL_MAX_VIEWPORT_DIMSValue[] = Int32(3386)
    end
    GL10_GL_MAX_VIEWPORT_DIMSValue[]
end
function staticSet_GL_MAX_VIEWPORT_DIMS(::Type{GL10}, value)
    GL10_GL_MAX_VIEWPORT_DIMSSet[] = true
    GL10_GL_MAX_VIEWPORT_DIMSValue[] = value
end
const GL10_GL_MODELVIEWValue = Ref{Any}(nothing)
const GL10_GL_MODELVIEWSet = Ref(false)
function staticGet_GL_MODELVIEW(::Type{GL10})
    if !GL10_GL_MODELVIEWSet[]
        GL10_GL_MODELVIEWSet[] = true
        GL10_GL_MODELVIEWValue[] = Int32(5888)
    end
    GL10_GL_MODELVIEWValue[]
end
function staticSet_GL_MODELVIEW(::Type{GL10}, value)
    GL10_GL_MODELVIEWSet[] = true
    GL10_GL_MODELVIEWValue[] = value
end
const GL10_GL_MODULATEValue = Ref{Any}(nothing)
const GL10_GL_MODULATESet = Ref(false)
function staticGet_GL_MODULATE(::Type{GL10})
    if !GL10_GL_MODULATESet[]
        GL10_GL_MODULATESet[] = true
        GL10_GL_MODULATEValue[] = Int32(8448)
    end
    GL10_GL_MODULATEValue[]
end
function staticSet_GL_MODULATE(::Type{GL10}, value)
    GL10_GL_MODULATESet[] = true
    GL10_GL_MODULATEValue[] = value
end
const GL10_GL_MULTISAMPLEValue = Ref{Any}(nothing)
const GL10_GL_MULTISAMPLESet = Ref(false)
function staticGet_GL_MULTISAMPLE(::Type{GL10})
    if !GL10_GL_MULTISAMPLESet[]
        GL10_GL_MULTISAMPLESet[] = true
        GL10_GL_MULTISAMPLEValue[] = Int32(32925)
    end
    GL10_GL_MULTISAMPLEValue[]
end
function staticSet_GL_MULTISAMPLE(::Type{GL10}, value)
    GL10_GL_MULTISAMPLESet[] = true
    GL10_GL_MULTISAMPLEValue[] = value
end
const GL10_GL_NANDValue = Ref{Any}(nothing)
const GL10_GL_NANDSet = Ref(false)
function staticGet_GL_NAND(::Type{GL10})
    if !GL10_GL_NANDSet[]
        GL10_GL_NANDSet[] = true
        GL10_GL_NANDValue[] = Int32(5390)
    end
    GL10_GL_NANDValue[]
end
function staticSet_GL_NAND(::Type{GL10}, value)
    GL10_GL_NANDSet[] = true
    GL10_GL_NANDValue[] = value
end
const GL10_GL_NEARESTValue = Ref{Any}(nothing)
const GL10_GL_NEARESTSet = Ref(false)
function staticGet_GL_NEAREST(::Type{GL10})
    if !GL10_GL_NEARESTSet[]
        GL10_GL_NEARESTSet[] = true
        GL10_GL_NEARESTValue[] = Int32(9728)
    end
    GL10_GL_NEARESTValue[]
end
function staticSet_GL_NEAREST(::Type{GL10}, value)
    GL10_GL_NEARESTSet[] = true
    GL10_GL_NEARESTValue[] = value
end
const GL10_GL_NEAREST_MIPMAP_LINEARValue = Ref{Any}(nothing)
const GL10_GL_NEAREST_MIPMAP_LINEARSet = Ref(false)
function staticGet_GL_NEAREST_MIPMAP_LINEAR(::Type{GL10})
    if !GL10_GL_NEAREST_MIPMAP_LINEARSet[]
        GL10_GL_NEAREST_MIPMAP_LINEARSet[] = true
        GL10_GL_NEAREST_MIPMAP_LINEARValue[] = Int32(9986)
    end
    GL10_GL_NEAREST_MIPMAP_LINEARValue[]
end
function staticSet_GL_NEAREST_MIPMAP_LINEAR(::Type{GL10}, value)
    GL10_GL_NEAREST_MIPMAP_LINEARSet[] = true
    GL10_GL_NEAREST_MIPMAP_LINEARValue[] = value
end
const GL10_GL_NEAREST_MIPMAP_NEARESTValue = Ref{Any}(nothing)
const GL10_GL_NEAREST_MIPMAP_NEARESTSet = Ref(false)
function staticGet_GL_NEAREST_MIPMAP_NEAREST(::Type{GL10})
    if !GL10_GL_NEAREST_MIPMAP_NEARESTSet[]
        GL10_GL_NEAREST_MIPMAP_NEARESTSet[] = true
        GL10_GL_NEAREST_MIPMAP_NEARESTValue[] = Int32(9984)
    end
    GL10_GL_NEAREST_MIPMAP_NEARESTValue[]
end
function staticSet_GL_NEAREST_MIPMAP_NEAREST(::Type{GL10}, value)
    GL10_GL_NEAREST_MIPMAP_NEARESTSet[] = true
    GL10_GL_NEAREST_MIPMAP_NEARESTValue[] = value
end
const GL10_GL_NEVERValue = Ref{Any}(nothing)
const GL10_GL_NEVERSet = Ref(false)
function staticGet_GL_NEVER(::Type{GL10})
    if !GL10_GL_NEVERSet[]
        GL10_GL_NEVERSet[] = true
        GL10_GL_NEVERValue[] = Int32(512)
    end
    GL10_GL_NEVERValue[]
end
function staticSet_GL_NEVER(::Type{GL10}, value)
    GL10_GL_NEVERSet[] = true
    GL10_GL_NEVERValue[] = value
end
const GL10_GL_NICESTValue = Ref{Any}(nothing)
const GL10_GL_NICESTSet = Ref(false)
function staticGet_GL_NICEST(::Type{GL10})
    if !GL10_GL_NICESTSet[]
        GL10_GL_NICESTSet[] = true
        GL10_GL_NICESTValue[] = Int32(4354)
    end
    GL10_GL_NICESTValue[]
end
function staticSet_GL_NICEST(::Type{GL10}, value)
    GL10_GL_NICESTSet[] = true
    GL10_GL_NICESTValue[] = value
end
const GL10_GL_NO_ERRORValue = Ref{Any}(nothing)
const GL10_GL_NO_ERRORSet = Ref(false)
function staticGet_GL_NO_ERROR(::Type{GL10})
    if !GL10_GL_NO_ERRORSet[]
        GL10_GL_NO_ERRORSet[] = true
        GL10_GL_NO_ERRORValue[] = Int32(0)
    end
    GL10_GL_NO_ERRORValue[]
end
function staticSet_GL_NO_ERROR(::Type{GL10}, value)
    GL10_GL_NO_ERRORSet[] = true
    GL10_GL_NO_ERRORValue[] = value
end
const GL10_GL_NOOPValue = Ref{Any}(nothing)
const GL10_GL_NOOPSet = Ref(false)
function staticGet_GL_NOOP(::Type{GL10})
    if !GL10_GL_NOOPSet[]
        GL10_GL_NOOPSet[] = true
        GL10_GL_NOOPValue[] = Int32(5381)
    end
    GL10_GL_NOOPValue[]
end
function staticSet_GL_NOOP(::Type{GL10}, value)
    GL10_GL_NOOPSet[] = true
    GL10_GL_NOOPValue[] = value
end
const GL10_GL_NORValue = Ref{Any}(nothing)
const GL10_GL_NORSet = Ref(false)
function staticGet_GL_NOR(::Type{GL10})
    if !GL10_GL_NORSet[]
        GL10_GL_NORSet[] = true
        GL10_GL_NORValue[] = Int32(5384)
    end
    GL10_GL_NORValue[]
end
function staticSet_GL_NOR(::Type{GL10}, value)
    GL10_GL_NORSet[] = true
    GL10_GL_NORValue[] = value
end
const GL10_GL_NORMAL_ARRAYValue = Ref{Any}(nothing)
const GL10_GL_NORMAL_ARRAYSet = Ref(false)
function staticGet_GL_NORMAL_ARRAY(::Type{GL10})
    if !GL10_GL_NORMAL_ARRAYSet[]
        GL10_GL_NORMAL_ARRAYSet[] = true
        GL10_GL_NORMAL_ARRAYValue[] = Int32(32885)
    end
    GL10_GL_NORMAL_ARRAYValue[]
end
function staticSet_GL_NORMAL_ARRAY(::Type{GL10}, value)
    GL10_GL_NORMAL_ARRAYSet[] = true
    GL10_GL_NORMAL_ARRAYValue[] = value
end
const GL10_GL_NORMALIZEValue = Ref{Any}(nothing)
const GL10_GL_NORMALIZESet = Ref(false)
function staticGet_GL_NORMALIZE(::Type{GL10})
    if !GL10_GL_NORMALIZESet[]
        GL10_GL_NORMALIZESet[] = true
        GL10_GL_NORMALIZEValue[] = Int32(2977)
    end
    GL10_GL_NORMALIZEValue[]
end
function staticSet_GL_NORMALIZE(::Type{GL10}, value)
    GL10_GL_NORMALIZESet[] = true
    GL10_GL_NORMALIZEValue[] = value
end
const GL10_GL_NOTEQUALValue = Ref{Any}(nothing)
const GL10_GL_NOTEQUALSet = Ref(false)
function staticGet_GL_NOTEQUAL(::Type{GL10})
    if !GL10_GL_NOTEQUALSet[]
        GL10_GL_NOTEQUALSet[] = true
        GL10_GL_NOTEQUALValue[] = Int32(517)
    end
    GL10_GL_NOTEQUALValue[]
end
function staticSet_GL_NOTEQUAL(::Type{GL10}, value)
    GL10_GL_NOTEQUALSet[] = true
    GL10_GL_NOTEQUALValue[] = value
end
const GL10_GL_NUM_COMPRESSED_TEXTURE_FORMATSValue = Ref{Any}(nothing)
const GL10_GL_NUM_COMPRESSED_TEXTURE_FORMATSSet = Ref(false)
function staticGet_GL_NUM_COMPRESSED_TEXTURE_FORMATS(::Type{GL10})
    if !GL10_GL_NUM_COMPRESSED_TEXTURE_FORMATSSet[]
        GL10_GL_NUM_COMPRESSED_TEXTURE_FORMATSSet[] = true
        GL10_GL_NUM_COMPRESSED_TEXTURE_FORMATSValue[] = Int32(34466)
    end
    GL10_GL_NUM_COMPRESSED_TEXTURE_FORMATSValue[]
end
function staticSet_GL_NUM_COMPRESSED_TEXTURE_FORMATS(::Type{GL10}, value)
    GL10_GL_NUM_COMPRESSED_TEXTURE_FORMATSSet[] = true
    GL10_GL_NUM_COMPRESSED_TEXTURE_FORMATSValue[] = value
end
const GL10_GL_ONEValue = Ref{Any}(nothing)
const GL10_GL_ONESet = Ref(false)
function staticGet_GL_ONE(::Type{GL10})
    if !GL10_GL_ONESet[]
        GL10_GL_ONESet[] = true
        GL10_GL_ONEValue[] = Int32(1)
    end
    GL10_GL_ONEValue[]
end
function staticSet_GL_ONE(::Type{GL10}, value)
    GL10_GL_ONESet[] = true
    GL10_GL_ONEValue[] = value
end
const GL10_GL_ONE_MINUS_DST_ALPHAValue = Ref{Any}(nothing)
const GL10_GL_ONE_MINUS_DST_ALPHASet = Ref(false)
function staticGet_GL_ONE_MINUS_DST_ALPHA(::Type{GL10})
    if !GL10_GL_ONE_MINUS_DST_ALPHASet[]
        GL10_GL_ONE_MINUS_DST_ALPHASet[] = true
        GL10_GL_ONE_MINUS_DST_ALPHAValue[] = Int32(773)
    end
    GL10_GL_ONE_MINUS_DST_ALPHAValue[]
end
function staticSet_GL_ONE_MINUS_DST_ALPHA(::Type{GL10}, value)
    GL10_GL_ONE_MINUS_DST_ALPHASet[] = true
    GL10_GL_ONE_MINUS_DST_ALPHAValue[] = value
end
const GL10_GL_ONE_MINUS_DST_COLORValue = Ref{Any}(nothing)
const GL10_GL_ONE_MINUS_DST_COLORSet = Ref(false)
function staticGet_GL_ONE_MINUS_DST_COLOR(::Type{GL10})
    if !GL10_GL_ONE_MINUS_DST_COLORSet[]
        GL10_GL_ONE_MINUS_DST_COLORSet[] = true
        GL10_GL_ONE_MINUS_DST_COLORValue[] = Int32(775)
    end
    GL10_GL_ONE_MINUS_DST_COLORValue[]
end
function staticSet_GL_ONE_MINUS_DST_COLOR(::Type{GL10}, value)
    GL10_GL_ONE_MINUS_DST_COLORSet[] = true
    GL10_GL_ONE_MINUS_DST_COLORValue[] = value
end
const GL10_GL_ONE_MINUS_SRC_ALPHAValue = Ref{Any}(nothing)
const GL10_GL_ONE_MINUS_SRC_ALPHASet = Ref(false)
function staticGet_GL_ONE_MINUS_SRC_ALPHA(::Type{GL10})
    if !GL10_GL_ONE_MINUS_SRC_ALPHASet[]
        GL10_GL_ONE_MINUS_SRC_ALPHASet[] = true
        GL10_GL_ONE_MINUS_SRC_ALPHAValue[] = Int32(771)
    end
    GL10_GL_ONE_MINUS_SRC_ALPHAValue[]
end
function staticSet_GL_ONE_MINUS_SRC_ALPHA(::Type{GL10}, value)
    GL10_GL_ONE_MINUS_SRC_ALPHASet[] = true
    GL10_GL_ONE_MINUS_SRC_ALPHAValue[] = value
end
const GL10_GL_ONE_MINUS_SRC_COLORValue = Ref{Any}(nothing)
const GL10_GL_ONE_MINUS_SRC_COLORSet = Ref(false)
function staticGet_GL_ONE_MINUS_SRC_COLOR(::Type{GL10})
    if !GL10_GL_ONE_MINUS_SRC_COLORSet[]
        GL10_GL_ONE_MINUS_SRC_COLORSet[] = true
        GL10_GL_ONE_MINUS_SRC_COLORValue[] = Int32(769)
    end
    GL10_GL_ONE_MINUS_SRC_COLORValue[]
end
function staticSet_GL_ONE_MINUS_SRC_COLOR(::Type{GL10}, value)
    GL10_GL_ONE_MINUS_SRC_COLORSet[] = true
    GL10_GL_ONE_MINUS_SRC_COLORValue[] = value
end
const GL10_GL_ORValue = Ref{Any}(nothing)
const GL10_GL_ORSet = Ref(false)
function staticGet_GL_OR(::Type{GL10})
    if !GL10_GL_ORSet[]
        GL10_GL_ORSet[] = true
        GL10_GL_ORValue[] = Int32(5383)
    end
    GL10_GL_ORValue[]
end
function staticSet_GL_OR(::Type{GL10}, value)
    GL10_GL_ORSet[] = true
    GL10_GL_ORValue[] = value
end
const GL10_GL_OR_INVERTEDValue = Ref{Any}(nothing)
const GL10_GL_OR_INVERTEDSet = Ref(false)
function staticGet_GL_OR_INVERTED(::Type{GL10})
    if !GL10_GL_OR_INVERTEDSet[]
        GL10_GL_OR_INVERTEDSet[] = true
        GL10_GL_OR_INVERTEDValue[] = Int32(5389)
    end
    GL10_GL_OR_INVERTEDValue[]
end
function staticSet_GL_OR_INVERTED(::Type{GL10}, value)
    GL10_GL_OR_INVERTEDSet[] = true
    GL10_GL_OR_INVERTEDValue[] = value
end
const GL10_GL_OR_REVERSEValue = Ref{Any}(nothing)
const GL10_GL_OR_REVERSESet = Ref(false)
function staticGet_GL_OR_REVERSE(::Type{GL10})
    if !GL10_GL_OR_REVERSESet[]
        GL10_GL_OR_REVERSESet[] = true
        GL10_GL_OR_REVERSEValue[] = Int32(5387)
    end
    GL10_GL_OR_REVERSEValue[]
end
function staticSet_GL_OR_REVERSE(::Type{GL10}, value)
    GL10_GL_OR_REVERSESet[] = true
    GL10_GL_OR_REVERSEValue[] = value
end
const GL10_GL_OUT_OF_MEMORYValue = Ref{Any}(nothing)
const GL10_GL_OUT_OF_MEMORYSet = Ref(false)
function staticGet_GL_OUT_OF_MEMORY(::Type{GL10})
    if !GL10_GL_OUT_OF_MEMORYSet[]
        GL10_GL_OUT_OF_MEMORYSet[] = true
        GL10_GL_OUT_OF_MEMORYValue[] = Int32(1285)
    end
    GL10_GL_OUT_OF_MEMORYValue[]
end
function staticSet_GL_OUT_OF_MEMORY(::Type{GL10}, value)
    GL10_GL_OUT_OF_MEMORYSet[] = true
    GL10_GL_OUT_OF_MEMORYValue[] = value
end
const GL10_GL_PACK_ALIGNMENTValue = Ref{Any}(nothing)
const GL10_GL_PACK_ALIGNMENTSet = Ref(false)
function staticGet_GL_PACK_ALIGNMENT(::Type{GL10})
    if !GL10_GL_PACK_ALIGNMENTSet[]
        GL10_GL_PACK_ALIGNMENTSet[] = true
        GL10_GL_PACK_ALIGNMENTValue[] = Int32(3333)
    end
    GL10_GL_PACK_ALIGNMENTValue[]
end
function staticSet_GL_PACK_ALIGNMENT(::Type{GL10}, value)
    GL10_GL_PACK_ALIGNMENTSet[] = true
    GL10_GL_PACK_ALIGNMENTValue[] = value
end
const GL10_GL_PALETTE4_R5_G6_B5_OESValue = Ref{Any}(nothing)
const GL10_GL_PALETTE4_R5_G6_B5_OESSet = Ref(false)
function staticGet_GL_PALETTE4_R5_G6_B5_OES(::Type{GL10})
    if !GL10_GL_PALETTE4_R5_G6_B5_OESSet[]
        GL10_GL_PALETTE4_R5_G6_B5_OESSet[] = true
        GL10_GL_PALETTE4_R5_G6_B5_OESValue[] = Int32(35730)
    end
    GL10_GL_PALETTE4_R5_G6_B5_OESValue[]
end
function staticSet_GL_PALETTE4_R5_G6_B5_OES(::Type{GL10}, value)
    GL10_GL_PALETTE4_R5_G6_B5_OESSet[] = true
    GL10_GL_PALETTE4_R5_G6_B5_OESValue[] = value
end
const GL10_GL_PALETTE4_RGB5_A1_OESValue = Ref{Any}(nothing)
const GL10_GL_PALETTE4_RGB5_A1_OESSet = Ref(false)
function staticGet_GL_PALETTE4_RGB5_A1_OES(::Type{GL10})
    if !GL10_GL_PALETTE4_RGB5_A1_OESSet[]
        GL10_GL_PALETTE4_RGB5_A1_OESSet[] = true
        GL10_GL_PALETTE4_RGB5_A1_OESValue[] = Int32(35732)
    end
    GL10_GL_PALETTE4_RGB5_A1_OESValue[]
end
function staticSet_GL_PALETTE4_RGB5_A1_OES(::Type{GL10}, value)
    GL10_GL_PALETTE4_RGB5_A1_OESSet[] = true
    GL10_GL_PALETTE4_RGB5_A1_OESValue[] = value
end
const GL10_GL_PALETTE4_RGB8_OESValue = Ref{Any}(nothing)
const GL10_GL_PALETTE4_RGB8_OESSet = Ref(false)
function staticGet_GL_PALETTE4_RGB8_OES(::Type{GL10})
    if !GL10_GL_PALETTE4_RGB8_OESSet[]
        GL10_GL_PALETTE4_RGB8_OESSet[] = true
        GL10_GL_PALETTE4_RGB8_OESValue[] = Int32(35728)
    end
    GL10_GL_PALETTE4_RGB8_OESValue[]
end
function staticSet_GL_PALETTE4_RGB8_OES(::Type{GL10}, value)
    GL10_GL_PALETTE4_RGB8_OESSet[] = true
    GL10_GL_PALETTE4_RGB8_OESValue[] = value
end
const GL10_GL_PALETTE4_RGBA4_OESValue = Ref{Any}(nothing)
const GL10_GL_PALETTE4_RGBA4_OESSet = Ref(false)
function staticGet_GL_PALETTE4_RGBA4_OES(::Type{GL10})
    if !GL10_GL_PALETTE4_RGBA4_OESSet[]
        GL10_GL_PALETTE4_RGBA4_OESSet[] = true
        GL10_GL_PALETTE4_RGBA4_OESValue[] = Int32(35731)
    end
    GL10_GL_PALETTE4_RGBA4_OESValue[]
end
function staticSet_GL_PALETTE4_RGBA4_OES(::Type{GL10}, value)
    GL10_GL_PALETTE4_RGBA4_OESSet[] = true
    GL10_GL_PALETTE4_RGBA4_OESValue[] = value
end
const GL10_GL_PALETTE4_RGBA8_OESValue = Ref{Any}(nothing)
const GL10_GL_PALETTE4_RGBA8_OESSet = Ref(false)
function staticGet_GL_PALETTE4_RGBA8_OES(::Type{GL10})
    if !GL10_GL_PALETTE4_RGBA8_OESSet[]
        GL10_GL_PALETTE4_RGBA8_OESSet[] = true
        GL10_GL_PALETTE4_RGBA8_OESValue[] = Int32(35729)
    end
    GL10_GL_PALETTE4_RGBA8_OESValue[]
end
function staticSet_GL_PALETTE4_RGBA8_OES(::Type{GL10}, value)
    GL10_GL_PALETTE4_RGBA8_OESSet[] = true
    GL10_GL_PALETTE4_RGBA8_OESValue[] = value
end
const GL10_GL_PALETTE8_R5_G6_B5_OESValue = Ref{Any}(nothing)
const GL10_GL_PALETTE8_R5_G6_B5_OESSet = Ref(false)
function staticGet_GL_PALETTE8_R5_G6_B5_OES(::Type{GL10})
    if !GL10_GL_PALETTE8_R5_G6_B5_OESSet[]
        GL10_GL_PALETTE8_R5_G6_B5_OESSet[] = true
        GL10_GL_PALETTE8_R5_G6_B5_OESValue[] = Int32(35735)
    end
    GL10_GL_PALETTE8_R5_G6_B5_OESValue[]
end
function staticSet_GL_PALETTE8_R5_G6_B5_OES(::Type{GL10}, value)
    GL10_GL_PALETTE8_R5_G6_B5_OESSet[] = true
    GL10_GL_PALETTE8_R5_G6_B5_OESValue[] = value
end
const GL10_GL_PALETTE8_RGB5_A1_OESValue = Ref{Any}(nothing)
const GL10_GL_PALETTE8_RGB5_A1_OESSet = Ref(false)
function staticGet_GL_PALETTE8_RGB5_A1_OES(::Type{GL10})
    if !GL10_GL_PALETTE8_RGB5_A1_OESSet[]
        GL10_GL_PALETTE8_RGB5_A1_OESSet[] = true
        GL10_GL_PALETTE8_RGB5_A1_OESValue[] = Int32(35737)
    end
    GL10_GL_PALETTE8_RGB5_A1_OESValue[]
end
function staticSet_GL_PALETTE8_RGB5_A1_OES(::Type{GL10}, value)
    GL10_GL_PALETTE8_RGB5_A1_OESSet[] = true
    GL10_GL_PALETTE8_RGB5_A1_OESValue[] = value
end
const GL10_GL_PALETTE8_RGB8_OESValue = Ref{Any}(nothing)
const GL10_GL_PALETTE8_RGB8_OESSet = Ref(false)
function staticGet_GL_PALETTE8_RGB8_OES(::Type{GL10})
    if !GL10_GL_PALETTE8_RGB8_OESSet[]
        GL10_GL_PALETTE8_RGB8_OESSet[] = true
        GL10_GL_PALETTE8_RGB8_OESValue[] = Int32(35733)
    end
    GL10_GL_PALETTE8_RGB8_OESValue[]
end
function staticSet_GL_PALETTE8_RGB8_OES(::Type{GL10}, value)
    GL10_GL_PALETTE8_RGB8_OESSet[] = true
    GL10_GL_PALETTE8_RGB8_OESValue[] = value
end
const GL10_GL_PALETTE8_RGBA4_OESValue = Ref{Any}(nothing)
const GL10_GL_PALETTE8_RGBA4_OESSet = Ref(false)
function staticGet_GL_PALETTE8_RGBA4_OES(::Type{GL10})
    if !GL10_GL_PALETTE8_RGBA4_OESSet[]
        GL10_GL_PALETTE8_RGBA4_OESSet[] = true
        GL10_GL_PALETTE8_RGBA4_OESValue[] = Int32(35736)
    end
    GL10_GL_PALETTE8_RGBA4_OESValue[]
end
function staticSet_GL_PALETTE8_RGBA4_OES(::Type{GL10}, value)
    GL10_GL_PALETTE8_RGBA4_OESSet[] = true
    GL10_GL_PALETTE8_RGBA4_OESValue[] = value
end
const GL10_GL_PALETTE8_RGBA8_OESValue = Ref{Any}(nothing)
const GL10_GL_PALETTE8_RGBA8_OESSet = Ref(false)
function staticGet_GL_PALETTE8_RGBA8_OES(::Type{GL10})
    if !GL10_GL_PALETTE8_RGBA8_OESSet[]
        GL10_GL_PALETTE8_RGBA8_OESSet[] = true
        GL10_GL_PALETTE8_RGBA8_OESValue[] = Int32(35734)
    end
    GL10_GL_PALETTE8_RGBA8_OESValue[]
end
function staticSet_GL_PALETTE8_RGBA8_OES(::Type{GL10}, value)
    GL10_GL_PALETTE8_RGBA8_OESSet[] = true
    GL10_GL_PALETTE8_RGBA8_OESValue[] = value
end
const GL10_GL_PERSPECTIVE_CORRECTION_HINTValue = Ref{Any}(nothing)
const GL10_GL_PERSPECTIVE_CORRECTION_HINTSet = Ref(false)
function staticGet_GL_PERSPECTIVE_CORRECTION_HINT(::Type{GL10})
    if !GL10_GL_PERSPECTIVE_CORRECTION_HINTSet[]
        GL10_GL_PERSPECTIVE_CORRECTION_HINTSet[] = true
        GL10_GL_PERSPECTIVE_CORRECTION_HINTValue[] = Int32(3152)
    end
    GL10_GL_PERSPECTIVE_CORRECTION_HINTValue[]
end
function staticSet_GL_PERSPECTIVE_CORRECTION_HINT(::Type{GL10}, value)
    GL10_GL_PERSPECTIVE_CORRECTION_HINTSet[] = true
    GL10_GL_PERSPECTIVE_CORRECTION_HINTValue[] = value
end
const GL10_GL_POINT_SMOOTHValue = Ref{Any}(nothing)
const GL10_GL_POINT_SMOOTHSet = Ref(false)
function staticGet_GL_POINT_SMOOTH(::Type{GL10})
    if !GL10_GL_POINT_SMOOTHSet[]
        GL10_GL_POINT_SMOOTHSet[] = true
        GL10_GL_POINT_SMOOTHValue[] = Int32(2832)
    end
    GL10_GL_POINT_SMOOTHValue[]
end
function staticSet_GL_POINT_SMOOTH(::Type{GL10}, value)
    GL10_GL_POINT_SMOOTHSet[] = true
    GL10_GL_POINT_SMOOTHValue[] = value
end
const GL10_GL_POINT_SMOOTH_HINTValue = Ref{Any}(nothing)
const GL10_GL_POINT_SMOOTH_HINTSet = Ref(false)
function staticGet_GL_POINT_SMOOTH_HINT(::Type{GL10})
    if !GL10_GL_POINT_SMOOTH_HINTSet[]
        GL10_GL_POINT_SMOOTH_HINTSet[] = true
        GL10_GL_POINT_SMOOTH_HINTValue[] = Int32(3153)
    end
    GL10_GL_POINT_SMOOTH_HINTValue[]
end
function staticSet_GL_POINT_SMOOTH_HINT(::Type{GL10}, value)
    GL10_GL_POINT_SMOOTH_HINTSet[] = true
    GL10_GL_POINT_SMOOTH_HINTValue[] = value
end
const GL10_GL_POINTSValue = Ref{Any}(nothing)
const GL10_GL_POINTSSet = Ref(false)
function staticGet_GL_POINTS(::Type{GL10})
    if !GL10_GL_POINTSSet[]
        GL10_GL_POINTSSet[] = true
        GL10_GL_POINTSValue[] = Int32(0)
    end
    GL10_GL_POINTSValue[]
end
function staticSet_GL_POINTS(::Type{GL10}, value)
    GL10_GL_POINTSSet[] = true
    GL10_GL_POINTSValue[] = value
end
const GL10_GL_POINT_FADE_THRESHOLD_SIZEValue = Ref{Any}(nothing)
const GL10_GL_POINT_FADE_THRESHOLD_SIZESet = Ref(false)
function staticGet_GL_POINT_FADE_THRESHOLD_SIZE(::Type{GL10})
    if !GL10_GL_POINT_FADE_THRESHOLD_SIZESet[]
        GL10_GL_POINT_FADE_THRESHOLD_SIZESet[] = true
        GL10_GL_POINT_FADE_THRESHOLD_SIZEValue[] = Int32(33064)
    end
    GL10_GL_POINT_FADE_THRESHOLD_SIZEValue[]
end
function staticSet_GL_POINT_FADE_THRESHOLD_SIZE(::Type{GL10}, value)
    GL10_GL_POINT_FADE_THRESHOLD_SIZESet[] = true
    GL10_GL_POINT_FADE_THRESHOLD_SIZEValue[] = value
end
const GL10_GL_POINT_SIZEValue = Ref{Any}(nothing)
const GL10_GL_POINT_SIZESet = Ref(false)
function staticGet_GL_POINT_SIZE(::Type{GL10})
    if !GL10_GL_POINT_SIZESet[]
        GL10_GL_POINT_SIZESet[] = true
        GL10_GL_POINT_SIZEValue[] = Int32(2833)
    end
    GL10_GL_POINT_SIZEValue[]
end
function staticSet_GL_POINT_SIZE(::Type{GL10}, value)
    GL10_GL_POINT_SIZESet[] = true
    GL10_GL_POINT_SIZEValue[] = value
end
const GL10_GL_POLYGON_OFFSET_FILLValue = Ref{Any}(nothing)
const GL10_GL_POLYGON_OFFSET_FILLSet = Ref(false)
function staticGet_GL_POLYGON_OFFSET_FILL(::Type{GL10})
    if !GL10_GL_POLYGON_OFFSET_FILLSet[]
        GL10_GL_POLYGON_OFFSET_FILLSet[] = true
        GL10_GL_POLYGON_OFFSET_FILLValue[] = Int32(32823)
    end
    GL10_GL_POLYGON_OFFSET_FILLValue[]
end
function staticSet_GL_POLYGON_OFFSET_FILL(::Type{GL10}, value)
    GL10_GL_POLYGON_OFFSET_FILLSet[] = true
    GL10_GL_POLYGON_OFFSET_FILLValue[] = value
end
const GL10_GL_POLYGON_SMOOTH_HINTValue = Ref{Any}(nothing)
const GL10_GL_POLYGON_SMOOTH_HINTSet = Ref(false)
function staticGet_GL_POLYGON_SMOOTH_HINT(::Type{GL10})
    if !GL10_GL_POLYGON_SMOOTH_HINTSet[]
        GL10_GL_POLYGON_SMOOTH_HINTSet[] = true
        GL10_GL_POLYGON_SMOOTH_HINTValue[] = Int32(3155)
    end
    GL10_GL_POLYGON_SMOOTH_HINTValue[]
end
function staticSet_GL_POLYGON_SMOOTH_HINT(::Type{GL10}, value)
    GL10_GL_POLYGON_SMOOTH_HINTSet[] = true
    GL10_GL_POLYGON_SMOOTH_HINTValue[] = value
end
const GL10_GL_POSITIONValue = Ref{Any}(nothing)
const GL10_GL_POSITIONSet = Ref(false)
function staticGet_GL_POSITION(::Type{GL10})
    if !GL10_GL_POSITIONSet[]
        GL10_GL_POSITIONSet[] = true
        GL10_GL_POSITIONValue[] = Int32(4611)
    end
    GL10_GL_POSITIONValue[]
end
function staticSet_GL_POSITION(::Type{GL10}, value)
    GL10_GL_POSITIONSet[] = true
    GL10_GL_POSITIONValue[] = value
end
const GL10_GL_PROJECTIONValue = Ref{Any}(nothing)
const GL10_GL_PROJECTIONSet = Ref(false)
function staticGet_GL_PROJECTION(::Type{GL10})
    if !GL10_GL_PROJECTIONSet[]
        GL10_GL_PROJECTIONSet[] = true
        GL10_GL_PROJECTIONValue[] = Int32(5889)
    end
    GL10_GL_PROJECTIONValue[]
end
function staticSet_GL_PROJECTION(::Type{GL10}, value)
    GL10_GL_PROJECTIONSet[] = true
    GL10_GL_PROJECTIONValue[] = value
end
const GL10_GL_QUADRATIC_ATTENUATIONValue = Ref{Any}(nothing)
const GL10_GL_QUADRATIC_ATTENUATIONSet = Ref(false)
function staticGet_GL_QUADRATIC_ATTENUATION(::Type{GL10})
    if !GL10_GL_QUADRATIC_ATTENUATIONSet[]
        GL10_GL_QUADRATIC_ATTENUATIONSet[] = true
        GL10_GL_QUADRATIC_ATTENUATIONValue[] = Int32(4617)
    end
    GL10_GL_QUADRATIC_ATTENUATIONValue[]
end
function staticSet_GL_QUADRATIC_ATTENUATION(::Type{GL10}, value)
    GL10_GL_QUADRATIC_ATTENUATIONSet[] = true
    GL10_GL_QUADRATIC_ATTENUATIONValue[] = value
end
const GL10_GL_RED_BITSValue = Ref{Any}(nothing)
const GL10_GL_RED_BITSSet = Ref(false)
function staticGet_GL_RED_BITS(::Type{GL10})
    if !GL10_GL_RED_BITSSet[]
        GL10_GL_RED_BITSSet[] = true
        GL10_GL_RED_BITSValue[] = Int32(3410)
    end
    GL10_GL_RED_BITSValue[]
end
function staticSet_GL_RED_BITS(::Type{GL10}, value)
    GL10_GL_RED_BITSSet[] = true
    GL10_GL_RED_BITSValue[] = value
end
const GL10_GL_RENDERERValue = Ref{Any}(nothing)
const GL10_GL_RENDERERSet = Ref(false)
function staticGet_GL_RENDERER(::Type{GL10})
    if !GL10_GL_RENDERERSet[]
        GL10_GL_RENDERERSet[] = true
        GL10_GL_RENDERERValue[] = Int32(7937)
    end
    GL10_GL_RENDERERValue[]
end
function staticSet_GL_RENDERER(::Type{GL10}, value)
    GL10_GL_RENDERERSet[] = true
    GL10_GL_RENDERERValue[] = value
end
const GL10_GL_REPEATValue = Ref{Any}(nothing)
const GL10_GL_REPEATSet = Ref(false)
function staticGet_GL_REPEAT(::Type{GL10})
    if !GL10_GL_REPEATSet[]
        GL10_GL_REPEATSet[] = true
        GL10_GL_REPEATValue[] = Int32(10497)
    end
    GL10_GL_REPEATValue[]
end
function staticSet_GL_REPEAT(::Type{GL10}, value)
    GL10_GL_REPEATSet[] = true
    GL10_GL_REPEATValue[] = value
end
const GL10_GL_REPLACEValue = Ref{Any}(nothing)
const GL10_GL_REPLACESet = Ref(false)
function staticGet_GL_REPLACE(::Type{GL10})
    if !GL10_GL_REPLACESet[]
        GL10_GL_REPLACESet[] = true
        GL10_GL_REPLACEValue[] = Int32(7681)
    end
    GL10_GL_REPLACEValue[]
end
function staticSet_GL_REPLACE(::Type{GL10}, value)
    GL10_GL_REPLACESet[] = true
    GL10_GL_REPLACEValue[] = value
end
const GL10_GL_RESCALE_NORMALValue = Ref{Any}(nothing)
const GL10_GL_RESCALE_NORMALSet = Ref(false)
function staticGet_GL_RESCALE_NORMAL(::Type{GL10})
    if !GL10_GL_RESCALE_NORMALSet[]
        GL10_GL_RESCALE_NORMALSet[] = true
        GL10_GL_RESCALE_NORMALValue[] = Int32(32826)
    end
    GL10_GL_RESCALE_NORMALValue[]
end
function staticSet_GL_RESCALE_NORMAL(::Type{GL10}, value)
    GL10_GL_RESCALE_NORMALSet[] = true
    GL10_GL_RESCALE_NORMALValue[] = value
end
const GL10_GL_RGBValue = Ref{Any}(nothing)
const GL10_GL_RGBSet = Ref(false)
function staticGet_GL_RGB(::Type{GL10})
    if !GL10_GL_RGBSet[]
        GL10_GL_RGBSet[] = true
        GL10_GL_RGBValue[] = Int32(6407)
    end
    GL10_GL_RGBValue[]
end
function staticSet_GL_RGB(::Type{GL10}, value)
    GL10_GL_RGBSet[] = true
    GL10_GL_RGBValue[] = value
end
const GL10_GL_RGBAValue = Ref{Any}(nothing)
const GL10_GL_RGBASet = Ref(false)
function staticGet_GL_RGBA(::Type{GL10})
    if !GL10_GL_RGBASet[]
        GL10_GL_RGBASet[] = true
        GL10_GL_RGBAValue[] = Int32(6408)
    end
    GL10_GL_RGBAValue[]
end
function staticSet_GL_RGBA(::Type{GL10}, value)
    GL10_GL_RGBASet[] = true
    GL10_GL_RGBAValue[] = value
end
const GL10_GL_SAMPLE_ALPHA_TO_COVERAGEValue = Ref{Any}(nothing)
const GL10_GL_SAMPLE_ALPHA_TO_COVERAGESet = Ref(false)
function staticGet_GL_SAMPLE_ALPHA_TO_COVERAGE(::Type{GL10})
    if !GL10_GL_SAMPLE_ALPHA_TO_COVERAGESet[]
        GL10_GL_SAMPLE_ALPHA_TO_COVERAGESet[] = true
        GL10_GL_SAMPLE_ALPHA_TO_COVERAGEValue[] = Int32(32926)
    end
    GL10_GL_SAMPLE_ALPHA_TO_COVERAGEValue[]
end
function staticSet_GL_SAMPLE_ALPHA_TO_COVERAGE(::Type{GL10}, value)
    GL10_GL_SAMPLE_ALPHA_TO_COVERAGESet[] = true
    GL10_GL_SAMPLE_ALPHA_TO_COVERAGEValue[] = value
end
const GL10_GL_SAMPLE_ALPHA_TO_ONEValue = Ref{Any}(nothing)
const GL10_GL_SAMPLE_ALPHA_TO_ONESet = Ref(false)
function staticGet_GL_SAMPLE_ALPHA_TO_ONE(::Type{GL10})
    if !GL10_GL_SAMPLE_ALPHA_TO_ONESet[]
        GL10_GL_SAMPLE_ALPHA_TO_ONESet[] = true
        GL10_GL_SAMPLE_ALPHA_TO_ONEValue[] = Int32(32927)
    end
    GL10_GL_SAMPLE_ALPHA_TO_ONEValue[]
end
function staticSet_GL_SAMPLE_ALPHA_TO_ONE(::Type{GL10}, value)
    GL10_GL_SAMPLE_ALPHA_TO_ONESet[] = true
    GL10_GL_SAMPLE_ALPHA_TO_ONEValue[] = value
end
const GL10_GL_SAMPLE_COVERAGEValue = Ref{Any}(nothing)
const GL10_GL_SAMPLE_COVERAGESet = Ref(false)
function staticGet_GL_SAMPLE_COVERAGE(::Type{GL10})
    if !GL10_GL_SAMPLE_COVERAGESet[]
        GL10_GL_SAMPLE_COVERAGESet[] = true
        GL10_GL_SAMPLE_COVERAGEValue[] = Int32(32928)
    end
    GL10_GL_SAMPLE_COVERAGEValue[]
end
function staticSet_GL_SAMPLE_COVERAGE(::Type{GL10}, value)
    GL10_GL_SAMPLE_COVERAGESet[] = true
    GL10_GL_SAMPLE_COVERAGEValue[] = value
end
const GL10_GL_SCISSOR_TESTValue = Ref{Any}(nothing)
const GL10_GL_SCISSOR_TESTSet = Ref(false)
function staticGet_GL_SCISSOR_TEST(::Type{GL10})
    if !GL10_GL_SCISSOR_TESTSet[]
        GL10_GL_SCISSOR_TESTSet[] = true
        GL10_GL_SCISSOR_TESTValue[] = Int32(3089)
    end
    GL10_GL_SCISSOR_TESTValue[]
end
function staticSet_GL_SCISSOR_TEST(::Type{GL10}, value)
    GL10_GL_SCISSOR_TESTSet[] = true
    GL10_GL_SCISSOR_TESTValue[] = value
end
const GL10_GL_SETValue = Ref{Any}(nothing)
const GL10_GL_SETSet = Ref(false)
function staticGet_GL_SET(::Type{GL10})
    if !GL10_GL_SETSet[]
        GL10_GL_SETSet[] = true
        GL10_GL_SETValue[] = Int32(5391)
    end
    GL10_GL_SETValue[]
end
function staticSet_GL_SET(::Type{GL10}, value)
    GL10_GL_SETSet[] = true
    GL10_GL_SETValue[] = value
end
const GL10_GL_SHININESSValue = Ref{Any}(nothing)
const GL10_GL_SHININESSSet = Ref(false)
function staticGet_GL_SHININESS(::Type{GL10})
    if !GL10_GL_SHININESSSet[]
        GL10_GL_SHININESSSet[] = true
        GL10_GL_SHININESSValue[] = Int32(5633)
    end
    GL10_GL_SHININESSValue[]
end
function staticSet_GL_SHININESS(::Type{GL10}, value)
    GL10_GL_SHININESSSet[] = true
    GL10_GL_SHININESSValue[] = value
end
const GL10_GL_SHORTValue = Ref{Any}(nothing)
const GL10_GL_SHORTSet = Ref(false)
function staticGet_GL_SHORT(::Type{GL10})
    if !GL10_GL_SHORTSet[]
        GL10_GL_SHORTSet[] = true
        GL10_GL_SHORTValue[] = Int32(5122)
    end
    GL10_GL_SHORTValue[]
end
function staticSet_GL_SHORT(::Type{GL10}, value)
    GL10_GL_SHORTSet[] = true
    GL10_GL_SHORTValue[] = value
end
const GL10_GL_SMOOTHValue = Ref{Any}(nothing)
const GL10_GL_SMOOTHSet = Ref(false)
function staticGet_GL_SMOOTH(::Type{GL10})
    if !GL10_GL_SMOOTHSet[]
        GL10_GL_SMOOTHSet[] = true
        GL10_GL_SMOOTHValue[] = Int32(7425)
    end
    GL10_GL_SMOOTHValue[]
end
function staticSet_GL_SMOOTH(::Type{GL10}, value)
    GL10_GL_SMOOTHSet[] = true
    GL10_GL_SMOOTHValue[] = value
end
const GL10_GL_SMOOTH_LINE_WIDTH_RANGEValue = Ref{Any}(nothing)
const GL10_GL_SMOOTH_LINE_WIDTH_RANGESet = Ref(false)
function staticGet_GL_SMOOTH_LINE_WIDTH_RANGE(::Type{GL10})
    if !GL10_GL_SMOOTH_LINE_WIDTH_RANGESet[]
        GL10_GL_SMOOTH_LINE_WIDTH_RANGESet[] = true
        GL10_GL_SMOOTH_LINE_WIDTH_RANGEValue[] = Int32(2850)
    end
    GL10_GL_SMOOTH_LINE_WIDTH_RANGEValue[]
end
function staticSet_GL_SMOOTH_LINE_WIDTH_RANGE(::Type{GL10}, value)
    GL10_GL_SMOOTH_LINE_WIDTH_RANGESet[] = true
    GL10_GL_SMOOTH_LINE_WIDTH_RANGEValue[] = value
end
const GL10_GL_SMOOTH_POINT_SIZE_RANGEValue = Ref{Any}(nothing)
const GL10_GL_SMOOTH_POINT_SIZE_RANGESet = Ref(false)
function staticGet_GL_SMOOTH_POINT_SIZE_RANGE(::Type{GL10})
    if !GL10_GL_SMOOTH_POINT_SIZE_RANGESet[]
        GL10_GL_SMOOTH_POINT_SIZE_RANGESet[] = true
        GL10_GL_SMOOTH_POINT_SIZE_RANGEValue[] = Int32(2834)
    end
    GL10_GL_SMOOTH_POINT_SIZE_RANGEValue[]
end
function staticSet_GL_SMOOTH_POINT_SIZE_RANGE(::Type{GL10}, value)
    GL10_GL_SMOOTH_POINT_SIZE_RANGESet[] = true
    GL10_GL_SMOOTH_POINT_SIZE_RANGEValue[] = value
end
const GL10_GL_SPECULARValue = Ref{Any}(nothing)
const GL10_GL_SPECULARSet = Ref(false)
function staticGet_GL_SPECULAR(::Type{GL10})
    if !GL10_GL_SPECULARSet[]
        GL10_GL_SPECULARSet[] = true
        GL10_GL_SPECULARValue[] = Int32(4610)
    end
    GL10_GL_SPECULARValue[]
end
function staticSet_GL_SPECULAR(::Type{GL10}, value)
    GL10_GL_SPECULARSet[] = true
    GL10_GL_SPECULARValue[] = value
end
const GL10_GL_SPOT_CUTOFFValue = Ref{Any}(nothing)
const GL10_GL_SPOT_CUTOFFSet = Ref(false)
function staticGet_GL_SPOT_CUTOFF(::Type{GL10})
    if !GL10_GL_SPOT_CUTOFFSet[]
        GL10_GL_SPOT_CUTOFFSet[] = true
        GL10_GL_SPOT_CUTOFFValue[] = Int32(4614)
    end
    GL10_GL_SPOT_CUTOFFValue[]
end
function staticSet_GL_SPOT_CUTOFF(::Type{GL10}, value)
    GL10_GL_SPOT_CUTOFFSet[] = true
    GL10_GL_SPOT_CUTOFFValue[] = value
end
const GL10_GL_SPOT_DIRECTIONValue = Ref{Any}(nothing)
const GL10_GL_SPOT_DIRECTIONSet = Ref(false)
function staticGet_GL_SPOT_DIRECTION(::Type{GL10})
    if !GL10_GL_SPOT_DIRECTIONSet[]
        GL10_GL_SPOT_DIRECTIONSet[] = true
        GL10_GL_SPOT_DIRECTIONValue[] = Int32(4612)
    end
    GL10_GL_SPOT_DIRECTIONValue[]
end
function staticSet_GL_SPOT_DIRECTION(::Type{GL10}, value)
    GL10_GL_SPOT_DIRECTIONSet[] = true
    GL10_GL_SPOT_DIRECTIONValue[] = value
end
const GL10_GL_SPOT_EXPONENTValue = Ref{Any}(nothing)
const GL10_GL_SPOT_EXPONENTSet = Ref(false)
function staticGet_GL_SPOT_EXPONENT(::Type{GL10})
    if !GL10_GL_SPOT_EXPONENTSet[]
        GL10_GL_SPOT_EXPONENTSet[] = true
        GL10_GL_SPOT_EXPONENTValue[] = Int32(4613)
    end
    GL10_GL_SPOT_EXPONENTValue[]
end
function staticSet_GL_SPOT_EXPONENT(::Type{GL10}, value)
    GL10_GL_SPOT_EXPONENTSet[] = true
    GL10_GL_SPOT_EXPONENTValue[] = value
end
const GL10_GL_SRC_ALPHAValue = Ref{Any}(nothing)
const GL10_GL_SRC_ALPHASet = Ref(false)
function staticGet_GL_SRC_ALPHA(::Type{GL10})
    if !GL10_GL_SRC_ALPHASet[]
        GL10_GL_SRC_ALPHASet[] = true
        GL10_GL_SRC_ALPHAValue[] = Int32(770)
    end
    GL10_GL_SRC_ALPHAValue[]
end
function staticSet_GL_SRC_ALPHA(::Type{GL10}, value)
    GL10_GL_SRC_ALPHASet[] = true
    GL10_GL_SRC_ALPHAValue[] = value
end
const GL10_GL_SRC_ALPHA_SATURATEValue = Ref{Any}(nothing)
const GL10_GL_SRC_ALPHA_SATURATESet = Ref(false)
function staticGet_GL_SRC_ALPHA_SATURATE(::Type{GL10})
    if !GL10_GL_SRC_ALPHA_SATURATESet[]
        GL10_GL_SRC_ALPHA_SATURATESet[] = true
        GL10_GL_SRC_ALPHA_SATURATEValue[] = Int32(776)
    end
    GL10_GL_SRC_ALPHA_SATURATEValue[]
end
function staticSet_GL_SRC_ALPHA_SATURATE(::Type{GL10}, value)
    GL10_GL_SRC_ALPHA_SATURATESet[] = true
    GL10_GL_SRC_ALPHA_SATURATEValue[] = value
end
const GL10_GL_SRC_COLORValue = Ref{Any}(nothing)
const GL10_GL_SRC_COLORSet = Ref(false)
function staticGet_GL_SRC_COLOR(::Type{GL10})
    if !GL10_GL_SRC_COLORSet[]
        GL10_GL_SRC_COLORSet[] = true
        GL10_GL_SRC_COLORValue[] = Int32(768)
    end
    GL10_GL_SRC_COLORValue[]
end
function staticSet_GL_SRC_COLOR(::Type{GL10}, value)
    GL10_GL_SRC_COLORSet[] = true
    GL10_GL_SRC_COLORValue[] = value
end
const GL10_GL_STACK_OVERFLOWValue = Ref{Any}(nothing)
const GL10_GL_STACK_OVERFLOWSet = Ref(false)
function staticGet_GL_STACK_OVERFLOW(::Type{GL10})
    if !GL10_GL_STACK_OVERFLOWSet[]
        GL10_GL_STACK_OVERFLOWSet[] = true
        GL10_GL_STACK_OVERFLOWValue[] = Int32(1283)
    end
    GL10_GL_STACK_OVERFLOWValue[]
end
function staticSet_GL_STACK_OVERFLOW(::Type{GL10}, value)
    GL10_GL_STACK_OVERFLOWSet[] = true
    GL10_GL_STACK_OVERFLOWValue[] = value
end
const GL10_GL_STACK_UNDERFLOWValue = Ref{Any}(nothing)
const GL10_GL_STACK_UNDERFLOWSet = Ref(false)
function staticGet_GL_STACK_UNDERFLOW(::Type{GL10})
    if !GL10_GL_STACK_UNDERFLOWSet[]
        GL10_GL_STACK_UNDERFLOWSet[] = true
        GL10_GL_STACK_UNDERFLOWValue[] = Int32(1284)
    end
    GL10_GL_STACK_UNDERFLOWValue[]
end
function staticSet_GL_STACK_UNDERFLOW(::Type{GL10}, value)
    GL10_GL_STACK_UNDERFLOWSet[] = true
    GL10_GL_STACK_UNDERFLOWValue[] = value
end
const GL10_GL_STENCIL_BITSValue = Ref{Any}(nothing)
const GL10_GL_STENCIL_BITSSet = Ref(false)
function staticGet_GL_STENCIL_BITS(::Type{GL10})
    if !GL10_GL_STENCIL_BITSSet[]
        GL10_GL_STENCIL_BITSSet[] = true
        GL10_GL_STENCIL_BITSValue[] = Int32(3415)
    end
    GL10_GL_STENCIL_BITSValue[]
end
function staticSet_GL_STENCIL_BITS(::Type{GL10}, value)
    GL10_GL_STENCIL_BITSSet[] = true
    GL10_GL_STENCIL_BITSValue[] = value
end
const GL10_GL_STENCIL_BUFFER_BITValue = Ref{Any}(nothing)
const GL10_GL_STENCIL_BUFFER_BITSet = Ref(false)
function staticGet_GL_STENCIL_BUFFER_BIT(::Type{GL10})
    if !GL10_GL_STENCIL_BUFFER_BITSet[]
        GL10_GL_STENCIL_BUFFER_BITSet[] = true
        GL10_GL_STENCIL_BUFFER_BITValue[] = Int32(1024)
    end
    GL10_GL_STENCIL_BUFFER_BITValue[]
end
function staticSet_GL_STENCIL_BUFFER_BIT(::Type{GL10}, value)
    GL10_GL_STENCIL_BUFFER_BITSet[] = true
    GL10_GL_STENCIL_BUFFER_BITValue[] = value
end
const GL10_GL_STENCIL_TESTValue = Ref{Any}(nothing)
const GL10_GL_STENCIL_TESTSet = Ref(false)
function staticGet_GL_STENCIL_TEST(::Type{GL10})
    if !GL10_GL_STENCIL_TESTSet[]
        GL10_GL_STENCIL_TESTSet[] = true
        GL10_GL_STENCIL_TESTValue[] = Int32(2960)
    end
    GL10_GL_STENCIL_TESTValue[]
end
function staticSet_GL_STENCIL_TEST(::Type{GL10}, value)
    GL10_GL_STENCIL_TESTSet[] = true
    GL10_GL_STENCIL_TESTValue[] = value
end
const GL10_GL_SUBPIXEL_BITSValue = Ref{Any}(nothing)
const GL10_GL_SUBPIXEL_BITSSet = Ref(false)
function staticGet_GL_SUBPIXEL_BITS(::Type{GL10})
    if !GL10_GL_SUBPIXEL_BITSSet[]
        GL10_GL_SUBPIXEL_BITSSet[] = true
        GL10_GL_SUBPIXEL_BITSValue[] = Int32(3408)
    end
    GL10_GL_SUBPIXEL_BITSValue[]
end
function staticSet_GL_SUBPIXEL_BITS(::Type{GL10}, value)
    GL10_GL_SUBPIXEL_BITSSet[] = true
    GL10_GL_SUBPIXEL_BITSValue[] = value
end
const GL10_GL_TEXTUREValue = Ref{Any}(nothing)
const GL10_GL_TEXTURESet = Ref(false)
function staticGet_GL_TEXTURE(::Type{GL10})
    if !GL10_GL_TEXTURESet[]
        GL10_GL_TEXTURESet[] = true
        GL10_GL_TEXTUREValue[] = Int32(5890)
    end
    GL10_GL_TEXTUREValue[]
end
function staticSet_GL_TEXTURE(::Type{GL10}, value)
    GL10_GL_TEXTURESet[] = true
    GL10_GL_TEXTUREValue[] = value
end
const GL10_GL_TEXTURE_2DValue = Ref{Any}(nothing)
const GL10_GL_TEXTURE_2DSet = Ref(false)
function staticGet_GL_TEXTURE_2D(::Type{GL10})
    if !GL10_GL_TEXTURE_2DSet[]
        GL10_GL_TEXTURE_2DSet[] = true
        GL10_GL_TEXTURE_2DValue[] = Int32(3553)
    end
    GL10_GL_TEXTURE_2DValue[]
end
function staticSet_GL_TEXTURE_2D(::Type{GL10}, value)
    GL10_GL_TEXTURE_2DSet[] = true
    GL10_GL_TEXTURE_2DValue[] = value
end
const GL10_GL_TEXTURE_COORD_ARRAYValue = Ref{Any}(nothing)
const GL10_GL_TEXTURE_COORD_ARRAYSet = Ref(false)
function staticGet_GL_TEXTURE_COORD_ARRAY(::Type{GL10})
    if !GL10_GL_TEXTURE_COORD_ARRAYSet[]
        GL10_GL_TEXTURE_COORD_ARRAYSet[] = true
        GL10_GL_TEXTURE_COORD_ARRAYValue[] = Int32(32888)
    end
    GL10_GL_TEXTURE_COORD_ARRAYValue[]
end
function staticSet_GL_TEXTURE_COORD_ARRAY(::Type{GL10}, value)
    GL10_GL_TEXTURE_COORD_ARRAYSet[] = true
    GL10_GL_TEXTURE_COORD_ARRAYValue[] = value
end
const GL10_GL_TEXTURE_ENVValue = Ref{Any}(nothing)
const GL10_GL_TEXTURE_ENVSet = Ref(false)
function staticGet_GL_TEXTURE_ENV(::Type{GL10})
    if !GL10_GL_TEXTURE_ENVSet[]
        GL10_GL_TEXTURE_ENVSet[] = true
        GL10_GL_TEXTURE_ENVValue[] = Int32(8960)
    end
    GL10_GL_TEXTURE_ENVValue[]
end
function staticSet_GL_TEXTURE_ENV(::Type{GL10}, value)
    GL10_GL_TEXTURE_ENVSet[] = true
    GL10_GL_TEXTURE_ENVValue[] = value
end
const GL10_GL_TEXTURE_ENV_COLORValue = Ref{Any}(nothing)
const GL10_GL_TEXTURE_ENV_COLORSet = Ref(false)
function staticGet_GL_TEXTURE_ENV_COLOR(::Type{GL10})
    if !GL10_GL_TEXTURE_ENV_COLORSet[]
        GL10_GL_TEXTURE_ENV_COLORSet[] = true
        GL10_GL_TEXTURE_ENV_COLORValue[] = Int32(8705)
    end
    GL10_GL_TEXTURE_ENV_COLORValue[]
end
function staticSet_GL_TEXTURE_ENV_COLOR(::Type{GL10}, value)
    GL10_GL_TEXTURE_ENV_COLORSet[] = true
    GL10_GL_TEXTURE_ENV_COLORValue[] = value
end
const GL10_GL_TEXTURE_ENV_MODEValue = Ref{Any}(nothing)
const GL10_GL_TEXTURE_ENV_MODESet = Ref(false)
function staticGet_GL_TEXTURE_ENV_MODE(::Type{GL10})
    if !GL10_GL_TEXTURE_ENV_MODESet[]
        GL10_GL_TEXTURE_ENV_MODESet[] = true
        GL10_GL_TEXTURE_ENV_MODEValue[] = Int32(8704)
    end
    GL10_GL_TEXTURE_ENV_MODEValue[]
end
function staticSet_GL_TEXTURE_ENV_MODE(::Type{GL10}, value)
    GL10_GL_TEXTURE_ENV_MODESet[] = true
    GL10_GL_TEXTURE_ENV_MODEValue[] = value
end
const GL10_GL_TEXTURE_MAG_FILTERValue = Ref{Any}(nothing)
const GL10_GL_TEXTURE_MAG_FILTERSet = Ref(false)
function staticGet_GL_TEXTURE_MAG_FILTER(::Type{GL10})
    if !GL10_GL_TEXTURE_MAG_FILTERSet[]
        GL10_GL_TEXTURE_MAG_FILTERSet[] = true
        GL10_GL_TEXTURE_MAG_FILTERValue[] = Int32(10240)
    end
    GL10_GL_TEXTURE_MAG_FILTERValue[]
end
function staticSet_GL_TEXTURE_MAG_FILTER(::Type{GL10}, value)
    GL10_GL_TEXTURE_MAG_FILTERSet[] = true
    GL10_GL_TEXTURE_MAG_FILTERValue[] = value
end
const GL10_GL_TEXTURE_MIN_FILTERValue = Ref{Any}(nothing)
const GL10_GL_TEXTURE_MIN_FILTERSet = Ref(false)
function staticGet_GL_TEXTURE_MIN_FILTER(::Type{GL10})
    if !GL10_GL_TEXTURE_MIN_FILTERSet[]
        GL10_GL_TEXTURE_MIN_FILTERSet[] = true
        GL10_GL_TEXTURE_MIN_FILTERValue[] = Int32(10241)
    end
    GL10_GL_TEXTURE_MIN_FILTERValue[]
end
function staticSet_GL_TEXTURE_MIN_FILTER(::Type{GL10}, value)
    GL10_GL_TEXTURE_MIN_FILTERSet[] = true
    GL10_GL_TEXTURE_MIN_FILTERValue[] = value
end
const GL10_GL_TEXTURE_WRAP_SValue = Ref{Any}(nothing)
const GL10_GL_TEXTURE_WRAP_SSet = Ref(false)
function staticGet_GL_TEXTURE_WRAP_S(::Type{GL10})
    if !GL10_GL_TEXTURE_WRAP_SSet[]
        GL10_GL_TEXTURE_WRAP_SSet[] = true
        GL10_GL_TEXTURE_WRAP_SValue[] = Int32(10242)
    end
    GL10_GL_TEXTURE_WRAP_SValue[]
end
function staticSet_GL_TEXTURE_WRAP_S(::Type{GL10}, value)
    GL10_GL_TEXTURE_WRAP_SSet[] = true
    GL10_GL_TEXTURE_WRAP_SValue[] = value
end
const GL10_GL_TEXTURE_WRAP_TValue = Ref{Any}(nothing)
const GL10_GL_TEXTURE_WRAP_TSet = Ref(false)
function staticGet_GL_TEXTURE_WRAP_T(::Type{GL10})
    if !GL10_GL_TEXTURE_WRAP_TSet[]
        GL10_GL_TEXTURE_WRAP_TSet[] = true
        GL10_GL_TEXTURE_WRAP_TValue[] = Int32(10243)
    end
    GL10_GL_TEXTURE_WRAP_TValue[]
end
function staticSet_GL_TEXTURE_WRAP_T(::Type{GL10}, value)
    GL10_GL_TEXTURE_WRAP_TSet[] = true
    GL10_GL_TEXTURE_WRAP_TValue[] = value
end
const GL10_GL_TEXTURE0Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE0Set = Ref(false)
function staticGet_GL_TEXTURE0(::Type{GL10})
    if !GL10_GL_TEXTURE0Set[]
        GL10_GL_TEXTURE0Set[] = true
        GL10_GL_TEXTURE0Value[] = Int32(33984)
    end
    GL10_GL_TEXTURE0Value[]
end
function staticSet_GL_TEXTURE0(::Type{GL10}, value)
    GL10_GL_TEXTURE0Set[] = true
    GL10_GL_TEXTURE0Value[] = value
end
const GL10_GL_TEXTURE1Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE1Set = Ref(false)
function staticGet_GL_TEXTURE1(::Type{GL10})
    if !GL10_GL_TEXTURE1Set[]
        GL10_GL_TEXTURE1Set[] = true
        GL10_GL_TEXTURE1Value[] = Int32(33985)
    end
    GL10_GL_TEXTURE1Value[]
end
function staticSet_GL_TEXTURE1(::Type{GL10}, value)
    GL10_GL_TEXTURE1Set[] = true
    GL10_GL_TEXTURE1Value[] = value
end
const GL10_GL_TEXTURE2Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE2Set = Ref(false)
function staticGet_GL_TEXTURE2(::Type{GL10})
    if !GL10_GL_TEXTURE2Set[]
        GL10_GL_TEXTURE2Set[] = true
        GL10_GL_TEXTURE2Value[] = Int32(33986)
    end
    GL10_GL_TEXTURE2Value[]
end
function staticSet_GL_TEXTURE2(::Type{GL10}, value)
    GL10_GL_TEXTURE2Set[] = true
    GL10_GL_TEXTURE2Value[] = value
end
const GL10_GL_TEXTURE3Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE3Set = Ref(false)
function staticGet_GL_TEXTURE3(::Type{GL10})
    if !GL10_GL_TEXTURE3Set[]
        GL10_GL_TEXTURE3Set[] = true
        GL10_GL_TEXTURE3Value[] = Int32(33987)
    end
    GL10_GL_TEXTURE3Value[]
end
function staticSet_GL_TEXTURE3(::Type{GL10}, value)
    GL10_GL_TEXTURE3Set[] = true
    GL10_GL_TEXTURE3Value[] = value
end
const GL10_GL_TEXTURE4Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE4Set = Ref(false)
function staticGet_GL_TEXTURE4(::Type{GL10})
    if !GL10_GL_TEXTURE4Set[]
        GL10_GL_TEXTURE4Set[] = true
        GL10_GL_TEXTURE4Value[] = Int32(33988)
    end
    GL10_GL_TEXTURE4Value[]
end
function staticSet_GL_TEXTURE4(::Type{GL10}, value)
    GL10_GL_TEXTURE4Set[] = true
    GL10_GL_TEXTURE4Value[] = value
end
const GL10_GL_TEXTURE5Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE5Set = Ref(false)
function staticGet_GL_TEXTURE5(::Type{GL10})
    if !GL10_GL_TEXTURE5Set[]
        GL10_GL_TEXTURE5Set[] = true
        GL10_GL_TEXTURE5Value[] = Int32(33989)
    end
    GL10_GL_TEXTURE5Value[]
end
function staticSet_GL_TEXTURE5(::Type{GL10}, value)
    GL10_GL_TEXTURE5Set[] = true
    GL10_GL_TEXTURE5Value[] = value
end
const GL10_GL_TEXTURE6Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE6Set = Ref(false)
function staticGet_GL_TEXTURE6(::Type{GL10})
    if !GL10_GL_TEXTURE6Set[]
        GL10_GL_TEXTURE6Set[] = true
        GL10_GL_TEXTURE6Value[] = Int32(33990)
    end
    GL10_GL_TEXTURE6Value[]
end
function staticSet_GL_TEXTURE6(::Type{GL10}, value)
    GL10_GL_TEXTURE6Set[] = true
    GL10_GL_TEXTURE6Value[] = value
end
const GL10_GL_TEXTURE7Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE7Set = Ref(false)
function staticGet_GL_TEXTURE7(::Type{GL10})
    if !GL10_GL_TEXTURE7Set[]
        GL10_GL_TEXTURE7Set[] = true
        GL10_GL_TEXTURE7Value[] = Int32(33991)
    end
    GL10_GL_TEXTURE7Value[]
end
function staticSet_GL_TEXTURE7(::Type{GL10}, value)
    GL10_GL_TEXTURE7Set[] = true
    GL10_GL_TEXTURE7Value[] = value
end
const GL10_GL_TEXTURE8Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE8Set = Ref(false)
function staticGet_GL_TEXTURE8(::Type{GL10})
    if !GL10_GL_TEXTURE8Set[]
        GL10_GL_TEXTURE8Set[] = true
        GL10_GL_TEXTURE8Value[] = Int32(33992)
    end
    GL10_GL_TEXTURE8Value[]
end
function staticSet_GL_TEXTURE8(::Type{GL10}, value)
    GL10_GL_TEXTURE8Set[] = true
    GL10_GL_TEXTURE8Value[] = value
end
const GL10_GL_TEXTURE9Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE9Set = Ref(false)
function staticGet_GL_TEXTURE9(::Type{GL10})
    if !GL10_GL_TEXTURE9Set[]
        GL10_GL_TEXTURE9Set[] = true
        GL10_GL_TEXTURE9Value[] = Int32(33993)
    end
    GL10_GL_TEXTURE9Value[]
end
function staticSet_GL_TEXTURE9(::Type{GL10}, value)
    GL10_GL_TEXTURE9Set[] = true
    GL10_GL_TEXTURE9Value[] = value
end
const GL10_GL_TEXTURE10Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE10Set = Ref(false)
function staticGet_GL_TEXTURE10(::Type{GL10})
    if !GL10_GL_TEXTURE10Set[]
        GL10_GL_TEXTURE10Set[] = true
        GL10_GL_TEXTURE10Value[] = Int32(33994)
    end
    GL10_GL_TEXTURE10Value[]
end
function staticSet_GL_TEXTURE10(::Type{GL10}, value)
    GL10_GL_TEXTURE10Set[] = true
    GL10_GL_TEXTURE10Value[] = value
end
const GL10_GL_TEXTURE11Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE11Set = Ref(false)
function staticGet_GL_TEXTURE11(::Type{GL10})
    if !GL10_GL_TEXTURE11Set[]
        GL10_GL_TEXTURE11Set[] = true
        GL10_GL_TEXTURE11Value[] = Int32(33995)
    end
    GL10_GL_TEXTURE11Value[]
end
function staticSet_GL_TEXTURE11(::Type{GL10}, value)
    GL10_GL_TEXTURE11Set[] = true
    GL10_GL_TEXTURE11Value[] = value
end
const GL10_GL_TEXTURE12Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE12Set = Ref(false)
function staticGet_GL_TEXTURE12(::Type{GL10})
    if !GL10_GL_TEXTURE12Set[]
        GL10_GL_TEXTURE12Set[] = true
        GL10_GL_TEXTURE12Value[] = Int32(33996)
    end
    GL10_GL_TEXTURE12Value[]
end
function staticSet_GL_TEXTURE12(::Type{GL10}, value)
    GL10_GL_TEXTURE12Set[] = true
    GL10_GL_TEXTURE12Value[] = value
end
const GL10_GL_TEXTURE13Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE13Set = Ref(false)
function staticGet_GL_TEXTURE13(::Type{GL10})
    if !GL10_GL_TEXTURE13Set[]
        GL10_GL_TEXTURE13Set[] = true
        GL10_GL_TEXTURE13Value[] = Int32(33997)
    end
    GL10_GL_TEXTURE13Value[]
end
function staticSet_GL_TEXTURE13(::Type{GL10}, value)
    GL10_GL_TEXTURE13Set[] = true
    GL10_GL_TEXTURE13Value[] = value
end
const GL10_GL_TEXTURE14Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE14Set = Ref(false)
function staticGet_GL_TEXTURE14(::Type{GL10})
    if !GL10_GL_TEXTURE14Set[]
        GL10_GL_TEXTURE14Set[] = true
        GL10_GL_TEXTURE14Value[] = Int32(33998)
    end
    GL10_GL_TEXTURE14Value[]
end
function staticSet_GL_TEXTURE14(::Type{GL10}, value)
    GL10_GL_TEXTURE14Set[] = true
    GL10_GL_TEXTURE14Value[] = value
end
const GL10_GL_TEXTURE15Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE15Set = Ref(false)
function staticGet_GL_TEXTURE15(::Type{GL10})
    if !GL10_GL_TEXTURE15Set[]
        GL10_GL_TEXTURE15Set[] = true
        GL10_GL_TEXTURE15Value[] = Int32(33999)
    end
    GL10_GL_TEXTURE15Value[]
end
function staticSet_GL_TEXTURE15(::Type{GL10}, value)
    GL10_GL_TEXTURE15Set[] = true
    GL10_GL_TEXTURE15Value[] = value
end
const GL10_GL_TEXTURE16Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE16Set = Ref(false)
function staticGet_GL_TEXTURE16(::Type{GL10})
    if !GL10_GL_TEXTURE16Set[]
        GL10_GL_TEXTURE16Set[] = true
        GL10_GL_TEXTURE16Value[] = Int32(34000)
    end
    GL10_GL_TEXTURE16Value[]
end
function staticSet_GL_TEXTURE16(::Type{GL10}, value)
    GL10_GL_TEXTURE16Set[] = true
    GL10_GL_TEXTURE16Value[] = value
end
const GL10_GL_TEXTURE17Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE17Set = Ref(false)
function staticGet_GL_TEXTURE17(::Type{GL10})
    if !GL10_GL_TEXTURE17Set[]
        GL10_GL_TEXTURE17Set[] = true
        GL10_GL_TEXTURE17Value[] = Int32(34001)
    end
    GL10_GL_TEXTURE17Value[]
end
function staticSet_GL_TEXTURE17(::Type{GL10}, value)
    GL10_GL_TEXTURE17Set[] = true
    GL10_GL_TEXTURE17Value[] = value
end
const GL10_GL_TEXTURE18Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE18Set = Ref(false)
function staticGet_GL_TEXTURE18(::Type{GL10})
    if !GL10_GL_TEXTURE18Set[]
        GL10_GL_TEXTURE18Set[] = true
        GL10_GL_TEXTURE18Value[] = Int32(34002)
    end
    GL10_GL_TEXTURE18Value[]
end
function staticSet_GL_TEXTURE18(::Type{GL10}, value)
    GL10_GL_TEXTURE18Set[] = true
    GL10_GL_TEXTURE18Value[] = value
end
const GL10_GL_TEXTURE19Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE19Set = Ref(false)
function staticGet_GL_TEXTURE19(::Type{GL10})
    if !GL10_GL_TEXTURE19Set[]
        GL10_GL_TEXTURE19Set[] = true
        GL10_GL_TEXTURE19Value[] = Int32(34003)
    end
    GL10_GL_TEXTURE19Value[]
end
function staticSet_GL_TEXTURE19(::Type{GL10}, value)
    GL10_GL_TEXTURE19Set[] = true
    GL10_GL_TEXTURE19Value[] = value
end
const GL10_GL_TEXTURE20Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE20Set = Ref(false)
function staticGet_GL_TEXTURE20(::Type{GL10})
    if !GL10_GL_TEXTURE20Set[]
        GL10_GL_TEXTURE20Set[] = true
        GL10_GL_TEXTURE20Value[] = Int32(34004)
    end
    GL10_GL_TEXTURE20Value[]
end
function staticSet_GL_TEXTURE20(::Type{GL10}, value)
    GL10_GL_TEXTURE20Set[] = true
    GL10_GL_TEXTURE20Value[] = value
end
const GL10_GL_TEXTURE21Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE21Set = Ref(false)
function staticGet_GL_TEXTURE21(::Type{GL10})
    if !GL10_GL_TEXTURE21Set[]
        GL10_GL_TEXTURE21Set[] = true
        GL10_GL_TEXTURE21Value[] = Int32(34005)
    end
    GL10_GL_TEXTURE21Value[]
end
function staticSet_GL_TEXTURE21(::Type{GL10}, value)
    GL10_GL_TEXTURE21Set[] = true
    GL10_GL_TEXTURE21Value[] = value
end
const GL10_GL_TEXTURE22Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE22Set = Ref(false)
function staticGet_GL_TEXTURE22(::Type{GL10})
    if !GL10_GL_TEXTURE22Set[]
        GL10_GL_TEXTURE22Set[] = true
        GL10_GL_TEXTURE22Value[] = Int32(34006)
    end
    GL10_GL_TEXTURE22Value[]
end
function staticSet_GL_TEXTURE22(::Type{GL10}, value)
    GL10_GL_TEXTURE22Set[] = true
    GL10_GL_TEXTURE22Value[] = value
end
const GL10_GL_TEXTURE23Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE23Set = Ref(false)
function staticGet_GL_TEXTURE23(::Type{GL10})
    if !GL10_GL_TEXTURE23Set[]
        GL10_GL_TEXTURE23Set[] = true
        GL10_GL_TEXTURE23Value[] = Int32(34007)
    end
    GL10_GL_TEXTURE23Value[]
end
function staticSet_GL_TEXTURE23(::Type{GL10}, value)
    GL10_GL_TEXTURE23Set[] = true
    GL10_GL_TEXTURE23Value[] = value
end
const GL10_GL_TEXTURE24Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE24Set = Ref(false)
function staticGet_GL_TEXTURE24(::Type{GL10})
    if !GL10_GL_TEXTURE24Set[]
        GL10_GL_TEXTURE24Set[] = true
        GL10_GL_TEXTURE24Value[] = Int32(34008)
    end
    GL10_GL_TEXTURE24Value[]
end
function staticSet_GL_TEXTURE24(::Type{GL10}, value)
    GL10_GL_TEXTURE24Set[] = true
    GL10_GL_TEXTURE24Value[] = value
end
const GL10_GL_TEXTURE25Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE25Set = Ref(false)
function staticGet_GL_TEXTURE25(::Type{GL10})
    if !GL10_GL_TEXTURE25Set[]
        GL10_GL_TEXTURE25Set[] = true
        GL10_GL_TEXTURE25Value[] = Int32(34009)
    end
    GL10_GL_TEXTURE25Value[]
end
function staticSet_GL_TEXTURE25(::Type{GL10}, value)
    GL10_GL_TEXTURE25Set[] = true
    GL10_GL_TEXTURE25Value[] = value
end
const GL10_GL_TEXTURE26Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE26Set = Ref(false)
function staticGet_GL_TEXTURE26(::Type{GL10})
    if !GL10_GL_TEXTURE26Set[]
        GL10_GL_TEXTURE26Set[] = true
        GL10_GL_TEXTURE26Value[] = Int32(34010)
    end
    GL10_GL_TEXTURE26Value[]
end
function staticSet_GL_TEXTURE26(::Type{GL10}, value)
    GL10_GL_TEXTURE26Set[] = true
    GL10_GL_TEXTURE26Value[] = value
end
const GL10_GL_TEXTURE27Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE27Set = Ref(false)
function staticGet_GL_TEXTURE27(::Type{GL10})
    if !GL10_GL_TEXTURE27Set[]
        GL10_GL_TEXTURE27Set[] = true
        GL10_GL_TEXTURE27Value[] = Int32(34011)
    end
    GL10_GL_TEXTURE27Value[]
end
function staticSet_GL_TEXTURE27(::Type{GL10}, value)
    GL10_GL_TEXTURE27Set[] = true
    GL10_GL_TEXTURE27Value[] = value
end
const GL10_GL_TEXTURE28Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE28Set = Ref(false)
function staticGet_GL_TEXTURE28(::Type{GL10})
    if !GL10_GL_TEXTURE28Set[]
        GL10_GL_TEXTURE28Set[] = true
        GL10_GL_TEXTURE28Value[] = Int32(34012)
    end
    GL10_GL_TEXTURE28Value[]
end
function staticSet_GL_TEXTURE28(::Type{GL10}, value)
    GL10_GL_TEXTURE28Set[] = true
    GL10_GL_TEXTURE28Value[] = value
end
const GL10_GL_TEXTURE29Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE29Set = Ref(false)
function staticGet_GL_TEXTURE29(::Type{GL10})
    if !GL10_GL_TEXTURE29Set[]
        GL10_GL_TEXTURE29Set[] = true
        GL10_GL_TEXTURE29Value[] = Int32(34013)
    end
    GL10_GL_TEXTURE29Value[]
end
function staticSet_GL_TEXTURE29(::Type{GL10}, value)
    GL10_GL_TEXTURE29Set[] = true
    GL10_GL_TEXTURE29Value[] = value
end
const GL10_GL_TEXTURE30Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE30Set = Ref(false)
function staticGet_GL_TEXTURE30(::Type{GL10})
    if !GL10_GL_TEXTURE30Set[]
        GL10_GL_TEXTURE30Set[] = true
        GL10_GL_TEXTURE30Value[] = Int32(34014)
    end
    GL10_GL_TEXTURE30Value[]
end
function staticSet_GL_TEXTURE30(::Type{GL10}, value)
    GL10_GL_TEXTURE30Set[] = true
    GL10_GL_TEXTURE30Value[] = value
end
const GL10_GL_TEXTURE31Value = Ref{Any}(nothing)
const GL10_GL_TEXTURE31Set = Ref(false)
function staticGet_GL_TEXTURE31(::Type{GL10})
    if !GL10_GL_TEXTURE31Set[]
        GL10_GL_TEXTURE31Set[] = true
        GL10_GL_TEXTURE31Value[] = Int32(34015)
    end
    GL10_GL_TEXTURE31Value[]
end
function staticSet_GL_TEXTURE31(::Type{GL10}, value)
    GL10_GL_TEXTURE31Set[] = true
    GL10_GL_TEXTURE31Value[] = value
end
const GL10_GL_TRIANGLE_FANValue = Ref{Any}(nothing)
const GL10_GL_TRIANGLE_FANSet = Ref(false)
function staticGet_GL_TRIANGLE_FAN(::Type{GL10})
    if !GL10_GL_TRIANGLE_FANSet[]
        GL10_GL_TRIANGLE_FANSet[] = true
        GL10_GL_TRIANGLE_FANValue[] = Int32(6)
    end
    GL10_GL_TRIANGLE_FANValue[]
end
function staticSet_GL_TRIANGLE_FAN(::Type{GL10}, value)
    GL10_GL_TRIANGLE_FANSet[] = true
    GL10_GL_TRIANGLE_FANValue[] = value
end
const GL10_GL_TRIANGLE_STRIPValue = Ref{Any}(nothing)
const GL10_GL_TRIANGLE_STRIPSet = Ref(false)
function staticGet_GL_TRIANGLE_STRIP(::Type{GL10})
    if !GL10_GL_TRIANGLE_STRIPSet[]
        GL10_GL_TRIANGLE_STRIPSet[] = true
        GL10_GL_TRIANGLE_STRIPValue[] = Int32(5)
    end
    GL10_GL_TRIANGLE_STRIPValue[]
end
function staticSet_GL_TRIANGLE_STRIP(::Type{GL10}, value)
    GL10_GL_TRIANGLE_STRIPSet[] = true
    GL10_GL_TRIANGLE_STRIPValue[] = value
end
const GL10_GL_TRIANGLESValue = Ref{Any}(nothing)
const GL10_GL_TRIANGLESSet = Ref(false)
function staticGet_GL_TRIANGLES(::Type{GL10})
    if !GL10_GL_TRIANGLESSet[]
        GL10_GL_TRIANGLESSet[] = true
        GL10_GL_TRIANGLESValue[] = Int32(4)
    end
    GL10_GL_TRIANGLESValue[]
end
function staticSet_GL_TRIANGLES(::Type{GL10}, value)
    GL10_GL_TRIANGLESSet[] = true
    GL10_GL_TRIANGLESValue[] = value
end
const GL10_GL_TRUEValue = Ref{Any}(nothing)
const GL10_GL_TRUESet = Ref(false)
function staticGet_GL_TRUE(::Type{GL10})
    if !GL10_GL_TRUESet[]
        GL10_GL_TRUESet[] = true
        GL10_GL_TRUEValue[] = Int32(1)
    end
    GL10_GL_TRUEValue[]
end
function staticSet_GL_TRUE(::Type{GL10}, value)
    GL10_GL_TRUESet[] = true
    GL10_GL_TRUEValue[] = value
end
const GL10_GL_UNPACK_ALIGNMENTValue = Ref{Any}(nothing)
const GL10_GL_UNPACK_ALIGNMENTSet = Ref(false)
function staticGet_GL_UNPACK_ALIGNMENT(::Type{GL10})
    if !GL10_GL_UNPACK_ALIGNMENTSet[]
        GL10_GL_UNPACK_ALIGNMENTSet[] = true
        GL10_GL_UNPACK_ALIGNMENTValue[] = Int32(3317)
    end
    GL10_GL_UNPACK_ALIGNMENTValue[]
end
function staticSet_GL_UNPACK_ALIGNMENT(::Type{GL10}, value)
    GL10_GL_UNPACK_ALIGNMENTSet[] = true
    GL10_GL_UNPACK_ALIGNMENTValue[] = value
end
const GL10_GL_UNSIGNED_BYTEValue = Ref{Any}(nothing)
const GL10_GL_UNSIGNED_BYTESet = Ref(false)
function staticGet_GL_UNSIGNED_BYTE(::Type{GL10})
    if !GL10_GL_UNSIGNED_BYTESet[]
        GL10_GL_UNSIGNED_BYTESet[] = true
        GL10_GL_UNSIGNED_BYTEValue[] = Int32(5121)
    end
    GL10_GL_UNSIGNED_BYTEValue[]
end
function staticSet_GL_UNSIGNED_BYTE(::Type{GL10}, value)
    GL10_GL_UNSIGNED_BYTESet[] = true
    GL10_GL_UNSIGNED_BYTEValue[] = value
end
const GL10_GL_UNSIGNED_SHORTValue = Ref{Any}(nothing)
const GL10_GL_UNSIGNED_SHORTSet = Ref(false)
function staticGet_GL_UNSIGNED_SHORT(::Type{GL10})
    if !GL10_GL_UNSIGNED_SHORTSet[]
        GL10_GL_UNSIGNED_SHORTSet[] = true
        GL10_GL_UNSIGNED_SHORTValue[] = Int32(5123)
    end
    GL10_GL_UNSIGNED_SHORTValue[]
end
function staticSet_GL_UNSIGNED_SHORT(::Type{GL10}, value)
    GL10_GL_UNSIGNED_SHORTSet[] = true
    GL10_GL_UNSIGNED_SHORTValue[] = value
end
const GL10_GL_UNSIGNED_SHORT_4_4_4_4Value = Ref{Any}(nothing)
const GL10_GL_UNSIGNED_SHORT_4_4_4_4Set = Ref(false)
function staticGet_GL_UNSIGNED_SHORT_4_4_4_4(::Type{GL10})
    if !GL10_GL_UNSIGNED_SHORT_4_4_4_4Set[]
        GL10_GL_UNSIGNED_SHORT_4_4_4_4Set[] = true
        GL10_GL_UNSIGNED_SHORT_4_4_4_4Value[] = Int32(32819)
    end
    GL10_GL_UNSIGNED_SHORT_4_4_4_4Value[]
end
function staticSet_GL_UNSIGNED_SHORT_4_4_4_4(::Type{GL10}, value)
    GL10_GL_UNSIGNED_SHORT_4_4_4_4Set[] = true
    GL10_GL_UNSIGNED_SHORT_4_4_4_4Value[] = value
end
const GL10_GL_UNSIGNED_SHORT_5_5_5_1Value = Ref{Any}(nothing)
const GL10_GL_UNSIGNED_SHORT_5_5_5_1Set = Ref(false)
function staticGet_GL_UNSIGNED_SHORT_5_5_5_1(::Type{GL10})
    if !GL10_GL_UNSIGNED_SHORT_5_5_5_1Set[]
        GL10_GL_UNSIGNED_SHORT_5_5_5_1Set[] = true
        GL10_GL_UNSIGNED_SHORT_5_5_5_1Value[] = Int32(32820)
    end
    GL10_GL_UNSIGNED_SHORT_5_5_5_1Value[]
end
function staticSet_GL_UNSIGNED_SHORT_5_5_5_1(::Type{GL10}, value)
    GL10_GL_UNSIGNED_SHORT_5_5_5_1Set[] = true
    GL10_GL_UNSIGNED_SHORT_5_5_5_1Value[] = value
end
const GL10_GL_UNSIGNED_SHORT_5_6_5Value = Ref{Any}(nothing)
const GL10_GL_UNSIGNED_SHORT_5_6_5Set = Ref(false)
function staticGet_GL_UNSIGNED_SHORT_5_6_5(::Type{GL10})
    if !GL10_GL_UNSIGNED_SHORT_5_6_5Set[]
        GL10_GL_UNSIGNED_SHORT_5_6_5Set[] = true
        GL10_GL_UNSIGNED_SHORT_5_6_5Value[] = Int32(33635)
    end
    GL10_GL_UNSIGNED_SHORT_5_6_5Value[]
end
function staticSet_GL_UNSIGNED_SHORT_5_6_5(::Type{GL10}, value)
    GL10_GL_UNSIGNED_SHORT_5_6_5Set[] = true
    GL10_GL_UNSIGNED_SHORT_5_6_5Value[] = value
end
const GL10_GL_VENDORValue = Ref{Any}(nothing)
const GL10_GL_VENDORSet = Ref(false)
function staticGet_GL_VENDOR(::Type{GL10})
    if !GL10_GL_VENDORSet[]
        GL10_GL_VENDORSet[] = true
        GL10_GL_VENDORValue[] = Int32(7936)
    end
    GL10_GL_VENDORValue[]
end
function staticSet_GL_VENDOR(::Type{GL10}, value)
    GL10_GL_VENDORSet[] = true
    GL10_GL_VENDORValue[] = value
end
const GL10_GL_VERSIONValue = Ref{Any}(nothing)
const GL10_GL_VERSIONSet = Ref(false)
function staticGet_GL_VERSION(::Type{GL10})
    if !GL10_GL_VERSIONSet[]
        GL10_GL_VERSIONSet[] = true
        GL10_GL_VERSIONValue[] = Int32(7938)
    end
    GL10_GL_VERSIONValue[]
end
function staticSet_GL_VERSION(::Type{GL10}, value)
    GL10_GL_VERSIONSet[] = true
    GL10_GL_VERSIONValue[] = value
end
const GL10_GL_VERTEX_ARRAYValue = Ref{Any}(nothing)
const GL10_GL_VERTEX_ARRAYSet = Ref(false)
function staticGet_GL_VERTEX_ARRAY(::Type{GL10})
    if !GL10_GL_VERTEX_ARRAYSet[]
        GL10_GL_VERTEX_ARRAYSet[] = true
        GL10_GL_VERTEX_ARRAYValue[] = Int32(32884)
    end
    GL10_GL_VERTEX_ARRAYValue[]
end
function staticSet_GL_VERTEX_ARRAY(::Type{GL10}, value)
    GL10_GL_VERTEX_ARRAYSet[] = true
    GL10_GL_VERTEX_ARRAYValue[] = value
end
const GL10_GL_XORValue = Ref{Any}(nothing)
const GL10_GL_XORSet = Ref(false)
function staticGet_GL_XOR(::Type{GL10})
    if !GL10_GL_XORSet[]
        GL10_GL_XORSet[] = true
        GL10_GL_XORValue[] = Int32(5382)
    end
    GL10_GL_XORValue[]
end
function staticSet_GL_XOR(::Type{GL10}, value)
    GL10_GL_XORSet[] = true
    GL10_GL_XORValue[] = value
end
const GL10_GL_ZEROValue = Ref{Any}(nothing)
const GL10_GL_ZEROSet = Ref(false)
function staticGet_GL_ZERO(::Type{GL10})
    if !GL10_GL_ZEROSet[]
        GL10_GL_ZEROSet[] = true
        GL10_GL_ZEROValue[] = Int32(0)
    end
    GL10_GL_ZEROValue[]
end
function staticSet_GL_ZERO(::Type{GL10}, value)
    GL10_GL_ZEROSet[] = true
    GL10_GL_ZEROValue[] = value
end

