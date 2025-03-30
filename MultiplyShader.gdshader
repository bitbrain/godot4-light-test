
// MultiplyShader.gdshader

shader_type canvas_item;
render_mode unshaded;

uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;

void fragment()
{
 COLOR = texture(TEXTURE, UV) * 2.0 * texture(SCREEN_TEXTURE, SCREEN_UV);
}