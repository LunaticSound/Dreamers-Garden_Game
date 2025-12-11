// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function determine_loot(offerings){
    array_sort(offerings, true); // alphabetical
	var key = string_join_ext("+", offerings);
	booster = global.booster_database[? key];
//	var loot = booster.loot_array;
	var sprite = booster.sprite;
	return [booster, sprite];
}
		/*
		
		switch (key){
			case "Moon+Moon+Moon":
				var loot = choose("moon_root", "milkyway");
				break;
			case "Moon+Sun":
				var loot = choose("moon_root", "stardust");
				break;
			case "Moon+Earth":
				var loot = choose("moon_root", "golden_clover");
				break;
			case "Moon+Illusion":
				var loot = choose("moon_root", "magika");
				break;
			case "Sun+Sun":
				var loot = choose("golden_clover", "pumpkin");
				break;
			case "Sun+Earth":
				var loot = choose("pumpkin", "golden_clover");
				break;
			case "Sun+Illusion":
				var loot = choose("magika", "pumpkin");
				break;
			case "Earth+Earth":
				var loot = choose("golden_clover");
				break;
			case "Earth+Illusion":
				var loot = choose("golden_clover", "magika");
				break;
			case "Illusion+Illusion":
				var loot = choose("magika");
				break;
			case "Tool+Tool":
				var loot = choose("shovel", "sickle", "watering_can");
				break;
			default:
				var loot = "sickle";
		}
	return loot;
}