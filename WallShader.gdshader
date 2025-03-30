shader_type canvas_item;
render_mode unshaded;

uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;

void fragment()
{
 float uv_height = SCREEN_PIXEL_SIZE.y / TEXTURE_PIXEL_SIZE.y;
 float bottom_y = SCREEN_UV.y + (1.02 - UV.y) * uv_height;
 vec4 lighting = textureLod(SCREEN_TEXTURE, vec2(SCREEN_UV.x, bottom_y), 2.0);
 COLOR = texture(TEXTURE, UV) * 2.0 * lighting;
}