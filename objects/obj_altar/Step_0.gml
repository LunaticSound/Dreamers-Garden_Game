/// @description Insert description here
// You can write your code in this editor

// --- SPRING PHYSICS FOR X ---
var stiffness_x = 0.15;   // how strongly it pulls toward target_x
var damping_x   = 0.6;    // how much friction to apply

var force_x = (target_x - x) * stiffness_x;
x_vel += force_x;
x_vel *= damping_x;
x += x_vel;

if(y != target_y) y = lerp(y, target_y, 0.1);

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

if (active) activate_altar();
craft_enter();
