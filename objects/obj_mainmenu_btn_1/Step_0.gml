if (mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);
    
    if (point_in_rectangle(mx, my, bbox_left, bbox_top, bbox_right, bbox_bottom)) {
        
        // --- AKSI PINDAH ROOM ---
        // 1. Matikan status pause biar aman
        global.is_paused = false;
        
        // 2. Bersihkan memory surface (PENTING!)
        // Kita panggil object pause buat bersih-bersih diri
        if (instance_exists(obj_pause)) {
            with (obj_pause) {
                if (surface_exists(pause_surf)) surface_free(pause_surf);
            }
        }

        // 3. Pindah ke Room Menu Awal
        // Ganti 'rm_main_menu' dengan nama room menu kamu yang asli!
        room_goto(main_screen); 
    }
}
