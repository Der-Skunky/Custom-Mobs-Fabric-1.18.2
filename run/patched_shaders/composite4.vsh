#version 150 core
#define gl_FogFragCoord iris_FogFragCoord
#define gl_FrontColor iris_FrontColor
#define attribute in
#define varying out
#define gl_ProjectionMatrix mat4(vec4(2.0, 0.0, 0.0, 0.0), vec4(0.0, 2.0, 0.0, 0.0), vec4(0.0), vec4(-1.0, -1.0, 0.0, 1.0))
#define gl_MultiTexCoord0 vec4(UV0, 0.0, 1.0)
#define gl_MultiTexCoord1 vec4(0.0, 0.0, 0.0, 1.0)
#define gl_MultiTexCoord2 vec4(0.0, 0.0, 0.0, 1.0)
#define gl_MultiTexCoord3 vec4(0.0, 0.0, 0.0, 1.0)
#define gl_MultiTexCoord4 vec4(0.0, 0.0, 0.0, 1.0)
#define gl_MultiTexCoord5 vec4(0.0, 0.0, 0.0, 1.0)
#define gl_MultiTexCoord6 vec4(0.0, 0.0, 0.0, 1.0)
#define gl_MultiTexCoord7 vec4(0.0, 0.0, 0.0, 1.0)
#define gl_Color vec4(1.0, 1.0, 1.0, 1.0)
#define gl_Normal vec3(0.0, 0.0, 1.0)
#define gl_NormalMatrix mat3(1.0)
#define gl_ModelViewMatrix mat4(1.0)
#define gl_ModelViewProjectionMatrix (gl_ProjectionMatrix * gl_ModelViewMatrix)
#define gl_Vertex vec4(Position, 1.0)
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
out float iris_FogFragCoord;
vec4 iris_FrontColor;
vec4 texture2D(sampler2D sampler, vec2 coord) { return texture(sampler, coord); }
vec4 texture3D(sampler3D sampler, vec3 coord) { return texture(sampler, coord); }
vec4 texture2DLod(sampler2D sampler, vec2 coord, float lod) { return textureLod(sampler, coord, lod); }
vec4 texture3DLod(sampler3D sampler, vec3 coord, float lod) { return textureLod(sampler, coord, lod); }
vec4 shadow2D(sampler2DShadow sampler, vec3 coord) { return vec4(texture(sampler, coord)); }
vec4 shadow2DLod(sampler2DShadow sampler, vec3 coord, float lod) { return vec4(textureLod(sampler, coord, lod)); }
vec4 texture2DGrad(sampler2D sampler, vec2 coord, vec2 dPdx, vec2 dPdy) { return textureGrad(sampler, coord, dPdx, dPdy); }
vec4 texture2DGradARB(sampler2D sampler, vec2 coord, vec2 dPdx, vec2 dPdy) { return textureGrad(sampler, coord, dPdx, dPdy); }
vec4 texture3DGrad(sampler3D sampler, vec3 coord, vec3 dPdx, vec3 dPdy) { return textureGrad(sampler, coord, dPdx, dPdy); }
vec4 texelFetch2D(sampler2D sampler, ivec2 coord, int lod) { return texelFetch(sampler, coord, lod); }
vec4 texelFetch3D(sampler3D sampler, ivec3 coord, int lod) { return texelFetch(sampler, coord, lod); }
in vec2 UV0;
in vec3 Position;
vec4 ftransform() { return gl_ModelViewProjectionMatrix * gl_Vertex; }




















































































































































































































































































































































































































































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

//////////Fragment Shader//////////Fragment Shader//////////Fragment Shader//////////




















	
	
	
	

	
		
			
				
				
				
				
			
		
		
	

	






	
		

		
			
				
				
				
				
				
				
		
			
				
				
				
				
				
				
		
	
		
		
		
		

		
			
				
					
					
					
					
					
					
				
			
			
		

		
		
	

    
	




//////////Vertex Shader//////////Vertex Shader//////////Vertex Shader//////////


//Program//
void main() {
	texCoord = gl_MultiTexCoord0.xy;
	
	gl_Position = ftransform();
}




