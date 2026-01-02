// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_card_movement(){

// --- SPRING PHYSICS FOR X ---
var stiffness_x = 0.1;   // how strongly it pulls toward target_x
var damping_x   = 0.65;    // how much friction to apply

var force_x = (target_x - x) * stiffness_x;
x_vel += force_x;
x_vel *= damping_x;
x += x_vel;

if(y != target_y) y = lerp(y, target_y, 0.1);

// Detect hover
var top = instance_position(mouse_x, mouse_y, obj_card);
hovered = (top == id);


// Update target position
if(!card_selected && object_index != obj_card_craft){
if (hovered) target_y = base_y - 120;
else target_y = base_y;
}

// --- SPRING PHYSICS ---
var stiffness = 0.2;    // how strongly it pulls toward target (higher = stiffer)
var damping = 0.7;      // how much to reduce velocity each frame (lower = more bouncy)

// Apply spring force
var force = (target_y - y) * stiffness;
y_vel += force;

// Apply damping (friction)
y_vel *= damping;

// Update position
y += y_vel;

// image_angle = lerp(image_angle, target_angle, 0.1);

}