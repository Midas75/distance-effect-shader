Shader "Custom/DistanceEffect"
{
	Properties
	{
	}
	SubShader
	{
		Tags{ "RenderType" = "Opaque" }
		LOD 100
			Pass
		{
			CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
				float3 WorldPos : TEXCOORD1;
			};

			v2f vert(appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.WorldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				return o;
			}

			fixed4 frag(v2f i) : SV_Target
			{
				float DistanceRamp = distance(i.WorldPos, _WorldSpaceCameraPos.xyz);
			// 0-1 ====> 0-100m
			DistanceRamp /= 100;
			return float4(DistanceRamp, DistanceRamp, DistanceRamp, 1);
		}
		ENDCG
	}
	}
}