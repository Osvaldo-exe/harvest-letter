audio_stop_all()

// 1. Paksa Volume Utama MAX (Biar yakin gak ke-mute slider)
audio_master_gain(1);

// 2. Putar Lagu
if (!audio_is_playing(bg_song)) {
    audio_play_sound(bg_song, 1000, true); 
}
