if (!active) exit;

// GUI size
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// Bottom-center placement
x = gui_w * 0.5;
y = gui_h - sprite_get_height(spr_tutor_received_letter) - 30;

// Draw sprite centered horizontally
draw_sprite_ext(
    spr_tutor_received_letter,
    0,
    x,
    y,
    1,
    1,
    0,
    c_white,
    1
);
