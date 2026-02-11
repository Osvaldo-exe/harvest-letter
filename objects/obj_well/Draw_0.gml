/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 1E0A6E88
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3363EAF8
/// @DnDArgument : "var" "show_collectwater"
/// @DnDArgument : "value" "true"
if(show_collectwater == true){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 008A9F9E
	/// @DnDParent : 3363EAF8
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "y - 200"
	/// @DnDArgument : "sprite" "spr_collectwater"
	/// @DnDSaveInfo : "sprite" "spr_collectwater"
	draw_sprite(spr_collectwater, 0, x, y - 200);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 267B3845
	/// @DnDParent : 3363EAF8
	/// @DnDArgument : "x" "x - 100"
	/// @DnDArgument : "y" "y - 20"
	/// @DnDArgument : "sprite" "spr_tutor_watercrop"
	/// @DnDSaveInfo : "sprite" "spr_tutor_watercrop"
	draw_sprite(spr_tutor_watercrop, 0, x - 100, y - 20);}