/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 74EA1A52
/// @DnDArgument : "code" "$(13_10)$(13_10)/// @description Execute Code$(13_10)$(13_10)// --- TAMBAHKAN 'IF' INI DI PALING ATAS ---$(13_10)// Cek: Apakah To-Do List sedang terbuka?$(13_10)if (show_todolist == true) {$(13_10)    $(13_10)    // Kalau IYA, baru jalankan proses tutup & hapus memori$(13_10)    show_todolist = false;$(13_10)    keyboard_lastchar = "";$(13_10)    obj_budi.typedWord = "";$(13_10)    $(13_10)    // Hapus ESC supaya Pause TIDAK jalan$(13_10)    io_clear();$(13_10)}$(13_10)// Kalau show_todolist == false, kode di atas dilewati, $(13_10)// jadi tombol ESC bebas dibaca oleh obj_pause.$(13_10)"


/// @description Execute Code

// --- TAMBAHKAN 'IF' INI DI PALING ATAS ---
// Cek: Apakah To-Do List sedang terbuka?
if (show_todolist == true) {
    
    // Kalau IYA, baru jalankan proses tutup & hapus memori
    show_todolist = false;
    keyboard_lastchar = "";
    obj_budi.typedWord = "";
    
    // Hapus ESC supaya Pause TIDAK jalan
    io_clear();
}
// Kalau show_todolist == false, kode di atas dilewati, 
// jadi tombol ESC bebas dibaca oleh obj_pause.