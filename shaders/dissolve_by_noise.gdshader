shader_type canvas_item;

uniform float dissolve_below = 0.5;
uniform sampler2D noise;

void fragment() {
	vec4 tex_color = texture(TEXTURE, UV);
	vec4 noise_color = texture(noise, UV);
	float dissolve_mask = step(dissolve_below, noise_color.r);
	COLOR = mix(vec4(0.0), tex_color, dissolve_mask);
}
