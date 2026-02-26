// --- 1. Tentukan Posisi Pojok Kanan Bawah ---
var box_x = display_get_gui_width() - 600 - 1; 
var box_y = display_get_gui_height() - 249 - 35; 
var _x_offset = 0

// --- 2. Gambar Kotak Background ---
draw_sprite(spr_inventory, 0, box_x, box_y);

// --- 3. LOGIKA BARU: Wortel + Angka (Stacking) ---

// Cek: Kalau wortelnya lebih dari 0, baru gambar
if (global.carrot > 0) {
    
    // A. Tentukan Posisi Wortel (Slot 1)
    // SAYA HAPUS "+ (i * 64)" KARENA KITA TIDAK MAU BERJEJER
    var carrot_x = box_x + 90; 
    var carrot_y = box_y + 160; 

    // B. Gambar Icon Wortel (CUKUP SEKALI SAJA)
    draw_sprite(spr_carrot, 0, carrot_x, carrot_y);
    
    // C. Gambar Lingkaran Angka (Badge)
    // Kita gambar di pojok kanan bawah icon wortel
    var badge_x = carrot_x + 55; // Geser ke kanan icon
    var badge_y = carrot_y + 70; // Geser ke bawah icon
    
    // 1. Gambar Lingkaran Oranye
    draw_set_color(c_orange); 
    draw_circle(badge_x, badge_y, 14, false); // Angka 14 itu ukuran lingkarannya
    
    // 2. Gambar Angka Jumlahnya
    draw_set_color(c_white);
    draw_set_halign(fa_center); // Rata Tengah (Wajib biar angka pas di tengah lingkaran)
    draw_set_valign(fa_middle); 
    
    // PENTING: string(global.carrot) mengubah angka jadi tulisan
    draw_text(badge_x, badge_y, string(global.carrot));
    
    // D. Reset Settingan (Supaya UI lain tidak berantakan)
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
}

if (global.carrotseed > 0) {
	var carrotseed_x = box_x + 200; 
	var carrotseed_y = box_y + 160; 

 // B. Gambar Icon Wortel (CUKUP SEKALI SAJA)
    draw_sprite(spr_carrot_seed, 0, carrotseed_x, carrotseed_y);
    
    // C. Gambar Lingkaran Angka (Badge)
    // Kita gambar di pojok kanan bawah icon wortel
    var badge_x = carrotseed_x + 55; // Geser ke kanan icon
    var badge_y = carrotseed_y + 70; // Geser ke bawah icon
	
	// 1. Gambar Lingkaran Oranye
    //draw_set_color(c_orange); 
    //draw_circle(badge_x, badge_y, 14, false); // Angka 14 itu ukuran lingkarannya
    
    // 2. Gambar Angka Jumlahnya
   // draw_set_color(c_white);
    //draw_set_halign(fa_center); // Rata Tengah (Wajib biar angka pas di tengah lingkaran)
    //draw_set_valign(fa_middle); 
    
    // PENTING: string(global.carrot) mengubah angka jadi tulisan
    draw_text(badge_x, badge_y, string(global.carrotseed));
}
// -

for(var i = 0; i < ds_list_size(items); i++){
	var _item_x = box_x + 90 + _x_offset
	var _item_y = box_y + 160
	
	var _spr = object_get_sprite(ds_list_find_value(items, i))
	
	draw_sprite(_spr, 0, _item_x, _item_y)
	_x_offset += 100
}