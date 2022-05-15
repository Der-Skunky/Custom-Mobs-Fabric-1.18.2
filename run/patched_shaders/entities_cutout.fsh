#version 150 core
#extension  GL_ARB_shader_texture_lod : enable





















































































































































































































































































































































































































































#define gl_FogFragCoord iris_FogFragCoord
#define gl_FragData iris_FragData
#define varying in
#define gl_ProjectionMatrix iris_ProjMat
#define gl_Color (iris_Color * iris_ColorModulator)
#define gl_NormalMatrix mat3(transpose(inverse(gl_ModelViewMatrix)))
#define gl_ModelViewMatrix (iris_ModelViewMat * _iris_internal_translate(iris_ChunkOffset))
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
uniform mat4 iris_ProjMat;
uniform vec4 iris_ColorModulator;
uniform mat4 iris_LightmapTextureMatrix;
uniform mat4 iris_TextureMat;
uniform mat4 iris_ModelViewMat;
uniform vec3 iris_ChunkOffset;
mat4 _iris_internal_translate(vec3 offset) {
    // NB: Column-major order
    return mat4(1.0, 0.0, 0.0, 0.0,
                0.0, 1.0, 0.0, 0.0,
                0.0, 0.0, 1.0, 0.0,
                offset.x, offset.y, offset.z, 1.0);
}
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
varying vec2 texCoord, lmCoord;

varying vec3 normal;
varying vec3 sunVec, upVec;

varying vec4 color;


	
		
		
	

	

	
		
	

	
		
	


//////////Fragment Shader//////////Fragment Shader//////////Fragment Shader//////////


//Uniforms//
uniform int entityId;
uniform int frameCounter;
uniform int isEyeInWater;
uniform int moonPhase;



	uniform int heldItemId, heldItemId2;

	uniform int heldBlockLightValue;
	uniform int heldBlockLightValue2;


uniform float frameTimeCounter;
uniform float nightVision;
uniform float rainStrengthS;
uniform float screenBrightness; 
uniform float viewWidth, viewHeight;

uniform ivec2 eyeBrightnessSmooth;
uniform ivec2 atlasSize;

uniform vec3 fogColor;
uniform vec3 cameraPosition;

in vec4 entityColor;

uniform mat4 gbufferProjectionInverse;
uniform mat4 gbufferModelViewInverse;
uniform mat4 shadowProjection;
uniform mat4 shadowModelView;

uniform sampler2D texture;


uniform sampler2D noisetex;











//Common Variables//
float eBS = eyeBrightnessSmooth.y / 240.0;
float sunVisibility = clamp(dot( sunVec,upVec) + 0.0625, 0.0, 0.125) * 8.0;
float vsBrightness = clamp(screenBrightness, 0.0, 1.0);


	

	float frametime = frameTimeCounter * 1.00;



	
	



	vec3 lightVec = sunVec * ((timeAngle < 0.5325 || timeAngle > 0.9675) ? 1.0 : -1.0);

	


//Common Functions//
float GetLuminance(vec3 color) {
	return dot(color,vec3(0.299, 0.587, 0.114));
}

float InterleavedGradientNoise() {
	float n = 52.9829189 * fract(0.06711056 * gl_FragCoord.x + 0.00583715 * gl_FragCoord.y);
	return fract(n + frameCounter / 8.0);
}
 
//Includes//

vec3 blocklightColSqrt = vec3(224, 172, 140) * 0.45 / 255.0;
vec3 blocklightCol = blocklightColSqrt * blocklightColSqrt;










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




    vec4 underwaterColor = vec4(pow(fogColor, vec3(0.33, 0.21, 0.26)) * 1.00 * 0.2, 1.0);

    


vec4 waterColorSqrt = vec4(172, 212, 255, 255.0) * 0.50 / 255.0;
vec4 waterColor = waterColorSqrt * waterColorSqrt;

const float waterFog = 64.0;

const float waterAlpha = 0.50;




	














                                    
                                    
                                    
                                    
                                    
                                    
                                    


	
    



    

    
        
        
            
            
                
                    
                
                
                    
                
            
        

        
    
        
    



    

    
        
    

    



    
    
    
    

    
        
        
        
    
    
    



    
        
            
        
            
        
    
       
    

    


	
		
		
		
	



float waterH(vec3 pos) {
	float noise = 0;
	vec2 wind = vec2(frametime) * 0.25 * 1.25;
	float yFactor = 0.5;
	noise+= texture2D(noisetex,(pos.xz + wind - pos.y * yFactor) / 1024.0 * 1.1).r * 1.0;
	noise+= texture2D(noisetex,(pos.xz - wind - pos.y * yFactor) / 1024.0 * 1.5).r * 0.8;
	noise-= texture2D(noisetex,(pos.xz + wind + pos.y * yFactor) / 1024.0 * 2.5).r * 0.6;
	noise+= texture2D(noisetex,(pos.xz - wind - pos.y * yFactor) / 1024.0 * 5.0).r * 0.4;
	noise-= texture2D(noisetex,(pos.xz + wind + pos.y * yFactor) / 1024.0 * 8.0).r * 0.2;

	return noise;
	}

float getCausticWaves(vec3 pos) {
	float deltaPos = 0.1;
	float caustic_h0 = waterH(pos);
	float caustic_h1 = waterH(pos + vec3( deltaPos, 0.0,  0.0));
	float caustic_h2 = waterH(pos + vec3(-deltaPos, 0.0,  0.0));
	float caustic_h3 = waterH(pos + vec3( 0.0,      0.0,  deltaPos));
	float caustic_h4 = waterH(pos + vec3( 0.0,      0.0, -deltaPos));

	float caustic = max((1.0-abs(0.5-caustic_h0))*(1.0-(abs(caustic_h1-caustic_h2)+abs(caustic_h3-caustic_h4))),0.0);
		  caustic = max(pow(caustic,3.5),0.0)*2.0;
		  
	return caustic;
}


float GetFakeShadow(float skyLight) {
	float fakeShadow = 0.0;

	
		if (isEyeInWater == 0) skyLight = pow(skyLight, 30.0);
		fakeShadow = skyLight;
	
		
			
		
			
		
	

	return fakeShadow;
}

void GetLighting(inout vec3 albedo, inout vec3 shadow, inout vec3 lightAlbedo, vec3 viewPos, float lViewPos, vec3 worldPos,
                 vec2 lightmap, float smoothLighting, float NdotL, float quarterNdotU,
                 float parallaxShadow, float emissive, float subsurface, float leaves, float materialAO) {
	vec3 fullShadow = vec3(0.0);
	float fullShadow1 = 0.0;
	float fakeShadow = 0.0;
	float shadowMult = 1.0;
	float shadowTime = 1.0;
	float water = 0.0;
	
	
		
	

    
		
			
			
				
				
				

				
					
				

				
					
					
					
					

					
								 
					
					
				

				
					
						
						
						
						
					

					
						
						
					
						
					

					
					
					
					
					
					
					
					

					
						
							
							
							
						
						
					
					

					
						
					

					
					

					
						
							
							
							
							
						
						
							
								
							
						
					
				

				
				
					
					
					
					
					
					
					
					
				

				
					
						
						
						
						
					
				
			
		
			shadow = vec3(GetFakeShadow(lightmap.y));
		
		
		
			
			
			
			
			
			
			
			
		

		
			
				
				
				
			
		
		
		fullShadow = shadow * max(NdotL, subsurface * (1.0 - max(rainStrengthS, (1.0 - sunVisibility)) * 0.40));

		fullShadow1 = (fullShadow.r + fullShadow.g + fullShadow.b) / 3.0;

		
			
		

		
			shadowMult = 1.0 * (1.0 - 0.95 * rainStrengthS);
			
			shadowTime = abs(sunVisibility - 0.5) * 2.0;
			shadowTime *= shadowTime;
			shadowMult *= shadowTime * shadowTime;
			
			
				
			
				if (isEyeInWater == 1) ambientCol *= pow(lightmap.y, 2.5);
			
			
			vec3 lightingCol = pow(lightCol, vec3(1.0 + sunVisibility * 2.0 - timeBrightness));
			
				
			
				lightingCol *= (1.0 + 0.4 * leaves);
			
			vec3 shadowDecider = fullShadow * shadowMult;
			if (isEyeInWater == 1) shadowDecider *= pow(min(lightmap.y * 1.03, 1.0), 200.0);
			ambientCol *= 1.00;
			lightingCol *= 1.00;
			vec3 sceneLighting = mix(ambientCol, lightingCol, shadowDecider);
			
			
				if (isEyeInWater == 0) sceneLighting *= pow(lightmap.y, 2.5);
			
		

		
			
			
			
			
			
		

		
			
				
			
				
			
		
		
		
			
		
		
			
		
		
			
		
		
		
			
				
				
				
				
				
			
		
    
		
			
				
			
		
			
				
			
				
			
		
			
		
    

	
		float handLight = min(float(heldBlockLightValue2 + heldBlockLightValue), 15.0) / 15.0;

		if (heldItemId == 12001 || heldItemId2 == 12001) // Lava Bucket
			
				
			
				handLight = 1.0;
			
		if (heldItemId == 12002 || heldItemId2 == 12002) // Optifine Item Emissives
			handLight = min(handLight + 0.65, 1.0);

		float handLightFactor = 1.0 - min(14.0 * handLight, lViewPos) / (14.0 * handLight);
		
			
		
		
			
		
		float finalHandLight = handLight * handLightFactor;
		lightmap.x = max(finalHandLight * 0.95, lightmap.x);
	

	float lightmapX2 = lightmap.x * lightmap.x;
	float lightmapXM1 = pow2(pow2(lightmapX2)) * lightmapX2;
	float lightmapXM2 = max((lightmap.x - 0.05) * 0.925, 0.0);
	float newLightmap = mix(lightmapXM1 * 5.0 + lightmapXM2, lightmapXM1 * 4.0 + lightmapXM2 * 1.5, vsBrightness);

	
		
		
					
					
					
		
	

	
		
		
		
		
		
	

	
		
			
				
					
				
				
					
					
					
					
					
				
				
					
				
				
					
				
				
					
				
			
			
		

		
		

		

		




















    
        
            
        
            
        
            
    
        
            
        
            
        
            
        
            
    

    
        
            
        
            
        
            
        
            
    
        
            
        
            
        
            
        
            
    


    
        
            
        
            
        
            
    
        
            
        
            
        
            
        
            
    

    
        
            
        
            
        
            
        
            
    
        
            
        
            
        
            
        
            
    





    
    
    
    


		
	

    vec3 blockLighting = blocklightCol * newLightmap * newLightmap;

	vec3 minLighting = vec3(0.000000000001 + (32 * 0.0035 * (vsBrightness*0.0775 + 0.0125)));
	
		minLighting *= (1.0 - eBS);
	
	
		
	
	
	float shade = pow(quarterNdotU, 0.85);

	vec3 emissiveLighting = albedo.rgb * emissive * 20.0 / shade * 1.00;

    float nightVisionLighting = nightVision * 0.25;

	if (smoothLighting > 0.01) {
		smoothLighting = clamp(smoothLighting, 0.0, 1.0);
		
			smoothLighting *= smoothLighting;
		
			
		
	} else smoothLighting = 1.0;

	if (materialAO < 1.0) {
		smoothLighting *= pow(materialAO, max(1.0 - shadowTime * length(shadow) * NdotL - lmCoord.x, 0.0));
	}

    albedo *= sceneLighting + blockLighting + emissiveLighting + nightVisionLighting + minLighting;
	albedo *= shade;
	albedo *= smoothLighting;

	
		
		
		
		if ((isEyeInWater != 0 && isEyeInWater != 2 && isEyeInWater != 3)) {
		// Not just doing (isEyeInWater == 1) to fix caustics appearing in shadows on AMD Mesa with Iris
		
			vec3 albedoCaustic = albedo;

			float skyLightMap = lightmap.y * lightmap.y * (3.0 - 2.0 * lightmap.y);
			float skyLightMapA = pow2(pow2((1.0 - skyLightMap)));
			float skyLightMapB = skyLightMap > 0.98 ? (1.0 - skyLightMap) * 50.0 : 1.0;
			
			float causticfactor = 1.0 - lightmap.x * 0.8;

			vec3 causticpos = worldPos.xyz + cameraPosition.xyz;
			float caustic = getCausticWaves(causticpos);
			vec3 causticcol = underwaterColor.rgb / 1.00;
			
			
				
					
					

					
					
						
						
					
						
						
					
				
			
					causticfactor *= shadow.g * sqrt2(NdotL) * (1.0 - rainStrengthS);
					causticfactor *= 0.25 - 0.15 * skyLightMapA;
					causticfactor *= skyLightMapB;

					albedoCaustic = (albedo.rgb + albedo.rgb * underwaterColor.rgb * 16.0) * 0.225;
					
						
					
					albedoCaustic += albedo.rgb * underwaterColor.rgb * caustic * sqrt1(lightmap.x) * 4.0 * skyLightMapB;
					causticcol = sqrt(causticcol) * 30.0;
			
				
			

			vec3 lightcaustic = caustic * causticfactor * causticcol * 1.00;
			albedoCaustic *= 1.0 + lightcaustic;

			
				
				
			
				albedo = albedoCaustic;
			
		}
	

	
		
		
	
}




    
    



    
    
    
    
    
    
    



    
    
    
    
        

    
    
    

    
    
    
    
    
    
    
                   
    
    
    
    
    
    
    
    
    
    
    



    
        
    
    

    



    
    
    
    
    
    

    
    
    
    
    
    
    
    
    

    
    
    

    
    
    

    
    

    




    

    
    
    

    
    
    

    
    
    
    
    
    
    
    

    
    
    

    
    
    
    
    
    

    
        
        
    

    



    

    
    
    
    
    
    
    
    
    



                          
    

    
        
    

    
                         
    

    
        
    
    
    
	
	
		
	
		
            
                
                
            
		
		    
		
	

    




                  
                  
	
		
			
		
			
		
	
		
	

	
		

		
		
		
	
	
	
		
		
		
		
		

		

		

		
			
		
	
		

		
		
		
	
		
			
		
			
		
		

		
		
		
			
			
			
				
				
				
			
				
				
			
		
	
	
	
	
	
	





    
	



    
    
	
    
        
		
        
        

        
            
                                
            
            
                
            
            
                
                
                    
                    
                        
                    
                
            
            
        
    



    
    
    

    
        
            
        
            
        

        
            
            
            
            
            

            
                
            

            
                
                
                                     
                
                
                    
                
                
                
            
            
            
        
    

    




//Program//
void irisMain() {
    vec4 albedo = texture2D(texture, texCoord) * color;
	
	vec3 newNormal = normal;
	
	float smoothness = 0.0, metalData = 0.0, metalness = 0.0, f0 = 0.0, skymapMod = 0.0;
	vec3 rawAlbedo = vec3(0.0);
	vec4 normalMap = vec4(0.0, 0.0, 1.0, 1.0);

	float itemFrameOrPainting = float(entityId == 18);

	
		
			
		
		
		
			
			
			
		
		
		
			
				
				
			
		
	
	
	
		float emissive = float(entityColor.a > 0.05) * 0.01;
	
		
	

	
		if (entityId == 10101) {
			albedo = vec4(0.8, 0.85, 0.9, 1.0);
			emissive = 0.25;
		}
	

	
		float albedocheck = albedo.a;
	
		
	

	if (albedocheck > 0.00001) {
		if (albedo.a > 0.99) albedo.a = 1.0;

		vec2 lightmap = lmCoord;

		vec3 screenPos = vec3(gl_FragCoord.xy / vec2(viewWidth, viewHeight), gl_FragCoord.z);
		vec3 viewPos = ScreenToView(screenPos);
		vec3 worldPos = ViewToWorld(viewPos);
		float lViewPos = length(viewPos.xyz);
		float lViewPosToLight = lViewPos;

		float ao = 1.0;
		
			
				
			
			
				
			
			
				
					
					
					
					
				
				
					
				
				
					
				
			
				
					
				
				
					
				
				
					
				
			
			
			
				
					
				
				
					
						
						
						
					
				
				
					
				
			
				
					
				
				
					
				
				
					
				
				
					
					
					
					
					

					
						
							
							
							
							
						
					
				
			
			
			
			

			
				
					
				
			
			
			
				
									  
									  

				
					
			
		

		
			if (entityColor.a > 0.001) {
				albedo.rgb = mix(albedo.rgb, entityColor.rgb, entityColor.a);
			}
		

    	albedo.rgb = pow(albedo.rgb, vec3(2.2));

		
			
		

		float NdotL = clamp(dot(newNormal, lightVec) * 1.01 - 0.01, 0.0, 1.0);

		if (itemFrameOrPainting > 0.5) {
			if (atlasSize.x < 5.0) { // Item Frame Map
				lightmap = clamp(lightmap, vec2(0.0), vec2(0.875, 1.0));
				skymapMod = 0.51;
				lViewPosToLight += 14.0 / 14.0;
				newNormal = upVec;
				NdotL = 0.5;
			}
		}

		
			
		

		float quarterNdotU = clamp(0.25 * dot(newNormal, upVec) + 0.75, 0.5, 1.0);
			  quarterNdotU*= quarterNdotU;

		float parallaxShadow = 1.0;
		float materialAO = 1.0;
		
			
			
				
				
					
				
			
				
				
			

			
			
				
					
				
				
					
				
				
				
					
					
				
			
		
		
		vec3 shadow = vec3(0.0);
		vec3 lightAlbedo = vec3(0.0);
		GetLighting(albedo.rgb, shadow, lightAlbedo, viewPos, lViewPosToLight, worldPos, lightmap, 1.0, NdotL, quarterNdotU,
				    parallaxShadow, emissive, 0.0, 0.0, materialAO);

		
			
				
					
					
					
					
												
												
					
						
					
					

					
						
						
							
						
							
						
							
						
						
					
				
				
					
				
				
				
					
													
					
						
					
					
						
						
					
					
				
			

			
				
			
		

		
			
			
		
	} else {
	
	}

	
		
	

    /* DRAWBUFFERS:037 */
    gl_FragData[0] = albedo;
	gl_FragData[1] = vec4(smoothness, metalData, skymapMod, 1.0);
	gl_FragData[2] = vec4(1.0);

	
	
    
	
	
}



//////////Vertex Shader//////////Vertex Shader//////////Vertex Shader//////////



















	

	



	

	
		
	
		
	





    
        
        
            
        
    
        
        
            
        
    
        
        
            
        
    

    





	
    
	
	
	

	

	
		
			
			
			
			
				
									  
									  
			
				
				
			
		

		
		
		

		
			
			
		
	
    
	

	
	
	
	

	

    
		
		
		
	
		
    

	
		
			
				
				
				
				
					
				
			
		
	

	
		
	

void main() {
    irisMain();

    if (!(gl_FragData[0].a > 0.1)) {
        discard;
    }
}
