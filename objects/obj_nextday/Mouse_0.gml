/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 54A2060F
/// @DnDInput : 9
/// @DnDArgument : "expr" "6"
/// @DnDArgument : "expr_1" "+1"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "expr_3" "true"
/// @DnDArgument : "expr_4" "+200"
/// @DnDArgument : "expr_relative_4" "1"
/// @DnDArgument : "expr_5" "1"
/// @DnDArgument : "expr_6" "room_speed * 0.2"
/// @DnDArgument : "expr_7" "+1"
/// @DnDArgument : "expr_relative_7" "1"
/// @DnDArgument : "expr_8" "false"
/// @DnDArgument : "var" "global.jam_sekarang"
/// @DnDArgument : "var_1" "global.hari"
/// @DnDArgument : "var_2" "global.menit_sekarang"
/// @DnDArgument : "var_3" "global.hari_sudah_diupdate"
/// @DnDArgument : "var_4" "obj_budi.y"
/// @DnDArgument : "var_5" "obj_budi.spd"
/// @DnDArgument : "var_6" "obj_cycle_time.alarm[0]"
/// @DnDArgument : "var_7" "obj_growth.image_index"
/// @DnDArgument : "var_8" "global.popup_open"
global.jam_sekarang = 6;
global.hari += +1;
global.menit_sekarang = 0;
global.hari_sudah_diupdate = true;
obj_budi.y += +200;
obj_budi.spd = 1;
obj_cycle_time.alarm[0] = room_speed * 0.2;
obj_growth.image_index += +1;
global.popup_open = false;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 16599DA5
/// @DnDArgument : "var" "layer_id"
/// @DnDArgument : "value" "layer_get_id("Fields")"
var layer_id = layer_get_id("Fields");

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2CB9FFD3
/// @DnDArgument : "var" "fields"
/// @DnDArgument : "value" "layer_get_all_elements(layer_id)"
var fields = layer_get_all_elements(layer_id);

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 547EEBA4
/// @DnDArgument : "cond" "i < array_length(fields)"
for(i = 0; i < array_length(fields); i += 1) {	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D37FA33
	/// @DnDParent : 547EEBA4
	/// @DnDArgument : "var" "field"
	/// @DnDArgument : "value" "layer_instance_get_instance(fields[i])"
	var field = layer_instance_get_instance(fields[i]);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E7AA570
	/// @DnDParent : 547EEBA4
	/// @DnDArgument : "var" "field.is_watered"
	/// @DnDArgument : "value" "true"
	if(field.is_watered == true){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 20A38428
		/// @DnDParent : 0E7AA570
		/// @DnDArgument : "expr" "+1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "field.image_index"
		field.image_index += +1;}}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 08A2F97F
/// @DnDApplyTo : {obj_blur}
with(obj_blur) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 534BC79B
/// @DnDApplyTo : {obj_popup_sleep}
with(obj_popup_sleep) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4D883620
instance_destroy();