//
// Simple passthrough fragment shader
//
/*
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_cut_y; // 0..1, top to bottom

void main()
{
    vec4 tex = texture2D(gm_BaseTexture, v_vTexcoord);

    // v_vTexcoord.y is already 0 (top) → 1 (bottom)
    if (v_vTexcoord.y < u_cut_y)
    {
        discard;
    }

   // gl_FragColor = tex * v_vColour;
   float edge = smoothstep(u_cut_y - 0.01, u_cut_y + 0.01, v_vTexcoord.y);
	gl_FragColor = tex * v_vColour * edge;

}
*/

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_cut_y; // 0..1, top to bottom

void main()
{
    vec4 tex = texture2D(gm_BaseTexture, v_vTexcoord);

    // Invert UV if you want 0 = top, 1 = bottom
    float y = v_vTexcoord.y;

    // Smooth edge: discard pixels above the cut line
  float edge = smoothstep(u_cut_y - 0.01, u_cut_y + 0.01, y);
	
/* // Discard pixels **above** the current cut line
    if (y < u_cut_y) {
        discard;
    }
*/
    // Apply edge masking
    gl_FragColor = tex * v_vColour * edge;
	
	
}
