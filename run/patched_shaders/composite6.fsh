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

//////////Fragment Shader//////////Fragment Shader//////////Fragment Shader//////////


//Uniforms//
uniform float viewWidth, viewHeight;
uniform float far, near;

uniform vec3 cameraPosition, previousCameraPosition;

uniform mat4 gbufferPreviousProjection, gbufferProjectionInverse;
uniform mat4 gbufferPreviousModelView, gbufferModelViewInverse;

uniform sampler2D colortex1;
uniform sampler2D colortex2;
uniform sampler2D colortex7;
uniform sampler2D depthtex1;

//Optifine Constants//
const bool colortex1MipmapEnabled = true;

//Common Functions//
float GetLinearDepth(float depth) {
   return (2.0 * near) / (far + near - depth * (far - near));
}
//Includes//

/*
Complementary Shaders by EminGT, based on BSL Shaders by Capt Tatsu
*/

//Previous frame reprojection from Chocapic13
vec2 Reprojection(vec3 pos) {
	pos = pos * 2.0 - 1.0;

	vec4 viewPosPrev = gbufferProjectionInverse * vec4(pos, 1.0);
	viewPosPrev /= viewPosPrev.w;
	viewPosPrev = gbufferModelViewInverse * viewPosPrev;

	vec3 cameraOffset = cameraPosition - previousCameraPosition;
	cameraOffset *= float(pos.z > 0.56);

	vec4 previousPosition = viewPosPrev + vec4(cameraOffset, 0.0);
	previousPosition = gbufferPreviousModelView * previousPosition;
	previousPosition = gbufferPreviousProjection * previousPosition;
	return previousPosition.xy / previousPosition.w * 0.5 + 0.5;
}

vec2 neighbourhoodOffsets[8] = vec2[8](
							   	   vec2(-1.0, -1.0),
							  	   vec2( 0.0, -1.0),
							  	   vec2( 1.0, -1.0),
							  	   vec2(-1.0,  0.0),
							   	   vec2( 1.0,  0.0),
							  	   vec2(-1.0,  1.0),
							  	   vec2( 0.0,  1.0),
							  	   vec2( 1.0,  1.0)
						  );

void NeighbourhoodClamping(vec3 color, inout vec3 tempColor, vec2 view, float depth, inout float edge) {
	vec3 minclr = color, maxclr = color;

	for(int i = 0; i < 8; i++) {
		vec2 offset = neighbourhoodOffsets[i] * view;
		float depthCheck = texture2D(depthtex1, texCoord + offset).r;
		if (abs(GetLinearDepth(depthCheck) - GetLinearDepth(depth)) > 0.03) edge = 1.0;
		vec3 clr = texture2DLod(colortex1, texCoord + offset, 0.0).rgb;
		minclr = min(minclr, clr); maxclr = max(maxclr, clr);
	}

	tempColor = clamp(tempColor, minclr, maxclr);
}

void TAA(inout vec3 color, inout vec4 temp) {
	float depth = texture2D(depthtex1, texCoord).r;
	float noTAA = texture2D(colortex7, texCoord).r;
	if (depth < 0.56 || noTAA > 0.5) { // Fixes entities and hand
		return;
	}

	vec3 coord = vec3(texCoord, depth);
	vec2 prvCoord = Reprojection(coord);
	
	vec2 view = vec2(viewWidth, viewHeight);
	vec3 tempColor = texture2D(colortex2, prvCoord).gba;
	if (tempColor == vec3(0.0)) { // Fixes the first frame
		temp = vec4(temp.r, color);
		return;
	}

	float edge = 0.0;
	NeighbourhoodClamping(color, tempColor, 1.0 / view, depth, edge);
	
	vec2 velocity = (texCoord - prvCoord.xy) * view;

	float blendFactor = float(prvCoord.x > 0.0 && prvCoord.x < 1.0 &&
	                          prvCoord.y > 0.0 && prvCoord.y < 1.0);
	
		float blendVariable = 0.5;
		float blendConstant = 0.4;
		float blendMinimum = 0.2;
	
		
		
		
	
	float lengthVelocity = length(velocity * 2.0);
	blendFactor *= max(exp(-lengthVelocity) * blendVariable + blendConstant - lengthVelocity * edge * 20.0, blendMinimum);
	
	color = mix(color, tempColor, blendFactor);
	temp = vec4(temp.r, color);
	//if (edge > 0.5) color.rgb = vec3(1.0, 0.0, 1.0);
}


//Program//
void main() {
    vec3 color = texture2DLod(colortex1, texCoord, 0.0).rgb;

    
        vec4 temp = vec4(texture2D(colortex2, texCoord).r, 0.0, 0.0, 0.0);
        TAA(color, temp);
    

    /*DRAWBUFFERS:1*/
	gl_FragData[0] = vec4(color, 1.0);
	
    /*DRAWBUFFERS:12*/
	gl_FragData[1] = vec4(temp);
	
}



//////////Vertex Shader//////////Vertex Shader//////////Vertex Shader//////////




	
	
	

