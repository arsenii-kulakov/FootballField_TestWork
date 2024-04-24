Shader "Custom/Simple_Color"
{
    Properties
    {
        _Color("Color", Color) = (1, 1, 1, 1)
        _Smoothness("Smoothness", Range(0, 1)) = 0.5
    }

    SubShader
    {
        Tags { "RenderType"="Opaque" }

        CGPROGRAM
        #pragma surface surf Standard fullforwardshadows

        struct Input
        {
            fixed4 _Color;
            float _Smoothness;
        };

        
        fixed4 _Color;
        float _Smoothness;

        void surf(Input IN, inout SurfaceOutputStandard o)
        {
            fixed4 c = _Color;
            o.Albedo = c.rgb;
            o.Smoothness = _Smoothness;
            
        }
        ENDCG
    }

    FallBack "Diffuse"
}
