function scr_water_plants() {

    // Must have water
    if (!inventory_has(obj_water_bucket)) {
        show_message("You need water to do that.");
        return false;
    }

    // --- actual watering logic here ---
    // (example)
    with (obj_plant) {
        if (place_meeting(x, y, obj_dots)) {
            watered = true;
        }
    }

    return true;
}
