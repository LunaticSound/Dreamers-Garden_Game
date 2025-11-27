/// @function color_from_name(name)
/// @param name  A string: "blue", "green", "orange", "purple"

function color_from_name(name)
{
    switch (string_lower(name)) {
        case "moonstone":   return make_color_rgb(0, 0, 255);
        case "deadwood":  return make_color_rgb(0, 180, 0);
        case "radiant_root": return make_color_rgb(255, 130, 0);
        case "mirrorglas": return make_color_rgb(130, 0, 180);
    }
    
    // default fallback
    return c_white;
}