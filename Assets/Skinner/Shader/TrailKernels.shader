Shader "Hidden/Skinner/Trail/Kernels"
{
    Properties
    {
        _PositionBuffer("", 2D) = ""{}
        _NewPositionBuffer("", 2D) = ""{}
        _VelocityTex("", 2D) = ""{}
        _BasisBuffer("", 2D) = ""{}
    }
    SubShader
    {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert_img
            #pragma fragment InitializeVelocityFragment
            #pragma target 3.0
            #include "TrailKernels.cginc"
            ENDCG
        }
        Pass
        {
            CGPROGRAM
            #pragma vertex vert_img
            #pragma fragment InitializePositionFragment
            #pragma target 3.0
            #include "TrailKernels.cginc"
            ENDCG
        }
        Pass
        {
            CGPROGRAM
            #pragma vertex vert_img
            #pragma fragment InitializeBasisFragment
            #pragma target 3.0
            #include "TrailKernels.cginc"
            ENDCG
        }
        Pass
        {
            CGPROGRAM
            #pragma vertex vert_img
            #pragma fragment UpdateVelocityFragment
            #pragma target 3.0
            #include "TrailKernels.cginc"
            ENDCG
        }
        Pass
        {
            CGPROGRAM
            #pragma vertex vert_img
            #pragma fragment UpdatePositionFragment
            #pragma target 3.0
            #include "TrailKernels.cginc"
            ENDCG
        }
        Pass
        {
            CGPROGRAM
            #pragma vertex vert_img
            #pragma fragment UpdateBasisFragment
            #pragma target 3.0
            #include "TrailKernels.cginc"
            ENDCG
        }
    }
}
