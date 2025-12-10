/// @function mix_colors(color_list)
/// @param color_list DS list or array containing strings

function mix_colors(color_list)
{
    var count = array_length(color_list);
    var total_r = 0;
    var total_g = 0;
    var total_b = 0;

    for (var i = 0; i < count; i++)
    {
        var col = color_from_name(color_list[i]);
        total_r += color_get_red(col);
        total_g += color_get_green(col);
        total_b += color_get_blue(col);
    }

    var r = total_r / count;
    var g = total_g / count;
    var b = total_b / count;

    return make_color_rgb(r, g, b);
}
