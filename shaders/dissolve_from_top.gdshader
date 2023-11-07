shader_type canvas_item;

uniform float dissolve_below = 0.5;

void fragment() {
	vec4 tex_color = texture(TEXTURE, UV);
	float dissolve_mask = step(dissolve_below, UV.y);
	COLOR = mix(vec4(0.0), tex_color, dissolve_mask);
}
