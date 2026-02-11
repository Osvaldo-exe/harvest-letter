// Cek jika mouse ditekan
if (mouse_check_button_pressed(mb_left)) {
    
    // 1. Ambil posisi mouse di LAYAR (GUI), bukan di Map
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);
    
    // 2. Cek apakah mouse menyentuh kotak tombol ini
    // (Fungsi ini otomatis membaca ukuran sprite mask kamu)
    if (point_in_rectangle(mx, my, bbox_left, bbox_top, bbox_right, bbox_bottom)) {
       
        // --- AKSI TOMBOL ---
        room_goto(game)
        
    }
}
