// Hapus surface kalau masih ada di memori saat object ini dihancurkan
if (surface_exists(pause_surf)) {
    surface_free(pause_surf);
}
