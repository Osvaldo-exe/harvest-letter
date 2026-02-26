/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 07E7AAD8
/// @DnDArgument : "code" "randomise();$(13_10)depth = -30;$(13_10)$(13_10)// 1. DAFTAR TUGAS (Array 1D berisi string pendek)$(13_10)var multi_line_tasks = [$(13_10)"harvest",$(13_10)  "crop",$(13_10)  "plow",$(13_10)  "seed",$(13_10)  "soil",$(13_10)  "tractor",$(13_10)  "barn",$(13_10)  "field",$(13_10)  "watering",$(13_10)  "fertilizer",$(13_10)  "scarecrow",$(13_10)  "greenhouse",$(13_10)  "sprinkler",$(13_10)  "irrigation",$(13_10)  "grain",$(13_10)  "hay",$(13_10)  "orchard",$(13_10)  "vineyard",$(13_10)  "compost",$(13_10)  "weed",$(13_10)  "hoe",$(13_10)  "shovel",$(13_10)  "rake",$(13_10)  "wheelbarrow",$(13_10)  "sickle",$(13_10)  "farmhouse",$(13_10)  "windmill",$(13_10)];$(13_10)$(13_10)// 2. Kita siapkan daftar kosong untuk tugas pop-up ini$(13_10)tugas_list = []; $(13_10)$(13_10)// 3. Tentukan mau berapa kata beruntun? (Misal: 3 kata)$(13_10)var jumlah_soal = 5; $(13_10)$(13_10)// 4. Loop untuk mengambil 3 kata acak dan memasukkannya ke tugas_list$(13_10)repeat(jumlah_soal) {$(13_10)    // UBAH global_words menjadi multi_line_tasks$(13_10)    var index_acak = irandom(array_length(multi_line_tasks) - 1);$(13_10)    array_push(tugas_list, multi_line_tasks[index_acak]);$(13_10)}$(13_10)$(13_10)// 5. Variabel penunjuk: Kita sedang ada di kata nomor berapa?$(13_10)// Dimulai dari 0 (kata pertama)$(13_10)index_sekarang = 0;$(13_10)$(13_10)obj_budi.typedWord = ""$(13_10)obj_budi.spd = 0$(13_10)global.popup_open = true;$(13_10)$(13_10)// 6. Variabel Countdown$(13_10)var _fps = game_get_speed(gamespeed_fps); $(13_10)countdown_total = 30 * _fps; $(13_10)alarm[0] = countdown_total;"
randomise();
depth = -30;

// 1. DAFTAR TUGAS (Array 1D berisi string pendek)
var multi_line_tasks = [
"harvest",
  "crop",
  "plow",
  "seed",
  "soil",
  "tractor",
  "barn",
  "field",
  "watering",
  "fertilizer",
  "scarecrow",
  "greenhouse",
  "sprinkler",
  "irrigation",
  "grain",
  "hay",
  "orchard",
  "vineyard",
  "compost",
  "weed",
  "hoe",
  "shovel",
  "rake",
  "wheelbarrow",
  "sickle",
  "farmhouse",
  "windmill",
];

// 2. Kita siapkan daftar kosong untuk tugas pop-up ini
tugas_list = []; 

// 3. Tentukan mau berapa kata beruntun? (Misal: 3 kata)
var jumlah_soal = 5; 

// 4. Loop untuk mengambil 3 kata acak dan memasukkannya ke tugas_list
repeat(jumlah_soal) {
    // UBAH global_words menjadi multi_line_tasks
    var index_acak = irandom(array_length(multi_line_tasks) - 1);
    array_push(tugas_list, multi_line_tasks[index_acak]);
}

// 5. Variabel penunjuk: Kita sedang ada di kata nomor berapa?
// Dimulai dari 0 (kata pertama)
index_sekarang = 0;

obj_budi.typedWord = ""
obj_budi.spd = 0
global.popup_open = true;

// 6. Variabel Countdown
var _fps = game_get_speed(gamespeed_fps); 
countdown_total = 30 * _fps; 
alarm[0] = countdown_total;