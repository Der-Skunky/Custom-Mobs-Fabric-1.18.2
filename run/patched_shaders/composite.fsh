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
uniform float blindFactor;
uniform float far, near;
uniform float frameTimeCounter;
uniform float rainStrengthS;
uniform float screenBrightness; 
uniform float viewWidth, viewHeight, aspectRatio;
uniform float eyeAltitude;

uniform ivec2 eyeBrightnessSmooth;

uniform vec3 cameraPosition;
uniform vec3 fogColor;
uniform vec3 skyColor;

uniform mat4 gbufferProjection, gbufferProjectionInverse;
uniform mat4 gbufferModelViewInverse;
uniform mat4 shadowModelView;
uniform mat4 shadowProjection;

uniform sampler2D colortex0;
uniform sampler2D colortex1;
uniform sampler2D depthtex0;
uniform sampler2D depthtex1;


	
	
	



	uniform float rainStrength;
	uniform float wetness;
	uniform float isDry, isRainy, isSnowy;



	uniform sampler2D noisetex;



	


//Optifine Constants//
const bool colortex2Clear = false;

//Common Variables//
float eBS = eyeBrightnessSmooth.y / 240.0;
float sunVisibility = clamp(dot( sunVec,upVec) + 0.0625, 0.0, 0.125) * 8.0;
float vsBrightness = clamp(screenBrightness, 0.0, 1.0);







float modifiedWorldDay = mod(worldDay, 100.0) + 5.0;
float frametime = frameTimeCounter * 1.00;
float cloudtime = (worldTime + modifiedWorldDay * 24000) * 0.05 * 1.00;






vec3 lightVec = sunVec * (1.0 - 2.0 * float(timeAngle > 0.5325 && timeAngle < 0.9675));

//Common Functions//
float GetLuminance(vec3 color) {
	return dot(color,vec3(0.299, 0.587, 0.114));
}

float GetLinearDepth(float depth) {
   return (2.0 * near) / (far + near - depth * (far - near));
}


	
		
	

	
		
	


//Includes//

    vec4 underwaterColor = vec4(pow(fogColor, vec3(0.33, 0.21, 0.26)) * 1.00 * 0.2, 1.0);

    


vec4 waterColorSqrt = vec4(172, 212, 255, 255.0) * 0.50 / 255.0;
vec4 waterColor = waterColorSqrt * waterColorSqrt;

const float waterFog = 64.0;

const float waterAlpha = 0.50;
vec3 sky_ColorSqrt = vec3(136.0, 172.0, 236.0) * 1.10 / 255.0;
vec3 skyColCustom = sky_ColorSqrt * sky_ColorSqrt;

vec3 skyMult = vec3(255, 255, 255) * 1.00 / 255.0;
//Thanks to Jessie for dithering
float Bayer2  (vec2 c) { c = 0.5 * floor(c); return fract(1.5 * fract(c.y) + c.x); }
float Bayer4  (vec2 c) { return 0.25 * Bayer2  (0.5 * c) + Bayer2(c); }
float Bayer8  (vec2 c) { return 0.25 * Bayer4  (0.5 * c) + Bayer2(c); }
float Bayer16 (vec2 c) { return 0.25 * Bayer8  (0.5 * c) + Bayer2(c); }
float Bayer32 (vec2 c) { return 0.25 * Bayer16 (0.5 * c) + Bayer2(c); }
float Bayer64 (vec2 c) { return 0.25 * Bayer32 (0.5 * c) + Bayer2(c); }
float Bayer128(vec2 c) { return 0.25 * Bayer64 (0.5 * c) + Bayer2(c); }
float Bayer256(vec2 c) { return 0.25 * Bayer128(0.5 * c) + Bayer2(c); }
//Water fog is now located in multiple programs in different forms. I will put all of them here when I feel like it.
//Update: It's been multiple months and I'm still feeling too lazy to do it.






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


	

	
	
	
	
	
	
	
	

	
	


	
	
	
	
	
	

	
		  
		  
	

	

	
	
	

	



	
	

	
	
	
	
	
	
	
	
	
	
	
		
			
			
			
			
		
	
	
	




	

	
		
	
	
	
		
		

		

		
			
			

			
			
		
			
			

			
			
		
		
			
		
	
	
	
		
	

	
		
			
		
			
			
		
		
		
		
		
		
		

		
			
		
			

			

			
			
			
			
			
			

			
			
				
			
		

		
			
		
			

			
				
				
					
					
				
				
			
				
				
			
			
			
				
					
					
						
					
						
					
					
					
					
				
			
			
				
					
					
					
					
					
				
			
		

		
			
				
			
				
				
				
					
				
					
				
				
			

			
			

			

			
			

			
				
			
				

				
					
					
				
					
						
							
						
							

							
						
					
						
						

						
							
						

						
					
				
			
				
			
		
		

		
		
			
				
					
					
				
			
				
					
					
				
			
		

		
		
	

	
		
	
	
	





    

    
    
    

    
    
    

    
         
    
    
	
    

    
    
    
    
    

    
    
        

        

        
        
        
        
        

		
        
        
        
            
            
            
            
            
        

        
        
        
        
        
        
        
        
        
        
        
        
    

    
    
    

    




	

    
    
    
    

    
    
    

    

    
    

    
        
    

    
    
    
    
    
    

    
    
    
    
	
	
    
    
    
    
    
    

    
    
    
    
    

    
    
    
	
        
        
        
        
        
    

    
    
    
    
    
	
    

    

    

	
	

	
		
		
		
		
		
	

	
		
		
		
		
		
			
			
				
			
			
				
			
			
		
		
								
								
								

		
	

	
		
		
		
			
		

		
		
		
		
		
		
		
		

		
		
		

		
			
		
			
		
		
		
		
			
		

		

		
		

		
			
			
				
				
				
				
				
				
				
				
				
				
				
					  
					  
				
				
									
									
				
				
				
				
			

			
			
			
				
				
				
				
				
				
			

            
            

            
            
            
            
            

            

            
            
            
            
            
			
			
            	
			
            	
			
            

            

			
		

		
	

	
		
			
				  

			
		

		
			
				
			
			
			
			
			

			
				
			
			
				
			

			
				
			
				
			

			

			

			
			
			

			
				
				
					
					

					
						

					
						
						
						
						

						
										
										
										

						
					
					
				
			

			

			
		
	



	
		
	

	
		
		
		
		
			
		
		
		
		
		
		
		
			
		
		
		
		
			
			
			
		
		
		
		

		
	



	
		
	

	
		
			  

		
	

	
		

		
		
		

		
			
		

		
		
		

		
			
		
			
		

		

		

		
		
		
		
		
		

		
		

		
		
			
			
		

		
			
			

			
					

			
				
				
				
				
				

				
				
				

				
			
			
		

		
		
		
		
		
		
		
		
		
		
		
		

		
			
			
		

		
	



	
		
				

		
	

	
		

		
			
		

		
		
		

		
			
		
			
		

		

		

		
		

		
		
			
			

			
					

			
				
				
				
				
				

				
				

				
			
			
		

		
	

	




	
	
		
		
		
		
		

		
		
		

		

		
		
		

		

		

		
	
	
	





    
		
			
		
			
		

		

		
			
			
			
				
			
			
		
	

    
		
			
		
			
		
        
        
        

		
		
			
		
		
    

    
		
		
		
			
			
				
			
			
		
    

    
		
		

		
		
		
		
			
			
		
			
			
		
		

		
    
	
    
		
		
		
		
		
		
		
		
		
		
    
	
    
		
		

		
			
			
			
		
    
	
	




    
		
			
			
			
		
		
		
		
					
		
		
		
			
			
		
		
		
		
		
		
		
		
		
			
			
            
			
		
		
		
			
		

		
    

    
		
		
		
			
			
			
		
		
		
		
		
    
	
    
		
		
		
		
		
		
		
		
    
	
	



    
    
	
    

	



	
		
		
		
		
	
		
		
		
			
		
	
		
	
	



	
	
	

	



	
	
	
	
	



	
		
			
				
			
			
				
			
		
	
	
	
		
		
		
			
		
	
	
	







	
	

	
	
	
	
	
	

	

	
		
		
		
		

		

		
	

	
		
		
	
		
						 
		
	

	
	
	

	
					

	
	
		
		
		
		
		
		
	

	
	
		
	
    
	
		
	
    
    












							   
							   
							   
							   
							   
							   
							   
							   
							   
							   
							   
							   
							   


	
	

	
	
	

	
		
		
		
		
		
		
	
	
	
	

	

	
		
		
		
		
		
		
	




	
	

	
	
		
		
		              
		
		              
	

	



//Program//
void main() {
    vec4 color = texture2D(colortex0, texCoord.xy);
    vec3 translucent = texture2D(colortex1,texCoord.xy).rgb;
	float z0 = texture2D(depthtex0, texCoord.xy).r;
	float z1 = texture2D(depthtex1, texCoord.xy).r;
	bool water = false;

	if (translucent.b > 0.999 && z1 > z0) {
		water = true;
		translucent = vec3(1.0);
	}

	
		vec4 viewPos = gbufferProjectionInverse * (vec4(texCoord, z0, 1.0) * 2.0 - 1.0);
		viewPos /= viewPos.w;
	

	
		
			
			
			
			
			

			

			
			
			
			
			
			
			
			
			

			
			
			
			
			
			
			
				
					
					
						
						
						
						
					
				
			
		
	
    
	
		float dither = Bayer64(gl_FragCoord.xy);
	

	
		
		
		
			
	
	
	
		
	

	if (isEyeInWater == 1 && z0 == 1.0) {
		color.rgb = 0.8 * pow(underwaterColor.rgb * (1.0 - blindFactor), vec3(2.0));
	}

	if (isEyeInWater == 2) color.rgb *= vec3(2.0, 0.4, 0.02);

	
		
			vec3 nViewPos = normalize(viewPos.xyz);
			float cosS = dot(nViewPos, lightVec);
		
			
		
	

	vec3 vl = vec3(0.0);
	vec4 clouds = vec4(0.0);
	
		
		
		
		
		
			
		
		
			
		
	

	
float rainbowTime = sqrt3(max(pow2(pow2(sunVisibility * shadowFade)) - timeBrightness * 2.5, 0.0));

    rainbowTime *= sqrt3(max(wetness - 0.1, 0.0) * (1.0 - rainStrength) * (1.0 - rainStrengthS)) * isRainy;


if (rainbowTime > 0.001) {
    float rainbowDistance = max(far, 256.0) * 0.25;
    float rainbowLength = max(far, 256.0) * 0.75;

    vec3 rainbowTranslucent = translucent;
    if (water) rainbowTranslucent = vec3(float(isEyeInWater == 1));
    
    vec4 viewPosZ1 = gbufferProjectionInverse * (vec4(texCoord, z1, 1.0) * 2.0 - 1.0);
    viewPosZ1 /= viewPosZ1.w;
    float lViewPosZ1 = length(viewPosZ1.xyz);
    float lViewPosZ0 = length(viewPos.xyz);
    
    float rainbowCoord = 1.0 - (cosS + 0.75) / (0.0625 * 1.00);
    
    float rainbowFactor = clamp(1.0 - rainbowCoord, 0.0, 1.0) * clamp(rainbowCoord, 0.0, 1.0);
          rainbowFactor *= rainbowFactor * (3.0 - 2.0 * rainbowFactor);
          rainbowFactor *= min(max(lViewPosZ1 - rainbowDistance, 0.0) / rainbowLength, 1.0);
          rainbowFactor *= rainbowTime;
        
          rainbowFactor *= 1.0 - isEyeInCave;
        

    if (rainbowFactor > 0.0) {
        
            float rainbowCoordM = pow(rainbowCoord, 1.4 + max(rainbowCoord - 0.5, 0.0) * 1.6);
            rainbowCoordM = smoothstep(0.0, 1.0, rainbowCoordM) * 0.85;
            rainbowCoordM += (dither - 0.5) * 0.1;
            vec3 rainbow = clamp(abs(mod(rainbowCoordM * 6.0 + vec3(-0.55,4.3,2.2) ,6.0)-3.0)-1.0, 0.0, 1.0);
                rainbowCoordM += 0.1;
                rainbow += clamp(abs(mod(rainbowCoordM * 6.0 + vec3(-0.55,4.3,2.2) ,6.0)-3.0)-1.0, 0.0, 1.0);
                rainbowCoordM -= 0.2;
                rainbow += clamp(abs(mod(rainbowCoordM * 6.0 + vec3(-0.55,4.3,2.2) ,6.0)-3.0)-1.0, 0.0, 1.0);
                rainbow /= 3.0;
            rainbow.r += pow2(max(rainbowCoord - 0.5, 0.0)) * (max(1.0 - rainbowCoord, 0.0)) * 26.0;
            rainbow = pow(rainbow, vec3(2.2)) * vec3(0.25, 0.075, 0.25) * 3.0;
        
            
            
            
            
            
        

        if (z1 > z0 && lViewPosZ0 < rainbowDistance + rainbowLength)
        rainbow *= mix(rainbowTranslucent, vec3(1.0),
                    clamp((lViewPosZ0 - rainbowDistance) / rainbowLength, 0.0, 1.0)
                    );
        if (isEyeInWater == 1) rainbow *= float(water) * 0.05;

        color.rgb += rainbow * rainbowFactor;
    }
}
	

	
		
			
			
			
			
			
		
	
	
    /*DRAWBUFFERS:01*/
	gl_FragData[0] = color;
	gl_FragData[1] = vec4(vl, 1.0);

	
    
	
	
}



//////////Vertex Shader//////////Vertex Shader//////////Vertex Shader//////////








	

	
		
	
		
	




	
	
	

	
	
	
	

	

