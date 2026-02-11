// --- 1. LOGIKA TOMBOL ESC (HANYA UNTUK MEMBUKA PAUSE) ---
// Kita cek: Kalau game lagi main (is_paused == false), baru boleh pause.
if (global.is_paused == false) {
    if (keyboard_check_pressed(vk_escape)) {
        
        global.is_paused = true; // Aktifkan Mode Pause
        
        // === JURUS BERSIH-BERSIH (PENTING) ===
        // Supaya pas menu muncul, gak ada sisa ketikan lama
        keyboard_string = "";       
        if (instance_exists(obj_budi)) {
            obj_budi.typedWord = ""; 
        }
        // =====================================
      // A. Foto Layar (Surface)
        if (!surface_exists(pause_surf)) {
            pause_surf = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
        }
        surface_copy(pause_surf, 0, 0, application_surface);

        // B. Matikan Object Lain
        instance_deactivate_all(true);
        instance_activate_object(self); 
        
        // C. Munculkan Tombol (Biar bisa di-KLIK juga)`
        if (!instance_exists(obj_continue_btn)) instance_create_depth(0, 0, -10000, obj_continue_btn);
        if (!instance_exists(obj_mainmenu_btn)) instance_create_depth(0, 0, -10000, obj_mainmenu_btn);
    }
}

// --- 2. LOGIKA KETIKAN (HANYA JALAN SAAT PAUSE) ---
if (global.is_paused == true) {
    
    // A. Ambil Input Ketikan (Ubah ke huruf kecil semua)
    // Jadi mau ngetik "Continue", "CONTINUE", "continue" semua dianggap sama
    var input_player = string_lower(keyboard_string);
    
    // Batasi panjang teks biar memori gak penuh
    if (string_length(input_player) > 15) {
        keyboard_string = string_copy(keyboard_string, 1, 15);
    }

    // B. Cek Jika Pemain Mengetik "continue"
    if (input_player == "continue") {
        global.is_paused = false; // Matikan Pause (Lanjut Main)
        keyboard_string = "";     // Reset ketikan biar bersih pas main lagi
    }

    // C. Cek Jika Pemain Mengetik "main menu"
    if (input_player == "main menu") {
        global.is_paused = false;
        
        // Bersihkan surface sebelum pindah room (biar memori aman)
        if (surface_exists(pause_surf)) surface_free(pause_surf);
        
        room_goto(main_screen); 
    }
}


// --- 3. LOGIKA BERSIH-BERSIH / RESUME MANAGER ---
// Bagian ini akan jalan OTOMATIS entah itu karena kamu KLIK tombol atau KETIK "continue".
// Pokoknya kalau status berubah jadi "false", dia yang beresin sisanya.
if (global.is_paused == false) {
    
    // Jika masih ada sisa-sisa tombol atau surface, hancurkan!
    if (instance_exists(obj_continue_btn) || surface_exists(pause_surf)) {
        
        instance_activate_all(); // Hidupkan game lagi
        is_dragging = false;     // Lepas slider volume
        
        // Hapus Tombol
        if (instance_exists(obj_continue_btn)) instance_destroy(obj_continue_btn);
        if (instance_exists(obj_mainmenu_btn)) instance_destroy(obj_mainmenu_btn);
        
        // Hapus Foto Surface
        if (surface_exists(pause_surf)) surface_free(pause_surf);
    }
    
    // STOP kode di sini agar logika slider tidak jalan saat game main
    exit;
}


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
    var bottom = bar_y + bar_h/2;
    
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


