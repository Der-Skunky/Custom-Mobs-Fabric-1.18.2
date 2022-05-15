#version 150 core
#extension  GL_ARB_shader_texture_lod : enable





















































































































































































































































































































































































































































#define gl_FogFragCoord iris_FogFragCoord
#define gl_FragData iris_FragData
#define varying in
#define gl_ProjectionMatrix mat4(vec4(2.0, 0.0, 0.0, 0.0), vec4(0.0, 2.0, 0.0, 0.0), vec4(0.0), vec4(-1.0, -1.0, 0.0, 1.0))
#define gl_Color vec4(1.0, 1.0, 1.0, 1.0)
#define gl_NormalMatrix mat3(1.0)
#define gl_ModelViewMatrix mat4(1.0)
#define gl_ModelViewProjectionMatrix (gl_ProjectionMatrix * gl_ModelViewMatrix)
uniform float iris_FogDensity;
uniform float iris_FogStart;
uniform float iris_FogEnd;
uniform vec4 iris_FogColor;

struct iris_FogParameters {
    vec4 color;
    float density;
    float start;
    float end;
    float scale;
};

iris_FogParameters iris_Fog = iris_FogParameters(iris_FogColor, iris_FogDensity, iris_FogStart, iris_FogEnd, 1.0 / (iris_FogEnd - iris_FogStart));

#define gl_Fog iris_Fog
in float iris_FogFragCoord;
out vec4 iris_FragData[8];
vec4 texture2D(sampler2D sampler, vec2 coord) { return texture(sampler, coord); }
vec4 texture3D(sampler3D sampler, vec3 coord) { return texture(sampler, coord); }
vec4 texture2D(sampler2D sampler, vec2 coord, float bias) { return texture(sampler, coord, bias); }
vec4 texture3D(sampler3D sampler, vec3 coord, float bias) { return texture(sampler, coord, bias); }
vec4 texture2DLod(sampler2D sampler, vec2 coord, float lod) { return textureLod(sampler, coord, lod); }
vec4 texture3DLod(sampler3D sampler, vec3 coord, float lod) { return textureLod(sampler, coord, lod); }
vec4 shadow2D(sampler2DShadow sampler, vec3 coord) { return vec4(texture(sampler, coord)); }
vec4 shadow2DLod(sampler2DShadow sampler, vec3 coord, float lod) { return vec4(textureLod(sampler, coord, lod)); }
vec4 texture2DGrad(sampler2D sampler, vec2 coord, vec2 dPdx, vec2 dPdy) { return textureGrad(sampler, coord, dPdx, dPdy); }
vec4 texture2DGradARB(sampler2D sampler, vec2 coord, vec2 dPdx, vec2 dPdy) { return textureGrad(sampler, coord, dPdx, dPdy); }
vec4 texture3DGrad(sampler3D sampler, vec3 coord, vec3 dPdx, vec3 dPdy) { return textureGrad(sampler, coord, dPdx, dPdy); }
vec4 texelFetch2D(sampler2D sampler, ivec2 coord, int lod) { return texelFetch(sampler, coord, lod); }
vec4 texelFetch3D(sampler3D sampler, ivec3 coord, int lod) { return texelFetch(sampler, coord, lod); }
/*
Complementary Shaders by EminGT, based on BSL Shaders by Capt Tatsu
*/

//Common//
/*
Complementary Shaders by EminGT, based on BSL Shaders by Capt Tatsu
*/

/*--------------------------------------------------------------------
         ___ __  __ ____   ___  ____ _____  _    _   _ _____ 
        |_ _|  \/  |  _ \ / _ \|  _ \_   _|/ \  | \ | |_   _|
         | || |\/| | |_) | | | | |_) || | / _ \ |  \| | | |  
         | || |  | |  __/| |_| |  _ < | |/ ___ \| |\  | | |  
        |___|_|  |_|_|    \___/|_| \_\|_/_/   \_\_| \_| |_|  
         .
  -> -> -> EDITING THIS FILE HAS A HIGH CHANCE TO BREAK COMPLEMENTARY
  -> -> -> DO NOT CHANGE ANYTHING UNLESS YOU KNOW WHAT YOU ARE DOING
  -> -> -> DO NOT EXPECT SUPPORT AFTER MODIFYING SHADER FILES
--------------------------------------------------------------------*/

//Shader Options//

////#define COMPATIBILITY_MODE

  

  
  
  
  
////#define NIGHT_TWILIGHT_FOREST
  
  
  
  
  
  
  
  
////#define SMOKEY_WATER_LIGHTSHAFTS
////#define MIN_LIGHT_EVERYWHERE
////#define METALLIC_WORLD
////#define ANAMORPHIC_BLOOM
////#define EXTRA_PARTICLE_EMISSION
////#define WAVING_EVERYTHING
////#define GBUFFER_CODING
////#define SHOW_RAY_TRACING
////#define RANDOM_BLOCKLIGHT
////#define OVERDRAW
  
////#define RAIN_REF_FORCED

  
  
////#define DO_WAVING_UNDERGROUND
////#define DO_WAVING_ON_COMPATIBILITY
  
////#define WAVING_LEAVES
  
////#define WAVING_VINES
////#define WAVING_LILY_PADS

  
  
  
  
  
  
  
  

////#define WATERMARK
  
////#define GRAY_START
////#define BLURRY_START
////#define PARTICLE_VISIBILITY
////#define HAND_BLOOM_REDUCTION
////#define LAVA_VISIBILITY
  
  
  
////#define SNOW_MODE
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
//  #define REFLECTION
  
  
  
////#define PROJECTED_CAUSTICS
////#define WATER_ABSORPTION
////#define WATER_REFRACT
  
////#define BLACK_OUTLINE
////#define PROMO_OUTLINE
  
  
  
////#define OUTLINE_ON_EVERYTHING

//  #define REFLECTION_SPECULAR
  
//  #define SPECULAR_SKY_REF
////#define DOUBLE_QUALITY_ROUGH_REF
////#define REFLECTION_RAIN
  
  
  
  
  
  
  
  
  
  
  
  
  
  

////#define GENERATED_NORMALS
////#define NOISY_TEXTURES
  
  
  
  
////#define GLOWING_DEBRIS
////#define EMISSIVE_NETHER_ORES
  
  
  
  
////#define GREEN_SCREEN
////#define BLUE_SCREEN
////#define GLOWING_REDSTONE_BLOCK
////#define GLOWING_LAPIS_BLOCK
////#define ALTERNATIVE_COMMAND_BLOCK

  
////#define DOF_IS_ON
  
  
  
////#define ANAMORPHIC_BLUR
////#define FOV_SCALED_BLUR
////#define CHROMATIC_BLUR
  
  
////#define MOTION_BLUR
  
  
  
  
////#define LENS_FLARE
  
  
  
  
  
  
  
  
  

////#define COLOR_GRADING
  
  
  
  
  
  

  
  
  
  
  
  

  
  
  
  
  
  

  
  
  
  
  
  

  
  
  
  
  

  const float sunPathRotation = -40.0; //[-60.0 -55.0 -50.0 -45.0 -40.0 -35.0 -30.0 -25.0 -20.0 -15.0 -10.0 -5.0 0.0 5.0 10.0 15.0 20.0 25.0 30.0 35.0 40.0 45.0 50.0 55.0 60.0]
  const int shadowMapResolution = 1024; //[256 1024 2048 3072 4096 8192]
  const float shadowDistance = 128.0; //[64.0 80.0 96.0 112.0 128.0 160.0 192.0 224.0 256.0 320.0 384.0 512.0 768.0 1024.0]
//  #define SHADOWS
  
  
  
  
  const float shadowMapBias = 1.0 - 25.6 / shadowDistance;
////#define COLORED_SHADOWS
////#define CLOUD_SHADOW
////#define NO_FOLIAGE_SHADOWS
  
//  #define BLOCK_ENTITY_SHADOWS
//  #define ENTITY_SHADOWS
  
  

  
  
  
  

  
  
  
  

  
  
  
  

  
  
  
  

  
  
  
  

  
  
  
  

  
  
  
  

  
  
  
  

  
////#define MOON_PHASE_LIGHTING
  
  
  

  
  
  
  


////#define COLORED_LIGHT_DEFINE

  
  

  
  
  
  
  
  
  
  
  
  
  

  
  
  
  

  
  
  
  

  
  
  
  

  
  
  
  

  

  
  
  
  

  
  
  
  

  
  
  
  
  
  
  
  
  
  
  
////#define VANILLA_SKYBOX
  
  
  
  
  
  
  

  
  
  
  

  
  
  
  
  
  
  

////#define GALAXIES
  
  
  
  
  

  
////#define WATER_DISPLACEMENT
  
  
  
  
  
  
  
  
  
  
  
  

////#define WHITE_WORLD
  
////#define NETHER_SMOKE
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
////#define WORLD_CURVATURE
  
  
  
  
  
  
////#define NO_PARTICLES
////#define BLOCKLIGHT_FLICKER
  

////#define VL_CLOUDS_50325

//Define Handling//
  
    
  
    
  

  
    
    
    
    
    
      
    
  
    
    
  
  
  
    
    
    
  

  
    
    
    
    
  

  
    
  

  
    
    
      
      
      
      
      
    
  

  
    
    
  

  
    
  

//Dimension Undefine//
  
    
    
    
  

  
    
    
    
  
  
  
    
    
    
    
  
  
  
    
    
    
  

  
    
    
    
  

  
    
    
    
  

  
    
    
  

  
    
    
    
  

//Shenanigans//
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

//Very Common Variables//
uniform int worldTime;

  float timeAngle  = worldTime / 24000.0;
  float shadowFade = 1.0;

  
  
  
  
  
  
  
  
  

float timeBrightness = max(sin(timeAngle*6.28318530718),0.0);
float moonBrightness = max(sin(timeAngle*(-6.28318530718)),0.0);

//Very Common Functions//
int pow2(int number) {
    return number * number;
}
float pow2(float number) {
    return number * number;
}

float sqrt1(float number) { // Faster sqrt() approximation (that isn't accurate at all) for numbers that are between 0 and 1
    number = 1.0 - number;
    number *= number;
    return 1.0 - number;
}
float sqrt2(float number) {
    number = 1.0 - number;
    number *= number;
    number *= number;
    return 1.0 - number;
}
float sqrt3(float number) {
    number = 1.0 - number;
    number *= number;
    number *= number;
    number *= number;
    return 1.0 - number;
}
float sqrt4(float number) {
    number = 1.0 - number;
    number *= number;
    number *= number;
    number *= number;
    number *= number;
    return 1.0 - number;
}

float sqrt1inv(float number) {
    number = 1.0 - number;
    number *= number;
    return number;
}

float dot2(vec2 vector) {
    return dot(vector, vector);
}
float dot2(vec3 vector) {
    return dot(vector, vector);
}
float dot2(vec4 vector) {
    return dot(vector, vector);
}

float min2(vec2 vector) {
    return min(vector.x, vector.y);
}

float max2(vec2 vector) {
   return max(vector.x, vector.y);
}

//Varyings//
varying vec2 texCoord;

varying vec3 sunVec, upVec;

//////////Fragment Shader//////////Fragment Shader//////////Fragment Shader//////////


//Uniforms//
uniform int frameCounter;
uniform int isEyeInWater;
uniform int worldDay;

uniform float isEyeInCave;
uniform float blindFactor, nightVision;
uniform float far, near;
uniform float frameTimeCounter;
uniform float rainStrengthS;
uniform float screenBrightness; 
uniform float viewWidth, viewHeight, aspectRatio;
uniform float eyeAltitude;

uniform ivec2 eyeBrightnessSmooth;

uniform vec3 skyColor;
uniform vec3 fogColor;

uniform mat4 gbufferProjection, gbufferPreviousProjection, gbufferProjectionInverse;
uniform mat4 gbufferModelView, gbufferPreviousModelView, gbufferModelViewInverse;
uniform mat4 shadowProjection;
uniform mat4 shadowModelView;

uniform sampler2D colortex0;
uniform sampler2D depthtex0;


uniform sampler2D colortex4;



uniform int moonPhase;




uniform sampler2D colortex3;
















uniform float isDry, isRainy, isSnowy;


//Optifine Constants//








//Common Variables//
float eBS = eyeBrightnessSmooth.y / 240.0;
float sunVisibility = clamp(dot( sunVec,upVec) + 0.0625, 0.0, 0.125) * 8.0;
float vsBrightness = clamp(screenBrightness, 0.0, 1.0);

vec3 lightVec = sunVec * (1.0 - 2.0 * float(timeAngle > 0.5325 && timeAngle < 0.9675));

vec2 aoOffsets[4] = vec2[4](
	vec2( 1.0,  0.0),
	vec2( 0.0,  1.0),
	vec2(-1.0,  0.0),
	vec2( 0.0, -1.0)
);







float modifiedWorldDay = mod(worldDay, 100.0) + 5.0;
float frametime = frameTimeCounter * 1.00;
float cloudtime = (worldTime + modifiedWorldDay * 24000) * 0.05 * 1.00;










//Common Functions//
float GetLuminance(vec3 color) {
	return dot(color,vec3(0.299, 0.587, 0.114));
}

float GetLinearDepth(float depth) {
   return (2.0 * near) / (far + near - depth * (far - near));
}


float GetAmbientOcclusion(float z) {
	float ao = 0.0;
	float tw = 0.0;
	float lz = GetLinearDepth(z);

	
		vec2 halfView = vec2(viewWidth, viewHeight) / 2.0;
		vec2 coord1 = (floor(texCoord * halfView + 1.0)) / halfView;
		vec2 coord2 = texCoord * 0.5;
	
		
		
	
	
	for(int i = 0; i < 4; i++) {
		vec2 offset = aoOffsets[i] / vec2(viewWidth, viewHeight);
		float samplez = GetLinearDepth(texture2D(depthtex0, coord1 + offset * 2.0).r);
		float wg = max(1.0 - 2.0 * far * abs(lz - samplez), 0.0);
		ao += texture2D(colortex4, coord2 + offset).r * wg;
		tw += wg;
	}
	ao /= tw;
	if(tw < 0.0001) ao = texture2D(colortex4, coord2).r;

	float aoStrength = 1.6;

	
		
	
	
	//return pow(texture2D(colortex4, coord2).r, AO_STRENGTH);
	return pow(ao, aoStrength);
}




	
	

	
	

	
	
	
	
	
	
	
	
	



//Includes//






float CalcNightBrightness() {
	float nightBright = 1.00;
	
		
		
		
	
	return nightBright;
}
float nightBrightness = CalcNightBrightness();

vec3 lightMorning    = vec3(236, 184, 132) * 1.05 / 255.0;
vec3 lightDay        = vec3(180, 172, 164) * 1.40 / 255.0;
vec3 lightEvening    = vec3(236, 180, 132) * 1.05 / 255.0;

vec3 lightNight      = vec3(156, 192, 240) * 0.70 * (vsBrightness*0.125 + 0.80) * 0.4 / 255.0 * nightBrightness;




vec3 ambientMorning  = vec3(212, 196, 228) * 0.25 * 1.1 / 255.0;
vec3 ambientDay      = vec3(156, 188, 228) * 0.40 * 1.1 / 255.0;
vec3 ambientEvening  = vec3(212, 196, 228) * 0.25 * 1.1 / 255.0;
vec3 ambientNight    = vec3(120, 164, 228) * 0.45 * (vsBrightness*0.20 + 0.70) * 0.495 / 255.0 * nightBrightness;

vec3 weatherCol = vec3(168, 196, 255) * 1.60 / 255.0;
vec3 weatherIntensity = vec3(1.60);

float mefade = 1.0 - clamp(abs(timeAngle - 0.5) * 8.0 - 1.5, 0.0, 1.0);
float dfade = 1.0 - timeBrightness;

vec3 CalcLightColor(vec3 morning, vec3 day, vec3 afternoon, vec3 night, vec3 weatherCol) {
	vec3 me = mix(morning, afternoon, mefade);
	float dfadeModified = dfade * dfade;
	vec3 dayAll = mix(me, day, 1.0 - dfadeModified * dfadeModified);
	vec3 c = mix(night, dayAll, sunVisibility);
	c = mix(c, dot(c, vec3(0.299, 0.587, 0.114)) * weatherCol, rainStrengthS*0.6);
	return c * c;
}

vec3 lightCol   = CalcLightColor(lightMorning,   lightDay,   lightEvening,   lightNight,
								 weatherCol * (vsBrightness*0.1 + 0.9));
vec3 ambientCol = CalcLightColor(ambientMorning, ambientDay, ambientEvening, ambientNight,
								 weatherCol * (vsBrightness*0.1 + 0.9));




    

    
    








vec3 sky_ColorSqrt = vec3(136.0, 172.0, 236.0) * 1.10 / 255.0;
vec3 skyColCustom = sky_ColorSqrt * sky_ColorSqrt;

vec3 skyMult = vec3(255, 255, 255) * 1.00 / 255.0;

vec3 blocklightColSqrt = vec3(224, 172, 140) * 0.45 / 255.0;
vec3 blocklightCol = blocklightColSqrt * blocklightColSqrt;





    vec4 underwaterColor = vec4(pow(fogColor, vec3(0.33, 0.21, 0.26)) * 1.00 * 0.2, 1.0);

    


vec4 waterColorSqrt = vec4(172, 212, 255, 255.0) * 0.50 / 255.0;
vec4 waterColor = waterColorSqrt * waterColorSqrt;

const float waterFog = 64.0;

const float waterAlpha = 0.50;
//Thanks to Jessie for dithering
float Bayer2  (vec2 c) { c = 0.5 * floor(c); return fract(1.5 * fract(c.y) + c.x); }
float Bayer4  (vec2 c) { return 0.25 * Bayer2  (0.5 * c) + Bayer2(c); }
float Bayer8  (vec2 c) { return 0.25 * Bayer4  (0.5 * c) + Bayer2(c); }
float Bayer16 (vec2 c) { return 0.25 * Bayer8  (0.5 * c) + Bayer2(c); }
float Bayer32 (vec2 c) { return 0.25 * Bayer16 (0.5 * c) + Bayer2(c); }
float Bayer64 (vec2 c) { return 0.25 * Bayer32 (0.5 * c) + Bayer2(c); }
float Bayer128(vec2 c) { return 0.25 * Bayer64 (0.5 * c) + Bayer2(c); }
float Bayer256(vec2 c) { return 0.25 * Bayer128(0.5 * c) + Bayer2(c); }



vec3 ScreenToView(vec3 pos) {
	vec4 iProjDiag = vec4(gbufferProjectionInverse[0].x,
						  gbufferProjectionInverse[1].y,
						  gbufferProjectionInverse[2].zw);
    vec3 p3 = pos * 2.0 - 1.0;
    vec4 viewPos = iProjDiag * p3.xyzz + gbufferProjectionInverse[3];
    return viewPos.xyz / viewPos.w;
}

vec3 ViewToWorld(vec3 pos) {
	return mat3(gbufferModelViewInverse) * pos + gbufferModelViewInverse[3].xyz;
}

vec3 WorldToShadow(vec3 pos) {
	vec3 shadowpos = mat3(shadowModelView) * pos + shadowModelView[3].xyz;
	return (vec3((shadowProjection)[0].x, (shadowProjection)[1].y, shadowProjection[2].z) * (shadowpos) + (shadowProjection)[3].xyz);
}


vec3 GetSkyColor(vec3 lightCol, float NdotU, vec3 nViewPos, bool isReflection) {
    float timeBrightnessInv = 1.0 - timeBrightness;
    float timeBrightnessInv2 = timeBrightnessInv * timeBrightnessInv;
    float timeBrightnessInv4 = timeBrightnessInv2 * timeBrightnessInv2;
    float timeBrightnessInv8 = timeBrightnessInv4 * timeBrightnessInv4;

    float NdotSp = clamp(dot(nViewPos, sunVec) * 0.5 + 0.5, 0.001, 1.0);
    float NdotS = NdotSp * NdotSp;
    NdotS *= NdotS;

    float absNdotU = abs(NdotU);

    vec3 skyColor2 = skyColor * skyColor;
    vec3 sky = mix(skyColor * 0.6, skyColor2, absNdotU) * (0.5 + 0.5 * sunVisibility) * skyMult;

    
        
    

    float horizon = 1.0 - max(NdotU + 0.1, 0.0) * (1.0 - 0.25 * NdotS * sunVisibility);
    horizon = min(horizon, 0.9);
    horizon *= horizon;
    
    float lightmix = NdotS * max(1.0 - absNdotU * 2.0, 0.0) * 0.5 + horizon + 0.05;
    lightmix *= sunVisibility * (1.0 - rainStrengthS) * timeBrightnessInv8;

    sky *= 2.0 - 0.5 * timeBrightnessInv4;
    sky *= mix(1.00, 1.00, timeBrightnessInv4);
    
    float mult = 0.1 * (1.0 + rainStrengthS) + horizon * (0.3 + 0.1 * sunVisibility);
	
	float meFactorP = min((1.0 - min(moonBrightness, 0.6) / 0.6) * 0.115, 0.075);
    float meNdotU = 1.0 - absNdotU;
    float meFactor = meFactorP * meNdotU * meNdotU * 15.0 * max(timeBrightnessInv4 - rainStrengthS, 0.0);
    vec3 meColor = mix(lightMorning, lightEvening, mefade);
    meColor *= meColor;
    meColor *= meColor;
    meColor *= meFactor * meFactor * NdotS;

    vec3 finalSky = mix(sky * (1.0 - lightmix), lightCol * sqrt(lightCol), lightmix);
    
    vec3 nightSky = ambientNight * ambientNight * (3.25 + 2.25 * max(sqrt1(NdotU), 0.0));
    nightSky *= mix(1.00, 1.0, sunVisibility);
    finalSky += nightSky;

    finalSky *= max(1.0 - length(meColor) * 0.5, 0.0);
    finalSky += meColor * 0.8;
    
	if (isReflection) {
        float invNdotU = max(-NdotU, 0.0);
        float groundFactor = 0.5 * (11.0 * rainStrengthS + 1.0) * (-5.0 * sunVisibility + 6.0);
        float ground = exp(-groundFactor / (invNdotU * 6.0));
        ground = smoothstep(0.0, 1.0, ground);
        mult *= (1.0 - ground);
    }

    //duplicate 98765
    vec3 weatherSky = weatherCol * weatherCol;
    weatherSky *= GetLuminance(ambientCol / (weatherSky)) * 1.4;
    weatherSky *= mix(0.70, 1.00, sunVisibility);
    weatherSky = max(weatherSky, skyColor2 * 0.75); // Lightning Sky Color
	weatherSky *= rainStrengthS;
    finalSky = mix(finalSky, weatherSky, rainStrengthS) * mult;

    finalSky = pow(finalSky, vec3(1.125));

    return finalSky;
}



	





	

	
		
		
		
		
		
	

	
		
		
		
		
		
			
			
				
			
			
				
			
			
		
		
								
								
								

		
	

	
		
		
		
			
		

		
		
		
		
		
		
		
		

		
		
		

		
			
		
			
		
		
		
		
			
		

		

		
		

		
			
			
				
				
				
				
				
				
				
				
				
				
				
					  
					  
				
				
									
									
				
				
				
				
			

			
			
			
				
				
				
				
				
				
			

            
            

            
            
            
            
            

            

            
            
            
            
            
			
			
            	
			
            	
			
            

            

			
		

		
	

	
		
			
				  

			
		

		
			
				
			
			
			
			
			

			
				
			
			
				
			

			
				
			
				
			

			

			

			
			
			

			
				
				
					
					

					
						

					
						
						
						
						

						
										
										
										

						
					
					
				
			

			

			
		
	



	
		
	

	
		
		
		
		
			
		
		
		
		
		
		
		
			
		
		
		
		
			
			
			
		
		
		
		

		
	



	
		
	

	
		
			  

		
	

	
		

		
		
		

		
			
		

		
		
		

		
			
		
			
		

		

		

		
		
		
		
		
		

		
		

		
		
			
			
		

		
			
			

			
					

			
				
				
				
				
				

				
				
				

				
			
			
		

		
		
		
		
		
		
		
		
		
		
		
		

		
			
			
		

		
	



	
		
				

		
	

	
		

		
			
		

		
		
		

		
			
		
			
		

		

		

		
		

		
		
			
			

			
					

			
				
				
				
				
				

				
				

				
			
			
		

		
	





vec3 SunGlare(vec3 color, vec3 nViewPos, vec3 lightCol) {
	float cosSp = dot(nViewPos, lightVec);
	if (cosSp > 0.0) {
		float cosS = cosSp;
		cosS *= cosS;
		cosS *= cosS;
		cosS *= cosS;
		float visfactor = 0.075;

		float sunGlare = cosS;
		sunGlare = visfactor / (1.0 - (1.0 - visfactor) * sunGlare) - visfactor;
		sunGlare *= cosSp;

		sunGlare *= 0.25 * 1.0 * (1.0 - rainStrengthS);

		float shadowTime = abs(sunVisibility - 0.5) * 2.0;
		shadowTime *= shadowTime;
		sunGlare *= shadowTime * shadowTime;

		vec3 finalSunGlare = lightCol * sunGlare;

		if (isEyeInWater == 1) finalSunGlare *= underwaterColor.rgb * underwaterColor.rgb * 200.0;

		color += finalSunGlare;
	}
	
	return color;
}



vec3 Fog1(vec3 color, float lWorldPos, float lViewPos, vec3 nViewPos, vec3 extra, float NdotU) {
    
		
			float fog = lWorldPos / far * (1.5/1.00);
		
			
		

		fog = 1.0 - exp(-0.1 * pow(fog, 10.0));

		if (fog > 0.0) {
			vec3 artificialFogColor = GetSkyColor(lightCol, NdotU, nViewPos, false);
			artificialFogColor = SunGlare(artificialFogColor, nViewPos, lightCol);
			
				artificialFogColor *= 1.0 - isEyeInCave;
			
			color.rgb = mix(color.rgb, artificialFogColor, fog);
		}
	

    
		
			
		
			
		
        
        
        

		
		
			
		
		
    

    
		
		
		
			
			
				
			
			
		
    

    
		
		

		
		
		
		
			
			
		
			
			
		
		

		
    
	
    
		
		
		
		
		
		
		
		
		
		
    
	
    
		
		

		
			
			
			
		
    
	
	return vec3(color.rgb);
}

vec3 Fog2(vec3 color, float lViewPos, vec3 worldPos) {

    
		
			float altitudeFactor = (worldPos.y + eyeAltitude + 1000.0 - 95) * 0.001;
			if (altitudeFactor > 0.965 && altitudeFactor < 1.0) altitudeFactor = pow(altitudeFactor, 1.0 - (altitudeFactor - 0.965) * 28.57);
			altitudeFactor = clamp(pow(altitudeFactor, 20.0), 0.0, 1.0);
		
		
		//duplicate 307309760
		float fog2 = lViewPos / pow(far, 0.25) * 0.112 * (1.0 + rainStrengthS * 1.00)
					* (1.0 - sunVisibility * 0.25 * (1.0 - rainStrengthS)) / 1.00;
		fog2 = (1.0 - (exp(-50.0 * pow(fog2*0.125, 3.25) * eBS)));
		fog2 *= min(0.30 * (3.0 + rainStrengthS * 3.00 - sunVisibility * 2.0), 1.0);
		
			fog2 *= pow(clamp((eyeAltitude - 95*0.2) / 95, 0.0, 1.0), 2.5 - 0.25 * rainStrengthS * 2.5);
			fog2 *= 1.0 - altitudeFactor * (1.0 - 0.25 * rainStrengthS);
		
		
		float sunVisibility2 = sunVisibility * sunVisibility;
		float sunVisibility4 = sunVisibility2 * sunVisibility2;
		float sunVisibility8 = sunVisibility4 * sunVisibility4;
		float timeBrightness2 = sqrt1(timeBrightness);
		vec3 fogColor2 = mix(lightCol*0.5, skyColor*skyMult*1.25, timeBrightness2);
		fogColor2 = mix(ambientNight*ambientNight, fogColor2, sunVisibility8);
		if (rainStrengthS > 0.0) {
			float rainStrengthS2 = 1.0 - (1.0 - rainStrengthS) * (1.0 - rainStrengthS);
			vec3 rainFogColor = 1.00 * skyColCustom * (0.01 + 0.05 * sunVisibility8 + 0.1 * timeBrightness2);
            rainFogColor *= mix(0.70, 1.00, sunVisibility);
			fogColor2 = mix(fogColor2, rainFogColor, rainStrengthS2);
		}
		fogColor2 *= 1.00;
		
			fogColor2 *= 1.0 - isEyeInCave;
		

		color.rgb = mix(color.rgb, fogColor2, fog2);
    

    
		
		
		
			
			
			
		
		
		
		
		
    
	
    
		
		
		
		
		
		
		
		
    
	
	return vec3(color.rgb);
}

vec3 WaterFog(vec3 color, float lViewPos, float fogrange) {
    float fog = lViewPos / fogrange;
    fog = 1.0 - exp(-3.0 * fog * fog);
	color *= pow(max(underwaterColor.rgb, vec3(0.1)), vec3(0.5)) * 3.0;
    color = mix(color, 0.8 * pow(underwaterColor.rgb * (1.0 - blindFactor), vec3(2.0)), fog);

	return vec3(color.rgb);
}

vec3 LavaFog(vec3 color, float lViewPos) {
	
		float fog = (lViewPos - gl_Fog.start) * gl_Fog.scale;
		fog *= fog;
		fog = 1.0 - exp(- fog);
		fog = clamp(fog, 0.0, 1.0);
	
		
		
		
			
		
	
		
	color.rgb = mix(color.rgb, vec3(0.6, 0.35, 0.15), fog); //duplicate 792763950
	return vec3(color.rgb);
}

vec3 SnowFog(vec3 color, float lViewPos) {
	float fog = lViewPos * 0.3;
	fog = (1.0 - exp(-4.0 * fog * fog * fog));
	color.rgb = mix(color.rgb, vec3(0.1, 0.15, 0.2), fog);

	return vec3(color.rgb);
}

vec3 BlindFog(vec3 color, float lViewPos) {
	float fog = lViewPos *0.04* (5.0 / blindFactor);
	fog = (1.0 - exp(-6.0 * fog * fog * fog)) * blindFactor;
	color.rgb = mix(color.rgb, vec3(0.0), fog);
	
	return vec3(color.rgb);
}

vec3 startFog(vec3 color, vec3 nViewPos, float lViewPos, vec3 worldPos, vec3 extra, float NdotU) {
	
		if (isEyeInWater == 0) {
			
				color.rgb = Fog2(color.rgb, lViewPos, worldPos);
			
			
				color.rgb = Fog1(color.rgb, length(worldPos.xz) * 1.025, lViewPos, nViewPos, extra, NdotU);
			
		}
	
	
	if (blindFactor == 0.0) {
		if (isEyeInWater == 1) color.rgb = WaterFog(color.rgb, lViewPos, waterFog * (1.0 + eBS));
		if (isEyeInWater == 2) color.rgb = LavaFog(color.rgb, lViewPos);
		
			if (isEyeInWater == 3) color.rgb = SnowFog(color.rgb, lViewPos);
		
	} else if (blindFactor > 0.0) color.rgb = BlindFog(color.rgb, lViewPos);
	
	return vec3(color.rgb);
}



							   
							   
							   
							   
							   
							   
							   
							   
							   
							   
							   
							   
							   


	
	

	
	
	

	
		
		
		
		
		
		
	
	
	
	

	

	
		
		
		
		
		
		
	




	
	

	
	
		
		
		              
		
		              
	

	







	
	

	
	
	
	
	
	

	

	
		
		
		
		

		

		
	

	
		
		
	
		
						 
		
	

	
	
	

	
					

	
	
		
		
		
		
		
		
	

	
	
		
	
    
	
		
	
    
    






    
    



    
    
    
    
    
    
    


    



    



	



	
	

	
		
	

	
    
    
	

    

    
        
		

		
        
		

        
		
		
		
                
                
				
                
		
        
        
		
    

	


    
    
    
    
    
    
    
    
    



    
    
    
    
    
    
    
    
    



    
    
    
    

    
    
    

    
    
    
     
    
    
    
    
    
    

    


                  
    

	

	
		
			
			
		
		
			
			
		
		
	
		
			
			
		
			
			
		
	

	

	


    

    
	
	
	
		
			
			
		
			
		

		
		
			
			
		
			
			
				
				
			
		
		
		
		
	
	
	
    



//Program//
void main() {
    vec4 color = texture2D(colortex0, texCoord);
	float z    = texture2D(depthtex0, texCoord).r;

	
		
		
	

	float dither = Bayer64(gl_FragCoord.xy);
	
	vec4 screenPos = vec4(texCoord, z, 1.0);
	vec4 viewPos = gbufferProjectionInverse * (screenPos * 2.0 - 1.0);
	viewPos /= viewPos.w;

	
		
	
	
		
		
		
		
		
		
	

	if (z < 1.0) {
		
			float skymapMod = texture2D(colortex3, texCoord).b;
			// skymapMod = 1.0            = Glowing Status Effect
			// skymapMod = 0.995          = Versatile Selection Outline
			// skymapMod = 0.515 ... 0.99 = Cauldron
			// skymapMod = 0.51           = No SSAO
			// skymapMod = 0.0   ... 0.5  = Rain Puddles
			// skymapMod = 0.0   ... 0.1  = Specular Sky Reflections
		

		vec3 nViewPos = normalize(viewPos.xyz);
		float NdotU = dot(nViewPos, upVec);
		float lViewPos = length(viewPos.xyz);
		vec3 worldPos = ViewToWorld(viewPos.xyz);
	
		
			float ao = clamp(GetAmbientOcclusion(z), 0.0, 1.0);
			float ambientOcclusion = ao;
		

		
			
				
			
		

		
			
			

			

			
			
			
			
			

			
			

			
				
					
					
				
				
				
				
			
				
					
					
				
				
					
					
						
						
					
					
				
			

			
			

			
				
				

				
					
					
						
					
					

					
					
					
					
					
					

					
					

					
						
						
						
					
				
					
				

				
				
					
						

						
						
							
						
							
						
							
						
						

						
						
						
						

						
							
						
						
							
							
							
						
						
					
					
						
					
					
						
						
						
							
							
							
							
							
							
						
						
					
				
				
					
						

						
						
						
						

						
							
							
							
						
						
					
					
						
						
						
						
						
						
					
				

				
				
				
					
				
				
				
							

				
					
					
					
					
				
			
		
		
		
			if (skymapMod > 0.9975) {
				vec2 glowOutlineOffsets[8] = vec2[8](
									vec2(-1.0, 0.0),
									vec2( 0.0, 1.0),
									vec2( 1.0, 0.0),
									vec2( 0.0,-1.0),
									vec2(-1.0,-1.0),
									vec2(-1.0, 1.0),
									vec2( 1.0,-1.0),
									vec2( 1.0, 1.0)
									);

				float outline = 0.0;

				for(int i = 0; i < 64; i++) {
					vec2 offset = vec2(0.0);
					offset = glowOutlineOffsets[i-8*int(i/8)] * 0.00025 * (int(i/8)+1);
					outline += clamp(1.0 - texture2D(colortex3, texCoord + offset).b, 0.0, 1.0);
				}
				
				color.rgb += outline * vec3(0.05);
			}
		
		
		
			if (skymapMod < 0.505)
			color.rgb *= ambientOcclusion;
		
		
		
			
		

		vec3 extra = vec3(0.0);
		
			
		
		
			
		

		color.rgb = startFog(color.rgb, nViewPos, lViewPos, worldPos, extra, NdotU);
	
	} else { /**/ /**/ /**/ /**/ /**/ /**/ /**/ /**/ /**/ /**/ /**/ /**/ /**/ /**/ /**/ /**/ /**/ /**/ /**/ /**/ /**/ /**/ /**/ /**/
		float NdotU = 0.0;

		vec2 skyBlurOffset[4] = vec2[4](vec2( 0.0,  1.0),
										vec2( 0.0, -1.0),
										vec2( 1.0,  0.0),
										vec2(-1.0,  0.0));
		vec2 wh = vec2(viewWidth, viewHeight);
		vec3 skyBlurColor = color.rgb;
		for(int i = 0; i < 4; i++) {
			vec2 texCoordM = texCoord + skyBlurOffset[i] / wh;
			float depth = texture2D(depthtex0, texCoordM).r;
			if (depth == 1.0) skyBlurColor += texture2DLod(colortex0, texCoordM, 0.0).rgb;
			else skyBlurColor += color.rgb;
		}
		color.rgb = skyBlurColor / 5.0;

		
			
			
				
			
		

		
			
				
				
			
		

		
			
		
		
		
			

			
			

			
				
			

			

			
				
				
			
		
		
		
			
			
			
				
				
			
				
				
			
			
		

		if (isEyeInWater == 1) {
			NdotU = max(dot(normalize(viewPos.xyz), upVec), 0.0);
			color.rgb = mix(color.rgb, 0.8 * pow(underwaterColor.rgb * (1.0 - blindFactor), vec3(2.0)), 1.0 - NdotU*NdotU);
		}
		if (isEyeInWater == 2) color.rgb = vec3(0.6, 0.35, 0.15); //duplicate 792763950
		if (blindFactor > 0.0) color.rgb *= 1.0 - blindFactor;
	}
    
	
		
		
	

	
		
		
		
		

		
		    
		
	
	
	/*DRAWBUFFERS:05*/
    gl_FragData[0] = color;
	gl_FragData[1] = vec4(pow(color.rgb, vec3(0.125)) * 0.5, 1.0);

	
	
	
	
}



//////////Vertex Shader//////////Vertex Shader//////////Vertex Shader//////////








	

	
		
	
		
	




	
	
	

	
	
	
	

	

