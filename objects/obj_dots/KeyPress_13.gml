var popup_exists = false;
popup_exists = instance_exists(obj_popup);
if(popup_exists){
	if(string_trim(obj_budi.typedWord) == obj_popup.tugas_list[obj_popup.index_sekarang]){
	obj_popup.index_sekarang += 1;
	
		show_debug_message(string("debug message"));
	
		obj_budi.typedWord = "";
	
		if(obj_popup.index_sekarang >= array_length(obj_popup.tugas_list)){
			global.popup_open = false;
			
			obj_budi.spd = 1
		
			var temp_var = array_push(obj_game.completed_tasks, obj_game.selected_task.task_position);
		
			instance_destroy(obj_game.selected_task);
		
			with(obj_popup) instance_destroy();
			
			global.carrotseed -= 1;
			
			show_popup_grow = true; 
			
			alarm[0] = room_speed * 5;
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
} 
}
exit;