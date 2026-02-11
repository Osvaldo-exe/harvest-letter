// --- 3. GAMBAR VOLUME SLIDER ---
var bar_x = menu_x + 120;
var bar_y = menu_y - 100;

// A. Gambar Wadah Kosong (BG)
draw_sprite(spr_vol_bg, 0, bar_x, bar_y + 50);

// B. Gambar Isinya (FILL) - Teknik 'Draw Part'
var full_w = sprite_get_width(spr_vol_fill);
var full_h = sprite_get_height(spr_vol_fill);

// Hitung lebar berdasarkan volume (0.0 sampai 1.0)
var draw_w = full_w * vol_value;
show_debug_message("Draw w: " + string(draw_w))

// Geser posisi start gambar ke kiri (karena origin di tengah)
var left_pos = bar_x - (full_w / 2);
var top_pos  = bar_y - (full_h / 2);

// Gambar POTONGAN sprite fill
draw_sprite_part(spr_vol_fill, 0, 0, 0, draw_w, full_h, left_pos, top_pos + 50);

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_main);
draw_set_color(c_black);
draw_set_alpha(1);