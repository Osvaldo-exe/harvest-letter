<<<<<<< HEAD
/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 53275357
/// @DnDArgument : "code" "if(string_trim(obj_budi.typedWord) == tugas_list[index_sekarang]){$(13_10)	index_sekarang += 1;$(13_10)	$(13_10)		show_debug_message(string("debug message"));$(13_10)	$(13_10)		obj_budi.typedWord = "";$(13_10)	$(13_10)		if(index_sekarang >= array_length(tugas_list)){$(13_10)			global.popup_open = false;$(13_10)			$(13_10)			obj_budi.spd = 1			$(13_10)		$(13_10)			global.carrotseed -= 1;$(13_10)			$(13_10)			var _plant_the_seeds_exists = instance_exists(obj_planttheseeds)$(13_10)			var _water_the_crops_exists = instance_exists(obj_wateryourcrops)$(13_10)			$(13_10)			if(_plant_the_seeds_exists){$(13_10)				obj_planttheseeds.image_index = 1$(13_10)				obj_planttheseeds.alarm[0] = room_speed * 3;$(13_10)			} else if(_water_the_crops_exists) {$(13_10)				obj_wateryourcrops.image_index = 1$(13_10)				obj_wateryourcrops.alarm[0] = room_speed * 3;$(13_10)			}$(13_10)			$(13_10)			$(13_10)			show_popup_grow = true;$(13_10)			$(13_10)			obj_cycle_time.alarm[0] = room_speed * 0.2;$(13_10)			$(13_10)			instance_destroy()$(13_10)			$(13_10)			}$(13_10)	if (obj_budi.typedWord == "water plants") {$(13_10)    if (global.tutorial_index == 1) {$(13_10)$(13_10)        var has_water = false;$(13_10)$(13_10)        with (obj_inventory) {$(13_10)            has_water = inventory_has(obj_water_bucket);$(13_10)        }$(13_10)$(13_10)        if (has_water) {$(13_10)            // Complete task$(13_10)            global.tutorialtasks[1].completed = true;$(13_10)            global.tutorial_index = 2;$(13_10)$(13_10)            // Optional: remove water bucket$(13_10)            with (obj_inventory) {$(13_10)                ds_list_delete(items, ds_list_find_index(items, obj_water_bucket));$(13_10)				show_debug_message("deleted water bucket")$(13_10)            }$(13_10)        } else {$(13_10)            // Feedback$(13_10)            show_message("You need water first!");$(13_10)        }$(13_10)    }$(13_10)}$(13_10)} "
=======
>>>>>>> 6679e719d36d905fbd694b52ed70be941673bbaf
if(string_trim(obj_budi.typedWord) == tugas_list[index_sekarang]){
	index_sekarang += 1;
	
		show_debug_message(string("debug message"));
	
		obj_budi.typedWord = "";
	
		if(index_sekarang >= array_length(tugas_list)){
			global.popup_open = false;
			
			obj_budi.spd = 1			
		
			global.carrotseed -= 1;
			
			var _plant_the_seeds_exists = instance_exists(obj_planttheseeds)
			var _water_the_crops_exists = instance_exists(obj_wateryourcrops)
			
			if(_plant_the_seeds_exists){
				obj_planttheseeds.image_index = 1
				obj_planttheseeds.alarm[0] = room_speed * 3;
			} else if(_water_the_crops_exists) {
				obj_wateryourcrops.image_index = 1
				obj_wateryourcrops.alarm[0] = room_speed * 3;
			}
			
			
			show_popup_grow = true;
			
			obj_cycle_time.alarm[0] = room_speed * 0.2;
			
			instance_destroy()
			
			}
	if (obj_budi.typedWord == "water plants") {
    if (global.tutorial_index == 1) {

        var has_water = false;

        with (obj_inventory) {
            has_water = inventory_has(obj_water_bucket);
        }

        if (has_water) {
            // Complete task
            global.tutorialtasks[1].completed = true;
            global.tutorial_index = 2;

            // Optional: remove water bucket
            with (obj_inventory) {
                ds_list_delete(items, ds_list_find_index(items, obj_water_bucket));
				show_debug_message("deleted water bucket")
            }
        } else {
            // Feedback
            show_message("You need water first!");
        }
    }
}
<<<<<<< HEAD
}
=======
} 
>>>>>>> 6679e719d36d905fbd694b52ed70be941673bbaf
