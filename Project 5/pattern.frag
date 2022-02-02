#version 120

varying vec2  	vST;		// texture coords

uniform float	uB;	// used to help change the color of the pattern from red to black over time

void
main( )
{
	vec3 myColor = vec3( 1, 0.647, 0. ); // orange

	// if the pattern is in the shape that I want, set it so that it changes from red to black over time
	
	if( vST.s >= 0.75 && vST.t >= 0.9)
		myColor = vec3( sin(uB), 0., 0. );

	gl_FragColor = vec4( myColor, 1.0);
}