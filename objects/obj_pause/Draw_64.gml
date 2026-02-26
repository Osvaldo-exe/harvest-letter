 if (!global.is_paused) exit;
// --- 0. GAMBAR 'FOTO' SCREENSHOT BACKGROUND ---
if (surface_exists(pause_surf)) {
    // Hitung skala biar fotonya pas dengan ukuran layar GUI
    var x_scale = display_get_gui_width() / surface_get_width(pause_surf);
    var y_scale = display_get_gui_height() / surface_get_height(pause_surf);
    
    // Gambar surfacenya melar memenuhi layar
    gpu_set_blendenable(false);
    draw_surface_ext(pause_surf, 0, 0, x_scale, y_scale, 0, c_white, 1);
    gpu_set_blendenable(true);
}

// --- 1. EFEK GELAP (DIM) ---
draw_set_alpha(0.5); // Gelapkan sedikit biar fokus ke menu
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);
draw_set_color(c_white);


// --- 2. GAMBAR KERTAS MENU ---
draw_sprite(spr_pause_bg, 0, menu_x, menu_y);


// --- 3. GAMBAR VOLUME SLIDER ---
var bar_x = menu_x + 120;
var bar_y = menu_y - 100;

// A. Gambar Wadah Kosong (BG)
draw_sprite(spr_vol_bg, 0, bar_x, bar_y);

// B. Gambar Isinya (FILL) - Teknik 'Draw Part'
var full_w = sprite_get_width(spr_vol_fill);
var full_h = sprite_get_height(spr_vol_fill);

// Hitung lebar berdasarkan volume (0.0 sampai 1.0)
var draw_w = full_w * vol_value;

// Geser posisi start gambar ke kiri (karena origin di tengah)
var left_pos = bar_x - (full_w / 2);
var top_pos  = bar_y - (full_h / 2);

// Gambar POTONGAN sprite fill
draw_sprite_part(spr_vol_fill, 0, 0, 0, draw_w, full_h, left_pos, top_pos);


// --- 4. [BARU] TAMPILKAN KETIKAN PEMAIN ---
// Ini penting biar pemain tau mereka ngetik apa


// Reset warna balik ke putih biar gambar lain gak ikut hitam
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_main);
draw_set_color(c_black);
draw_set_alpha(1);