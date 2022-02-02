#version 120

uniform float	uTime;		// "Time", from Animate( )
varying vec2  	vST;		// texture coords

uniform float	uA;	// used to help animate the 3D shape
uniform bool	uImUsingTheFragmentShader; // checking if fragment shader is on

void
main( )
{
	vST = gl_MultiTexCoord0.st;
	vec3 vert = gl_Vertex.xyz;

	// change the x and z coordinate of the 3D object

	vert.x *= (2+sin(uA));
	vert.z *= (2+cos(uA));

	// if fragment shader is on, change the length of the pattern
	
	if (uImUsingTheFragmentShader)
		vST.t *= (2+sin(uTime));

	gl_Position = gl_ModelViewProjectionMatrix * vec4( vert, 1.0 );
}