global.menit_sekarang += 10;

if(global.menit_sekarang >= 60)
{
	global.menit_sekarang = global.menit_sekarang  - 60;

	global.jam_sekarang += 1;
}

if(global.jam_sekarang >= 24)
{
	global.jam_sekarang = 0;

	global.hari += +1;

	with(obj_time_arrow2) {
	event_user(0);
	}
}

_sufiks = "AM";

if(global.jam_sekarang >= 12)
{
	_sufiks = "PM";
}

_jam_12 = global.jam_sekarang mod 12;

// 1. Tentukan Jadwal (Hanya dilakukan sekali saat masuk jam 14 atau jika hari berganti)
if (global.jam_sekarang >= 14 && global.jam_sekarang <= 16 && global.waktu_qte_hari_ini == -1) 
{
    // Daftar semua titik waktu kelipatan 10 menit
    // Format: (Jam * 60) + Menit
    var daftar_pilihan = [
        (14*60)+0,  (14*60)+10, (14*60)+20, (14*60)+30, (14*60)+40, (14*60)+50,
        (15*60)+0,  (15*60)+10, (15*60)+20, (15*60)+30, (15*60)+40, (15*60)+50,
        (16*60)+0   // Batas Maksimal
    ];
    
    // Pilih satu index secara acak dari daftar (0 sampai 12)
    var index_acak = irandom(array_length(daftar_pilihan) - 1);
    
    // Simpan waktu terpilih
    global.waktu_qte_hari_ini = daftar_pilihan[index_acak];
}

// 2. Cek Eksekusi
if (global.waktu_qte_hari_ini != -1 && !global.sudah_muncul_hari_ini)
{
    var waktu_sekarang = (global.jam_sekarang * 60) + global.menit_sekarang;

    // Jika waktu sekarang sama dengan jadwal dan detik berada di angka 0
    if (waktu_sekarang == global.waktu_qte_hari_ini)
    {
        if (!instance_exists(obj_popup_qte)) 
        {
            instance_create_layer(room_width / 2, room_height / 2, "QTE", obj_popup_qte);
        }
        global.sudah_muncul_hari_ini = true;
    }
}

// 3. Reset Harian (Saat lewat tengah malam)
if (global.jam_sekarang == 0 && global.sudah_muncul_hari_ini)
{
    global.waktu_qte_hari_ini = -1;
    global.sudah_muncul_hari_ini = false;
}

if((global.jam_sekarang == 5 ) && (global.menit_sekarang == 0))
{
	var layer_id = layer_get_id("Fields");

	var fields = layer_get_all_elements(layer_id);

	for(i = 0; i < array_length(fields); i += 1) {
	var field = layer_instance_get_instance(fields[i]);
	
		if(field.is_watered == true)
{
	field.image_index += +1;
}
}
}

// Event: obj_cycle_time -> Alarm 0 (Execute Code)

// Menggunakan variabel global yang sudah ada untuk mendapatkan nilainya.
var _jam_12_val = _jam_12; 
var _menit_val = global.menit_sekarang;
var _sufiks_val = _sufiks;

// 1. Logic Penanganan Jam 12:00 AM/PM
if (_jam_12_val == 0) {
    _jam_12_val = 12;
}

// 2. KUNCI FORMATTING 2 DIGIT:
// Hasilkan string final dengan string_format() untuk jam dan menit.

global.waktu_display = string_format(_jam_12_val, 2, 0) + ":" + (_menit_val == 0 ? string_format(0, 0, 0) : "") + string_format(_menit_val, 0, 0) + " " + _sufiks_val;

// 3. Tetapkan variabel hari
global.hari_display = "Hari " + string(global.hari);

var l79D4C6BF_0 = false;
l79D4C6BF_0 = instance_exists(obj_popup_qte);
if(!l79D4C6BF_0)
{
	alarm_set(0, (room_speed * 1.4) + alarm_get(0));
}