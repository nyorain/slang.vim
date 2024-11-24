" Vim syntax file the High Level Shader Language
" Language:     HLSL (DirectX 11)
" Author:       Marc Costa <beyond.marc@gmail.com>
" Date:         December 29, 2012
" File Types:   .slang
" Version:      0.1
" Notes:        Adapted from hlsl.vim - Kevin Bjorke <kbjorke@nvidia.com>

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the C syntax to start with
if version < 600
  so <sfile>:p:h/c.vim
else
  runtime! syntax/c.vim
  unlet b:current_syntax
endif

" Annotations
syn match           slangAnnotation          /<.*;>/

" Attributes
syn match           slangAttribute           /^\s*\[maxvertexcount(\s*\w\+\s*)\]/
syn match           slangAttribute           /^\s*\[domain(\s*"\(tri\|quad\|isoline\)"\s*)\]/
syn match           slangAttribute           /^\s*\[earlydepthstencil\]/
syn match           slangAttribute           /^\s*\[instance(\s*\w\+\s*)\]/
syn match           slangAttribute           /^\s*\[maxtessfactor(\s*\w\+\s*)\]/
syn match           slangAttribute           /^\s*\[numthreads(\s*\w\+\s*,\s*\w\+\s*,\s*\w\+\s*)\]/
syn match           slangAttribute           /^\s*\[outputcontrolpoints(\s*\w\+\s*)\]/
syn match           slangAttribute           /^\s*\[outputtopology(\s*"\(point\|line\|triangle_cw\|triangle_ccw\|triangle\)"\s*)\]/
syn match           slangAttribute           /^\s*\[partitioning(\s*"\(integer\|fractional_even\|fractional_odd\|pow2\)"\s*)\]/
syn match           slangAttribute           /^\s*\[patchconstantfunc(\s*"\(\d\|\w\|_\)\+"\s*)\]/
syn match           slangAttribute           /^\s*\[WaveSize(\s*\w\+\(\s*,\s*\w\+\(\s*,\s*\w\+\)\?\)\?\s*)\]/
syn match           slangAttribute           /^\s*\[shader(\s*"\(anyhit\|callable\|closesthit\|intersection\|miss\|raygeneration\)"\s*)\]/

syn match           slangAttribute           /^\s*\[fastopt\]/
syn match           slangAttribute           /^\s*\[loop\]/
syn match           slangAttribute           /^\s*\[unroll\]/
syn match           slangAttribute           /^\s*\[allow_uav_condition\]/
syn match           slangAttribute           /^\s*\[branch\]/
syn match           slangAttribute           /^\s*\[flatten\]/
syn match           slangAttribute           /^\s*\[forcecase\]/
syn match           slangAttribute           /^\s*\[call\]/
syn match           slangAttribute           /^\s*\[WaveOpsIncludeHelperLanes\]/

syn match           slangAttribute           /\[raypayload\]/

" Work graph shader target attributes
syn match           slangAttribute           /^\s*\[Shader(\s*"\(\d\|\w\|_\)\+"\s*)\]/

" Work graph shader function attributes
syn match           slangAttribute           /^\s*\[NodeLaunch(\s*"\(broadcasting\|coalescing\|thread\)"\s*)\]/
syn match           slangAttribute           /^\s*\[NodeIsProgramEntry\]/
syn match           slangAttribute           /^\s*\[NodeLocalRootArgumentsTableIndex(\s*\w\+\s*)\]/
syn match           slangAttribute           /^\s*\[NumThreads(\s*\w\+\s*,\s*\w\+\s*,\s*\w\+\s*)\]/
syn match           slangAttribute           /^\s*\[NodeShareInputOf(\s*"\w\+"\(\s*,\s*\w\+\)\?\s*)\]/
syn match           slangAttribute           /^\s*\[NodeDispatchGrid(\s*\w\+\s*,\s*\w\+\s*,\s*\w\+\s*)\]/
syn match           slangAttribute           /^\s*\[NodeMaxDispatchGrid(\s*\w\+\s*,\s*\w\+\s*,\s*\w\+\s*)\]/
syn match           slangAttribute           /^\s*\[NodeMaxRecursionDepth(\s*\w\+\s*)\]/
syn match           slangAttribute           /^\s*\[NodeMaxInputRecordsPerGraphEntryRecord(\s*\w\+\s*,\s*\(true\|false\)\s*)\]/

" Work graph record attributes
syn match           slangAttribute           /\[NodeTrackRWInputSharing\]/
syn match           slangAttribute           /\[MaxRecords(\s*\w\+\s*)\]/
syn match           slangAttribute           /\[NodeID(\s*"\w\+"\(\s*,\s*\w\+\)\?\s*)\]/
syn match           slangAttribute           /\[MaxRecordsSharedWith(\s*\w\+\s*)\]/
syn match           slangAttribute           /\[AllowSparseNodes\]/
syn match           slangAttribute           /\[NodeArraySize(\s*\w\+\s*)\]/
syn match           slangAttribute           /\[UnboundedSparseNodes\]/

" Intrinsic functions
syn keyword         slangFunc                abs acos acosh asin asinh atan atanh cos cosh exp exp2 floor log log10 log2 round rsqrt sin sincos sinh sqrt tan tanh trunc
syn keyword         slangFunc                AllMemoryBarrier AllMemoryBarrierWithGroupSync DeviceMemoryBarrier DeviceMemoryBarrierWithGroupSync GroupMemoryBarrier GroupMemoryBarrierWithGroupSync
syn keyword         slangFunc                abort clip errorf printf
syn keyword         slangFunc                all any countbits faceforward firstbithigh firstbitlow isfinite isinf isnan max min noise pow reversebits sign
syn keyword         slangFunc                asdouble asfloat asint asuint D3DCOLORtoUBYTE4 f16tof32 f32tof16
syn keyword         slangFunc                ceil clamp degrees fma fmod frac frexp ldexp lerp mad modf radiants saturate smoothstep step
syn keyword         slangFunc                cross determinant distance dot dst length lit msad4 mul normalize rcp reflect refract transpose
syn keyword         slangFunc                ddx ddx_coarse ddx_fine ddy ddy_coarse ddy_fine fwidth
syn keyword         slangFunc                EvaluateAttributeAtCentroid EvaluateAttributeAtSample EvaluateAttributeSnapped
syn keyword         slangFunc                GetRenderTargetSampleCount GetRenderTargetSamplePosition
syn keyword         slangFunc                InterlockedAdd InterlockedAnd InterlockedCompareExchange InterlockedCompareStore InterlockedExchange InterlockedMax InterlockedMin InterlockedOr InterlockedXor
syn keyword         slangFunc                InterlockedCompareStoreFloatBitwise InterlockedCompareExchangeFloatBitwise
syn keyword         slangFunc                Process2DQuadTessFactorsAvg Process2DQuadTessFactorsMax Process2DQuadTessFactorsMin ProcessIsolineTessFactors
syn keyword         slangFunc                ProcessQuadTessFactorsAvg ProcessQuadTessFactorsMax ProcessQuadTessFactorsMin ProcessTriTessFactorsAvg ProcessTriTessFactorsMax ProcessTriTessFactorsMin
syn keyword         slangFunc                tex1D tex1Dbias tex1Dgrad tex1Dlod tex1Dproj
syn keyword         slangFunc                tex2D tex2Dbias tex2Dgrad tex2Dlod tex2Dproj
syn keyword         slangFunc                tex3D tex3Dbias tex3Dgrad tex3Dlod tex3Dproj
syn keyword         slangFunc                texCUBE texCUBEbias texCUBEgrad texCUBElod texCUBEproj
syn keyword         slangFunc                WaveIsFirstLane WaveGetLaneCount WaveGetLaneIndex
syn keyword         slangFunc                IsHelperLane
syn keyword         slangFunc                WaveActiveAnyTrue WaveActiveAllTrue WaveActiveBallot
syn keyword         slangFunc                WaveReadLaneFirst WaveReadLaneAt
syn keyword         slangFunc                WaveActiveAllEqual WaveActiveAllEqualBool WaveActiveCountBits
syn keyword         slangFunc                WaveActiveSum WaveActiveProduct WaveActiveBitAnd WaveActiveBitOr WaveActiveBitXor WaveActiveMin WaveActiveMax
syn keyword         slangFunc                WavePrefixCountBits WavePrefixProduct WavePrefixSum
syn keyword         slangFunc                QuadReadAcrossX QuadReadAcrossY QuadReadAcrossDiagonal QuadReadLaneAt
syn keyword         slangFunc                QuadAny QuadAll
syn keyword         slangFunc                WaveMatch WaveMultiPrefixSum WaveMultiPrefixProduct WaveMultiPrefixCountBits WaveMultiPrefixAnd WaveMultiPrefixOr WaveMultiPrefixXor
syn keyword         slangFunc                NonUniformResourceIndex
syn keyword         slangFunc                DispatchMesh SetMeshOutputCounts
syn keyword         slangFunc                dot4add_u8packed dot4add_i8packed dot2add

syn keyword         slangFunc                RestartStrip
syn keyword         slangFunc                CalculateLevelOfDetail CalculateLevelOfDetailUnclamped Gather GetDimensions GetSamplePosition Load Sample SampleBias SampleCmp SampleCmpLevelZero SampleGrad SampleLevel GatherRaw SampleCmpLevel
syn keyword         slangFunc                SampleCmpBias SampleCmpGrad
syn keyword         slangFunc                WriteSamplerFeedback WriteSamplerFeedbackBias WriteSamplerFeedbackGrad WriteSamplerFeedbackLevel
syn keyword         slangFunc                Append Consume DecrementCounter IncrementCounter
syn keyword         slangFunc                Load2 Load3 Load4 Store Store2 Store3 Store4
syn keyword         slangFunc                GatherRed GatherGreen GatherBlue GatherAlpha GatherCmp GatherCmpRed GatherCmpGreen GatherCmpBlue GatherCmpAlpha
syn match           slangFunc                /\.mips\[\d\+\]\[\d\+\]/
syn match           slangFunc                /\.sample\[\d\+\]\[\d\+\]/

" Ray intrinsics
syn keyword         slangFunc                AcceptHitAndEndSearch CallShader IgnoreHit ReportHit TraceRay
syn keyword         slangFunc                DispatchRaysIndex DispatchRaysDimensions
syn keyword         slangFunc                WorldRayOrigin WorldRayDirection RayTMin RayTCurrent RayFlags
syn keyword         slangFunc                InstanceIndex InstanceID GeometryIndex PrimitiveIndex ObjectRayOrigin ObjectRayDirection ObjectToWorld3x4 ObjectToWorld4x3 WorldToObject3x4 WorldToObject4x3
syn keyword         slangFunc                HitKind

" RayQuery intrinsics
syn keyword         slangFunc                TraceRayInline Proceed Abort CommittedStatus
syn keyword         slangFunc                CandidateType CandidateProceduralPrimitiveNonOpaque CandidateTriangleRayT CandidateInstanceIndex CandidateInstanceID CandidateInstanceContributionToHitGroupIndex CandidateGeometryIndex
syn keyword         slangFunc                CandidatePrimitiveIndex CandidateObjectRayOrigin CandidateObjectRayDirection CandidateObjectToWorld3x4 CandidateObjectToWorld4x3 CandidateWorldToObject3x4 CandidateWorldToObject4x3
syn keyword         slangFunc                CommitNonOpaqueTriangleHit CommitProceduralPrimitiveHit CommittedStatus CommittedRayT CommittedInstanceIndex CommittedInstanceID CommittedInstanceContributionToHitGroupIndex
syn keyword         slangFunc                CommittedGeometryIndex CommittedPrimitiveIndex CommittedObjectRayOrigin CommittedObjectRayDirection CommittedObjectToWorld3x4 CommittedObjectToWorld4x3 CommittedWorldToObject3x4
syn keyword         slangFunc                CommittedWorldToObject4x3 CandidateTriangleBarycentrics CandidateTriangleFrontFace CommittedTriangleBarycentrics CommittedTriangleFrontFace

" Pack/unpack math intrinsics
syn keyword         slangFunc                unpack_s8s16 unpack_u8u16 unpack_s8s32 unpack_u8u32
syn keyword         slangFunc                pack_u8 pack_s8 pack_clamp_u8 pack_clamp_s8

" Work graph object methods
syn keyword         slangFunc                Get FinishedCrossGroupSharing Count GetThreadNodeOutputRecords GetGroupNodeOutputRecords IsValid GroupIncrementOutputCount ThreadIncrementOutputCount OutputComplete

" Work graph free intrinsics
syn keyword         slangFunc                GetRemainingRecursionLevels Barrier

" Layout Qualifiers
syn keyword         slangLayoutQual          const row_major column_major
syn keyword         slangLayoutQual          point line triangle lineadj triangleadj
syn keyword         slangLayoutQual          InputPatch OutputPatch
syn match           slangLayoutQual          /PointStream<\s*\w\+\s*>/
syn match           slangLayoutQual          /LineStream<\s*\w\+\s*>/
syn match           slangLayoutQual          /TriangleStream<\s*\w\+\s*>/

" User defined Semantics
syn match           slangSemantic            /:\s*[A-Z]\w*/
syn match           slangSemantic            /:\s*packoffset(\s*c\d\+\(\.[xyzw]\)\?\s*)/ " packoffset
syn match           slangSemantic            /:\s*register(\s*\(r\|x\|v\|t\|s\|cb\|icb\|b\|c\|u\)\d\+\s*)/ " register
syn match           slangSemantic            /:\s*read(\s*\(\(anyhit\|closesthit\|miss\|caller\)\s*,\s*\)*\(anyhit\|closesthit\|miss\|caller\)\?\s*)/ " read
syn match           slangSemantic            /:\s*write(\s*\(\(anyhit\|closesthit\|miss\|caller\)\s*,\s*\)*\(anyhit\|closesthit\|miss\|caller\)\?\s*)/ " write

" access control
syn keyword			slangAccess				public private internal
syn keyword			slangAccess				module import __include

" System-Value Semantics
" Vertex Shader
syn match           slangSemantic            /SV_ClipDistance\d\+/
syn match           slangSemantic            /SV_CullDistance\d\+/
syn keyword         slangSemantic            SV_Position SV_InstanceID SV_PrimitiveID SV_VertexID
syn keyword         slangSemantic            SV_StartVertexLocation SV_StartInstanceLocation
" Tessellation pipeline
syn keyword         slangSemantic            SV_DomainLocation SV_InsideTessFactor SV_OutputControlPointID SV_TessFactor
" Geometry Shader
syn keyword         slangSemantic            SV_GSInstanceID SV_RenderTargetArrayIndex
" Pixel Shader - MSAA
syn keyword         slangSemantic            SV_Coverage SV_Depth SV_IsFrontFace SV_SampleIndex
syn match           slangSemantic            /SV_Target[0-7]/
syn keyword         slangSemantic            SV_ShadingRate SV_ViewID
syn match           slangSemantic            /SV_Barycentrics[0-1]/
" Compute Shader
syn keyword         slangSemantic            SV_DispatchThreadID SV_GroupID SV_GroupIndex SV_GroupThreadID
" Mesh shading pipeline
syn keyword         slangSemantic            SV_CullPrimitive
" Work graph record system values
syn keyword         slangSemantic            SV_DispatchGrid

" HLSL structures
syn keyword         slangStructure           cbuffer

" Shader profiles
" Cg profiles
syn keyword         slangProfile             arbfp1 arbvp1 fp20 vp20 fp30 vp30 ps_1_1 ps_1_2 ps_1_3
" Shader Model 1
syn keyword         slangProfile             vs_1_1
" Shader Model 2
syn keyword         slangProfile             ps_2_0 ps_2_x vs_2_0 vs_2_x
" Shader Model 3
syn keyword         slangProfile             ps_3_0 vs_3_0
" Shader Model 4
syn keyword         slangProfile             gs_4_0 ps_4_0 vs_4_0 gs_4_1 ps_4_1 vs_4_1
" Shader Model 5
syn keyword         slangProfile             cs_4_0 cs_4_1 cs_5_0 ds_5_0 gs_5_0 hs_5_0 ps_5_0 vs_5_0
" Shader Model 6
syn keyword         slangProfile             cs_6_0 ds_6_0 gs_6_0 hs_6_0 ps_6_0 vs_6_0 lib_6_0

" Swizzling
syn match           slangSwizzle             /\.[xyzw]\{1,4\}\>/
syn match           slangSwizzle             /\.[rgba]\{1,4\}\>/
syn match           slangSwizzle             /\.\(_m[0-3]\{2}\)\{1,4\}/
syn match           slangSwizzle             /\.\(_[1-4]\{2}\)\{1,4\}/

" Other Statements
syn keyword         slangStatement           discard

" Storage class
syn match           slangStorageClass        /\<in\(\s+pipeline\)\?\>/
syn match           slangStorageClass        /\<out\(\s\+indices\|\s\+vertices\|\s\+primitives\)\?\>/
syn keyword         slangStorageClass        inout
syn keyword         slangStorageClass        extern nointerpolation precise shared groupshared static uniform volatile
syn keyword         slangStorageClass        snorm unorm
syn keyword         slangStorageClass        linear centroid nointerpolation noperspective sample
syn keyword         slangStorageClass        globallycoherent

" Types
" Buffer types
syn keyword         slangType                ConstantBuffer Buffer ByteAddressBuffer ConsumeStructuredBuffer StructuredBuffer
syn keyword         slangType                AppendStructuredBuffer RWBuffer RWByteAddressBuffer RWStructuredBuffer
syn keyword         slangType                RasterizerOrderedBuffer RasterizerOrderedByteAddressBuffer RasterizerOrderedStructuredBuffer

" Scalar types
syn keyword         slangType                bool int uint dword half float double
syn keyword         slangType                min16float min10float min16int min12int min16uint
syn keyword         slangType                float16_t float32_t float64_t

" Vector types
syn match           slangType                /vector<\s*\w\+,\s*[1-4]\s*>/
syn keyword         slangType                bool1 bool2 bool3 bool4
syn keyword         slangType                int1 int2 int3 int4
syn keyword         slangType                uint1 uint2 uint3 uint4
syn keyword         slangType                dword1 dword2 dword3 dword4
syn keyword         slangType                half1 half2 half3 half4
syn keyword         slangType                float1 float2 float3 float4
syn keyword         slangType                double1 double2 double3 double4
syn keyword         slangType                min16float1 min16float2 min16float3 min16float4
syn keyword         slangType                min10float1 min10float2 min10float3 min10float4
syn keyword         slangType                min16int1 min16int2 min16int3 min16int4
syn keyword         slangType                min12int1 min12int2 min12int3 min12int4
syn keyword         slangType                min16uint1 min16uint2 min16uint3 min16uint4
syn keyword         slangType                float16_t1 float16_t2 float16_t3 float16_t4
syn keyword         slangType                float32_t1 float32_t2 float32_t3 float32_t4
syn keyword         slangType                float64_t1 float64_t2 float64_t3 float64_t4
syn keyword         slangType                int16_t1 int16_t2 int16_t3 int16_t4
syn keyword         slangType                int32_t1 int32_t2 int32_t3 int32_t4
syn keyword         slangType                int64_t1 int64_t2 int64_t3 int64_t4
syn keyword         slangType                uint16_t1 uint16_t2 uint16_t3 uint16_t4
syn keyword         slangType                uint32_t1 uint32_t2 uint32_t3 uint32_t4
syn keyword         slangType                uint64_t1 uint64_t2 uint64_t3 uint64_t4

" Packed types
syn keyword         slangType                uint8_t4_packed int8_t4_packed

" Matrix types
syn match           slangType                /matrix<\s*\w\+\s*,\s*[1-4]\s*,\s*[1-4]\s*>/
syn keyword         slangType                bool1x1 bool2x1 bool3x1 bool4x1 bool1x2 bool2x2 bool3x2 bool4x2 bool1x3 bool2x3 bool3x3 bool4x3 bool1x4 bool2x4 bool3x4 bool4x4
syn keyword         slangType                int1x1 int2x1 int3x1 int4x1 int1x2 int2x2 int3x2 int4x2 int1x3 int2x3 int3x3 int4x3 int1x4 int2x4 int3x4 int4x4
syn keyword         slangType                uint1x1 uint2x1 uint3x1 uint4x1 uint1x2 uint2x2 uint3x2 uint4x2 uint1x3 uint2x3 uint3x3 uint4x3 uint1x4 uint2x4 uint3x4 uint4x4
syn keyword         slangType                dword1x1 dword2x1 dword3x1 dword4x1 dword1x2 dword2x2 dword3x2 dword4x2 dword1x3 dword2x3 dword3x3 dword4x3 dword1x4 dword2x4 dword3x4 dword4x4
syn keyword         slangType                half1x1 half2x1 half3x1 half4x1 half1x2 half2x2 half3x2 half4x2 half1x3 half2x3 half3x3 half4x3 half1x4 half2x4 half3x4 half4x4
syn keyword         slangType                float1x1 float2x1 float3x1 float4x1 float1x2 float2x2 float3x2 float4x2 float1x3 float2x3 float3x3 float4x3 float1x4 float2x4 float3x4 float4x4
syn keyword         slangType                double1x1 double2x1 double3x1 double4x1 double1x2 double2x2 double3x2 double4x2 double1x3 double2x3 double3x3 double4x3 double1x4 double2x4 double3x4 double4x4
syn keyword         slangType                min16float1x1 min16float2x1 min16float3x1 min16float4x1 min16float1x2 min16float2x2 min16float3x2 min16float4x2 min16float1x3 min16float2x3 min16float3x3 min16float4x3 min16float1x4 min16float2x4 min16float3x4 min16float4x4
syn keyword         slangType                min10float1x1 min10float2x1 min10float3x1 min10float4x1 min10float1x2 min10float2x2 min10float3x2 min10float4x2 min10float1x3 min10float2x3 min10float3x3 min10float4x3 min10float1x4 min10float2x4 min10float3x4 min10float4x4
syn keyword         slangType                min16int1x1 min16int2x1 min16int3x1 min16int4x1 min16int1x2 min16int2x2 min16int3x2 min16int4x2 min16int1x3 min16int2x3 min16int3x3 min16int4x3 min16int1x4 min16int2x4 min16int3x4 min16int4x4
syn keyword         slangType                min12int1x1 min12int2x1 min12int3x1 min12int4x1 min12int1x2 min12int2x2 min12int3x2 min12int4x2 min12int1x3 min12int2x3 min12int3x3 min12int4x3 min12int1x4 min12int2x4 min12int3x4 min12int4x4
syn keyword         slangType                min16uint1x1 min16uint2x1 min16uint3x1 min16uint4x1 min16uint1x2 min16uint2x2 min16uint3x2 min16uint4x2 min16uint1x3 min16uint2x3 min16uint3x3 min16uint4x3 min16uint1x4 min16uint2x4 min16uint3x4 min16uint4x4
syn keyword         slangType                float16_t1x1 float16_t2x1 float16_t3x1 float16_t4x1 float16_t1x2 float16_t2x2 float16_t3x2 float16_t4x2 float16_t1x3 float16_t2x3 float16_t3x3 float16_t4x3 float16_t1x4 float16_t2x4 float16_t3x4 float16_t4x4
syn keyword         slangType                float32_t1x1 float32_t2x1 float32_t3x1 float32_t4x1 float32_t1x2 float32_t2x2 float32_t3x2 float32_t4x2 float32_t1x3 float32_t2x3 float32_t3x3 float32_t4x3 float32_t1x4 float32_t2x4 float32_t3x4 float32_t4x4
syn keyword         slangType                float64_t1x1 float64_t2x1 float64_t3x1 float64_t4x1 float64_t1x2 float64_t2x2 float64_t3x2 float64_t4x2 float64_t1x3 float64_t2x3 float64_t3x3 float64_t4x3 float64_t1x4 float64_t2x4 float64_t3x4 float64_t4x4
syn keyword         slangType                int16_t1x1 int16_t2x1 int16_t3x1 int16_t4x1 int16_t1x2 int16_t2x2 int16_t3x2 int16_t4x2 int16_t1x3 int16_t2x3 int16_t3x3 int16_t4x3 int16_t1x4 int16_t2x4 int16_t3x4 int16_t4x4
syn keyword         slangType                int32_t1x1 int32_t2x1 int32_t3x1 int32_t4x1 int32_t1x2 int32_t2x2 int32_t3x2 int32_t4x2 int32_t1x3 int32_t2x3 int32_t3x3 int32_t4x3 int32_t1x4 int32_t2x4 int32_t3x4 int32_t4x4
syn keyword         slangType                int64_t1x1 int64_t2x1 int64_t3x1 int64_t4x1 int64_t1x2 int64_t2x2 int64_t3x2 int64_t4x2 int64_t1x3 int64_t2x3 int64_t3x3 int64_t4x3 int64_t1x4 int64_t2x4 int64_t3x4 int64_t4x4
syn keyword         slangType                uint16_t1x1 uint16_t2x1 uint16_t3x1 uint16_t4x1 uint16_t1x2 uint16_t2x2 uint16_t3x2 uint16_t4x2 uint16_t1x3 uint16_t2x3 uint16_t3x3 uint16_t4x3 uint16_t1x4 uint16_t2x4 uint16_t3x4 uint16_t4x4
syn keyword         slangType                uint32_t1x1 uint32_t2x1 uint32_t3x1 uint32_t4x1 uint32_t1x2 uint32_t2x2 uint32_t3x2 uint32_t4x2 uint32_t1x3 uint32_t2x3 uint32_t3x3 uint32_t4x3 uint32_t1x4 uint32_t2x4 uint32_t3x4 uint32_t4x4
syn keyword         slangType                uint64_t1x1 uint64_t2x1 uint64_t3x1 uint64_t4x1 uint64_t1x2 uint64_t2x2 uint64_t3x2 uint64_t4x2 uint64_t1x3 uint64_t2x3 uint64_t3x3 uint64_t4x3 uint64_t1x4 uint64_t2x4 uint64_t3x4 uint64_t4x4

" Sampler types
syn keyword         slangType                SamplerState SamplerComparisonState
syn keyword         slangType                sampler sampler1D sampler2D sampler3D samplerCUBE sampler_state

" Texture types
syn keyword         slangType                Texture1D Texture1DArray Texture2D Texture2DArray Texture2DMS Texture2DMSArray Texture3D TextureCube TextureCubeArray
syn keyword         slangType                RWTexture1D RWTexture2D RWTexture2DArray RWTexture3D RWTextureCubeArray RWTexture2DMS RWTexture2DMSArray
syn keyword         slangType                FeedbackTexture2D FeedbackTexture2DArray
syn keyword         slangType                RasterizerOrderedTexture1D RasterizerOrderedTexture1DArray RasterizerOrderedTexture2D RasterizerOrderedTexture2DArray RasterizerOrderedTexture3D
syn keyword         slangTypeDeprec          texture texture1D texture2D texture3D

" Raytracing types
syn keyword         slangType                RaytracingAccelerationStructure RayDesc RayQuery BuiltInTriangleIntersectionAttributes

" Work graph input record objects
syn keyword         slangType                DispatchNodeInputRecord RWDispatchNodeInputRecord GroupNodeInputRecords RWGroupNodeInputRecords ThreadNodeInputRecord RWThreadNodeInputRecord EmptyNodeInput

" Work graph output node objects
syn keyword         slangType                NodeOutput NodeOutputArray EmptyNodeOutput EmptyNodeOutputArray

" Work graph output record objects
syn keyword         slangType                ThreadNodeOutputRecords GroupNodeOutputRecords

" State Groups args
syn case ignore " This section case insensitive

" Blend state group
syn keyword         slangStateGroupArg       AlphaToCoverageEnable BlendEnable SrcBlend DestBlend BlendOp SrcBlendAlpha DestBlendAlpha BlendOpAlpha RenderTargetWriteMask
syn keyword         slangStateGroupVal       ZERO ONE SRC_COLOR INV_SRC_COLOR SRC_ALPHA INV_SRC_ALPHA DEST_ALPHA INV_DEST_ALPHA DEST_COLOR INV_DEST_COLOR SRC_ALPHA_SAT BLEND_FACTOR INV_BLEND_FACTOR SRC1_COLOR INV_SRC1_COLOR SRC1_ALPHA INV_SRC1_ALPHA
syn keyword         slangStateGroupVal       ADD SUBSTRACT REV_SUBSTRACT MIN MAX

" Rasterizer state group
syn keyword         slangStateGroupArg       FillMode CullMode FrontCounterClockwise DepthBias DepthBiasClamp SlopeScaledDepthBias ZClipEnable DepthClipEnable ScissorEnable MultisampleEnable AntialiasedLineEnable
syn keyword         slangStateGroupVal       SOLID WIREFRAME
syn keyword         slangStateGroupVal       NONE FRONT BACK

" Sampler state group
syn keyword         slangStateGroupArg       Filter AddressU AddressV AddressW MipLODBias MaxAnisotropy ComparisonFunc BorderColor MinLOD MaxLOD ComparisonFilter
syn keyword         slangStateGroupVal       MIN_MAG_MIP_POINT MIN_MAG_POINT_MIP_LINEAR MIN_POINT_MAG_LINEAR_MIP_POINT MIN_POINT_MAG_MIP_LINEAR MIN_LINEAR_MAG_MIP_POINT MIN_LINEAR_MAG_POINT_MIP_LINEAR MIN_MAG_LINEAR_MIP_POINT MIN_MAG_MIP_LINEAR ANISOTROPIC
syn keyword         slangStateGroupVal       COMPARISON_MIN_MAG_MIP_POINT COMPARISON_MIN_MAG_POINT_MIP_LINEAR COMPARISON_MIN_POINT_MAG_LINEAR_MIP_POINT COMPARISON_MIN_POINT_MAG_MIP_LINEAR COMPARISON_MIN_LINEAR_MAG_MIP_POINT
syn keyword         slangStateGroupVal       COMPARISON_MIN_LINEAR_MAG_POINT_MIP_LINEAR COMPARISON_MIN_MAG_LINEAR_MIP_POINT COMPARISON_MIN_MAG_MIP_LINEAR COMPARISON_ANISOTROPIC
syn keyword         slangStateGroupVal       COMPARISON_NEVER COMPARISON_LESS COMPARISON_EQUAL COMPARISON_LESS_EQUAL COMPARISON_GREATER COMPARISON_NOT_EQUAL COMPARISON_GREATER_EQUAL COMPARISON_ALWAYS
syn keyword         slangStateGroupVal       WRAP MIRROR CLAMP BORDER MIRROR_ONCE
syn keyword         slangStateGroupVal       SAMPLER_FEEDBACK_MIN_MIP SAMPLER_FEEDBACK_MIP_REGION_USED

" Ray flags
syn keyword         slangStateGroupVal       RAY_FLAG_NONE RAY_FLAG_FORCE_OPAQUE RAY_FLAG_FORCE_NON_OPAQUE RAY_FLAG_ACCEPT_FIRST_HIT_AND_END_SEARCH RAY_FLAG_SKIP_CLOSEST_HIT_SHADER
syn keyword         slangStateGroupVal       RAY_FLAG_CULL_BACK_FACING_TRIANGLES RAY_FLAG_CULL_FRONT_FACING_TRIANGLES RAY_FLAG_CULL_OPAQUE RAY_FLAG_CULL_NON_OPAQUE
syn keyword         slangStateGroupVal       RAY_FLAG_SKIP_TRIANGLES RAY_FLAG_SKIP_PROCEDURAL_PRIMITIVES

" HitKind enum
syn keyword         slangStateGroupVal       HIT_KIND_TRIANGLE_FRONT_FACE HIT_KIND_TRIANGLE_BACK_FACE

" RayQuery enums
syn keyword         slangStateGroupVal       COMMITTED_NOTHING COMMITTED_TRIANGLE_HIT COMMITTED_PROCEDURAL_PRIMITIVE_HIT
syn keyword         slangStateGroupVal       CANDIDATE_NON_OPAQUE_TRIANGLE CANDIDATE_PROCEDURAL_PRIMITIVE

" Heap objects
syn keyword         slangStateGroupVal       ResourceDescriptorHeap SamplerDescriptorHeap

" Work graph constants
syn keyword         slangStateGroupVal       UAV_MEMORY GROUP_SHARED_MEMORY NODE_INPUT_MEMORY NODE_OUTPUT_MEMORY ALL_MEMORY GROUP_SYNC GROUP_SCOPE DEVICE_SCOPE

syn case match " Case sensitive from now on

" Effect files declarations and functions
" Effect groups, techniques passes
syn keyword         slangEffectGroup         fxgroup technique11 pass
" Effect functions
syn keyword         slangEffectFunc          SetBlendState SetDepthStencilState SetRasterizerState SetVertexShader SetHullShader SetDomainShader SetGeometryShader SetPixelShader SetComputeShader CompileShader ConstructGSWithSO SetRenderTargets

" Default highlighting
if version >= 508 || !exists("did_slang_syntax_inits")
  if version < 508
    let did_slang_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink slangProfile        slangStatement
  HiLink slangStateGroupArg  slangStatement
  HiLink slangStateGroupVal  Number
  HiLink slangStatement      Statement
  HiLink slangType           Type
  HiLink slangTypeDeprec     WarningMsg
  HiLink slangStorageClass   StorageClass
  HiLink slangSemantic       PreProc
  HiLink slangFunc           slangStatement
  HiLink slangLayoutQual     slangFunc
  HiLink slangAnnotation     PreProc
  HiLink slangAccess     	 PreProc
  HiLink slangStructure      Structure
  HiLink slangSwizzle        SpecialChar
  HiLink slangAttribute      Statement

  HiLink slangEffectGroup    Type
  HiLink slangEffectFunc     Statement
  delcommand HiLink
endif

let b:current_syntax = "slang"
