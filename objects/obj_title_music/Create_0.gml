// 1. Paksa Volume Utama MAX (Biar yakin gak ke-mute slider)
audio_master_gain(1);

// 2. Putar Lagu
if (!audio_is_playing(title_bgm)) {
    audio_play_sound(title_bgm, 1000, true); 
}
