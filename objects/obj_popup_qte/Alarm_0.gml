<<<<<<< HEAD
/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2E818ED6
instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 22FEE982
/// @DnDArgument : "expr" "obj_budi.coin_penalty"
/// @DnDArgument : "var" "coin_penalty"
coin_penalty = obj_budi.coin_penalty;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 48825590
/// @DnDArgument : "function" "scr_coin_add"
/// @DnDArgument : "arg" "coin_penalty"
scr_coin_add(coin_penalty);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7D40419E
/// @DnDArgument : "xpos" "150"
/// @DnDArgument : "ypos" "980"
/// @DnDArgument : "objectid" "obj_penalties"
/// @DnDArgument : "layer" ""QTE""
/// @DnDSaveInfo : "objectid" "obj_penalties"
instance_create_layer(150, 980, "QTE", obj_penalties);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 12DD7524
/// @DnDInput : 3
/// @DnDArgument : "expr" "room_speed * 0.2"
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "var" "obj_cycle_time.alarm[0]"
/// @DnDArgument : "var_1" "obj_budi.spd"
/// @DnDArgument : "var_2" "global.popup_open"
obj_cycle_time.alarm[0] = room_speed * 0.2;
obj_budi.spd = 1;
global.popup_open = false;
=======
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 12DD7524
/// @DnDInput : 2
/// @DnDArgument : "expr" "room_speed * 0.2"
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "var" "obj_cycle_time.alarm[0]"
/// @DnDArgument : "var_1" "obj_budi.spd"
obj_cycle_time.alarm[0] = room_speed * 0.2;
obj_budi.spd = 1;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2E818ED6
instance_destroy();
>>>>>>> 6679e719d36d905fbd694b52ed70be941673bbaf
