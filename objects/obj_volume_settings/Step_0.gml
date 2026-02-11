// --- 4. LOGIC VOLUME FILL (Biarkan Saja / Tetap Sama) ---
var bar_x = menu_x + 120;       
var bar_y = menu_y - 100;    
var bar_w = sprite_get_width(spr_vol_bg);
var bar_h = sprite_get_height(spr_vol_bg);

// Cek Mouse Klik Slider
if (mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);
    var left = bar_x - bar_w/2;
    var right = bar_x + bar_w/2;
    var top = bar_y - bar_h/2;
    var bottom = (bar_y + bar_h/2) + 50;
    
    if (mx > left && mx < right && my > top && my < bottom) {
        is_dragging = true;
    }
}

if (mouse_check_button_released(mb_left)) {
    is_dragging = false;
}

if (is_dragging) {
    var mx = device_mouse_x_to_gui(0);
    var left = bar_x - bar_w/2;
    vol_value = (mx - left) / bar_w;
    vol_value = clamp(vol_value, 0, 1);
    audio_master_gain(vol_value);
}