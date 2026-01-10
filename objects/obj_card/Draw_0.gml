// obj_card Draw Event
// Draw the card sprite

var y_pos = y + levitate_offset;

draw_sprite_ext(sprite_index, 0, x, y_pos, x_scale, 1, image_angle, c_white, 1);
scr_draw_icon();

// Set font and alignment
draw_set_font(fnt_card_name); // Use a readable font
draw_set_halign(fa_center); // Center-align text
draw_set_valign(fa_top);    // Top-align text
draw_set_color(c_black);    // Text color

// Draw card name (top)
draw_text(x , y_pos - 315, card_data.name);
draw_set_font(fnt_card_type); // Use a readable font
draw_set_halign(fa_left);
draw_text(x - 145, y_pos + 158, card_data.type);

// Draw description (bottom)
var desc_y = y_pos + 186; // Adjust based on card height
var line_height = 18;
var max_width = 300;   // Max width for text wrapping

// Split description into lines if needed
draw_set_font(fnt_card_text); // Use a readable font
var lines = [];
var current_line = "";
var words = string_split(card_data.description, " ");
for (var i = 0; i < array_length(words); i++) {
    var test_line = current_line + words[i];
    if (string_width(test_line) <= max_width) {
        current_line = test_line + " ";
    } else {
        array_push(lines, current_line);
        current_line = words[i] + " ";
    }
}
if (current_line != "") array_push(lines, current_line);

// Draw each line of description
for (var i = 0; i < array_length(lines); i++) {
    draw_text(x - 140, desc_y + (i * line_height), lines[i]);
}
