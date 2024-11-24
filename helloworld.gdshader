shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
}



vec4 get_color(vec2 uv) {
//	float red = abs(sin(TIME));
//	float red = UV[0];
	float blue = abs(cos(TIME*2.4));
	float green = abs(tan(TIME*0.3));
//	float red = smoothstep(0, 5, TIME)
	return vec4(uv.x, blue, green, 1.0);
}

void fragment() {
	float y = 1.0-UV.y;
	float val = pow(UV.x, 0.5);
	float val2 = step(abs(y-pow(UV.x, 0.5)), 0.01);
//	float val2 = step(abs(val), 0.05);
	vec4 black = vec4(val,val,val, 1.0);
	vec4 white = vec4(1.0, 0.0, 0.0, 1.0);
	COLOR = (1.0-val2)*black + val2*white;
}





//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
