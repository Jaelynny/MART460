/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E06B38E
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "value" "keyboard_key(vk_d)-keyboard_key(vk_a)"
var move_x = keyboard_key(vk_d)-keyboard_key(vk_a);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 06A5FA31
/// @DnDArgument : "expr" "move_x*move_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x*move_speed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 36D411CE
/// @DnDArgument : "target" ""
/// @DnDArgument : "object" "Object2"
/// @DnDSaveInfo : "object" "Object2"
var l36D411CE_0 = instance_place(0, 0, [Object2]);
if ((l36D411CE_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 28E0C5E4
	/// @DnDParent : 36D411CE
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 2A4904A0
	/// @DnDParent : 36D411CE
	var l2A4904A0_0;
	l2A4904A0_0 = keyboard_check(vk_space);
	if (l2A4904A0_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6CA4B10E
		/// @DnDParent : 2A4904A0
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 29883C77
else
{

}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7B3344A1
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "10"
if(move_y < 10)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 260ACE96
	/// @DnDParent : 7B3344A1
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "move_y"
	move_y += 1;
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 1604499A
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "move_speed"
/// @DnDArgument : "object" "Object2"
/// @DnDSaveInfo : "object" "Object2"
move_and_collide(move_x, move_y, Object2,4,0,0,move_speed,-1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 60914215
/// @DnDArgument : "var" "move_x"
if(move_x == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6C004F67
	/// @DnDParent : 60914215
	/// @DnDArgument : "expr" "sign(move_x)"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = sign(move_x);
}