/// @description Insert description here
// You can write your code in this editor

var _tex_array = texturegroup_get_textures( "MainMenu");
for (var i = 0; i < array_length(_tex_array); ++i)
{
    texture_prefetch(_tex_array[i]);
}