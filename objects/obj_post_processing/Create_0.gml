/// @description Insert description here
// You can write your code in this editor

application_surface_draw_enable(false);
renderer = new PPFX_Renderer();
var effects = [
//	new FX_DisplaceMap(true, , , , , spr_normal_rain),
//	new FX_Exposure(true, 3), 
//	new FX_Interference(true, 0.05, 1, 0.99, 0.1 )
	new FX_LongExposure(true, 0.85 , , , 0),
//	new FX_Mist(true, 0.4, , , , , , , , c_purple, , , , , 1),
	// new FX_Bloom(true, , 0.85, , 0.4),
	
	// die Folgenden auch über GUI
	new FX_NoiseGrain(true, 0.1),
	new FX_ScanLines(true),
	new FX_SunShafts(true, , 0.45, 1),
//	new FX_DisplaceMap(true, 0.5, 0.5, 2, 90, __ppf_sprRainNormal) 
/*
	new FX_Dithering(true, , 0.5, 4),
	new FX_Bloom(true, 4, 0.9, , ,c_white , , true, sprite_get_texture(spr_tile_sand, 0), 3 ),
	new FX_Vignette(true, 0.3 , , , , $EABA85) */];
mainProfile = new PPFX_Profile("Main", effects);
renderer.ProfileLoad(mainProfile);

