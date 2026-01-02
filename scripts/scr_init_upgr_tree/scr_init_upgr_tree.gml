// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_upgr_tree(){
// Initialize the Tree
nodes = [];

// A function to add nodes easily
function add_upgrade_node(_id, _parent_index, _angle, _dist, _name) {
    var _parent = (_parent_index == -1) ? undefined : nodes[_parent_index];
    
    var _node = {
        id: _id,
        name: _name,
        parent: _parent,
        unlocked: (_parent_index == -1), // Root is unlocked by default
        
        // Position logic: Grow out from parent
        anchor_x: (_parent == undefined) ? room_width/2 : _parent.x,
        anchor_y: (_parent == undefined) ? room_height - 100 : _parent.y,
        x: 0,
        y: 0,
        
        // Animation
        anim_grow: (_parent_index == -1) ? 1 : 0
    };
    
    // Calculate actual X/Y based on angle and distance from parent
    if (_parent != undefined) {
        _node.x = _node.anchor_x + lengthdir_x(_dist, _angle);
        _node.y = _node.anchor_y + lengthdir_y(_dist, _angle);
    } else {
        _node.x = _node.anchor_x;
        _node.y = _node.anchor_y;
    }
    
    array_push(nodes, _node);
}

// Create the "Skeleton"
add_upgrade_node(0, -1, 0, 0, "The Heart");        // Root
add_upgrade_node(1,  0, 150, 150, "Thorn Branch"); // Child of Heart
add_upgrade_node(2,  0, 30, 150, "Root Branch");   // Child of Heart
add_upgrade_node(3,  1, 160, 120, "Poison Ivy");   // Child of Thorn
}