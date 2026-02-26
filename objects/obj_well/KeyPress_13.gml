if (player_near) {
    if (obj_budi.typedWord == "collectwater") {
        if (global.tutorial_index == 0) {

            // Give water bucket
            with (obj_inventory) {
                inventory_add(obj_water_bucket);
				show_debug_message("Water bucket added")
            }

            // Complete first tutorial task
            global.tutorial_index = 1;
			show_collectwater = false;
			obj_wateryourcrops.showing = true;
        }
    }
}

obj_budi.typedWord = "";
