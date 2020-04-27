/// The default style for all elements when they're created

function __bento_style_default() constructor
{
    clip           = false;
    clip_new_frame = false;
    interactive    = true;
    layout         = "none"; //Can be "none", "flexbox", or "grid"
    
    fill = {
        color : c_white,
        alpha : 0.0,
    };
    
    outline = {
        color : c_white,
        alpha : 0.0,
    };
    
    text = {
        font   : -1,
        halign : fa_left,
        valign : fa_top,
        color  : c_white,
        alpha  : 1.0,
    };
    
    sprite = {
        behavior : "stretch",
        index : undefined,
        image : -1,
        color : c_white,
        alpha : 1.0,
        tile_offset : {
            x : 0,
            y : 0,
            worldspace : false,
        },
        nineslice_border : {
            l : 0,
            t : 0,
            r : 0,
            b : 0,
        },
    };
    
    surface = {
        index : undefined,
        color : c_white,
        alpha : 1.0,
    };
    
    margin = {
        l : 0,
        t : 0,
        r : 0,
        b : 0,
    };
    
    padding = {
        l : 0,
        t : 0,
        r : 0,
        b : 0,
    };
    
    grid = {
        columns        : undefined,
        rows           : undefined,
        column_gap     : 0,
        row_gap        : 0,
        direction      : "rows",
        content_halign : "left",
        content_valign : "top",
        element_halign : "left",
        element_valign : "top",
    };
    
    flexbox = {
        grow           : 0,
        direction      : "rows",
        content_halign : "left",
        content_valign : "top",
        line_halign    : "left",
        line_valign    : "top",
    };
}