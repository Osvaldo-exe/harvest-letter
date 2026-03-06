/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 66CB76D0
/// @DnDArgument : "key" "vk_backspace"
/// @DnDArgument : "not" "1"
var l66CB76D0_0;l66CB76D0_0 = keyboard_check_pressed(vk_backspace);if (!l66CB76D0_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 0C670961
	/// @DnDParent : 66CB76D0
	/// @DnDArgument : "key" "vk_left"
	/// @DnDArgument : "not" "1"
	var l0C670961_0;l0C670961_0 = keyboard_check_pressed(vk_left);if (!l0C670961_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 57965439
		/// @DnDParent : 0C670961
		/// @DnDArgument : "key" "vk_up"
		/// @DnDArgument : "not" "1"
		var l57965439_0;l57965439_0 = keyboard_check_pressed(vk_up);if (!l57965439_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
			/// @DnDVersion : 1
			/// @DnDHash : 15FBE092
			/// @DnDParent : 57965439
			/// @DnDArgument : "key" "vk_right"
			/// @DnDArgument : "not" "1"
			var l15FBE092_0;l15FBE092_0 = keyboard_check_pressed(vk_right);if (!l15FBE092_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
				/// @DnDVersion : 1
				/// @DnDHash : 2C1FC3AC
				/// @DnDParent : 15FBE092
				/// @DnDArgument : "key" "vk_down"
				/// @DnDArgument : "not" "1"
				var l2C1FC3AC_0;l2C1FC3AC_0 = keyboard_check_pressed(vk_down);if (!l2C1FC3AC_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
					/// @DnDVersion : 1
					/// @DnDHash : 38EDE526
					/// @DnDParent : 2C1FC3AC
					/// @DnDArgument : "key" "vk_enter"
					/// @DnDArgument : "not" "1"
					var l38EDE526_0;l38EDE526_0 = keyboard_check_pressed(vk_enter);if (!l38EDE526_0){	var lSpace_0;lSpace_0 = keyboard_check_pressed(vk_space);if (!lSpace_0 || !global.popup_open){	/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 6A33094C
						/// @DnDParent : 38EDE526
						/// @DnDArgument : "expr" "keyboard_lastchar"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "typedWord "
						typedWord  += keyboard_lastchar;}}}}}}}

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 6C4538FA
/// @DnDArgument : "msg" "typedWord"
show_debug_message(string(typedWord));