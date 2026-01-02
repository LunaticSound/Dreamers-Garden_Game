/// @description Insert description here
// You can write your code in this editor

if (!variable_global_exists("upgrade_state"))
{
    global.upgrade_state = {};
}
// global.upgrade_state = {};

// Node Storage
nodes = [];

// Helper Function to create nodes
function add_node(_id, _parent_idx, _angle, _dist, _name, _cost, _icon, _booster, _rarity, _card_id) {
    var _parent = (_parent_idx == -1) ? undefined : nodes[_parent_idx];
    
    // Calculate Position based on parent
    var _base_x = (_parent == undefined) ? room_width / 2 : _parent.x;
    var _base_y = (_parent == undefined) ? room_height - 100 : _parent.y;
	var key = string(_id);
    var _unlocked = (_parent_idx == -1) || (global.upgrade_state[$ key] == true);
	
    var _node = {
        id: _id,
        name: _name,
        cost: _cost,
        icon: _icon,
        parent: _parent,
		unlocked: _unlocked,
        x: _base_x + lengthdir_x(_dist, _angle),
        y: _base_y + lengthdir_y(_dist, _angle),
        scale: 1.0,
		booster_target: _booster,
		rarity_bracket: _rarity,
		card_to_add: _card_id
    };
    
    array_push(nodes, _node);
}

// BUILD THE TREE STRUCTURE
// ID, ParentIndex, Angle, Distance, Name, Cost, IconIndex, Booster, Rarity, Card_ID
add_node(0, -1, 0,   0,   "Feastbulb", 0, 0, "Earth+Earth+Earth", rarities.COMMON, plant_cards.FEASTBULB);   // The Root
add_node(1,  0, 120, 180, "Water Omen", 100, 1, "Earth+Earth+Earth", rarities.COMMON, plant_cards.WATER_OMEN);  // Branch Left
//add_node(2,  1, 120, 180, "Divine Liquid",  100, 2, "Earth+Earth+Earth", rarities.COMMON, blessings.HOLY_WATER);  // Branch Left
add_node(2,  1, 60,  180, "Manysoul Grain",      100, 2, "Earth+Earth+Earth", rarities.COMMON, plant_cards.MANYSOUL_GRAIN);  // Branch Right
add_node(3,  2, 60,  180, "The Path", 100, 3, "Earth+Earth+Earth", rarities.COMMON, blessings.THE_PATH);  // Branch Right
add_node(4,  3, 120, 150, "Ashen Shellwood",    250, 4, "Earth+Earth+Earth", rarities.UNCOMMON, plant_cards.ASHEN_SHELLWOOD);  // Sub-branch Left
add_node(5,  4, 120, 150, "Rain Dance",       300, 5, "Earth+Earth+Earth", rarities.UNCOMMON, blessings.RAIN_DANCE);  // Sub-branch Left
add_node(6,  5, 120, 150, "Forbidden Ritual",       300, 6, "Earth+Earth+Earth", rarities.RARE, blessings.FORBIDDEN_RITUAL);  // Sub-branch Left