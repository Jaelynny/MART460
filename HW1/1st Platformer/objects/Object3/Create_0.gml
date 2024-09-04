/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 7B223A39
/// @DnDArgument : "direction" "0"
direction = choose(0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 491379D8
/// @DnDInput : 2
/// @DnDArgument : "expr" "spr_enemy2_defeated"
/// @DnDArgument : "var" "defeated_object"
/// @DnDArgument : "var_1" "vel_x"
defeated_object = spr_enemy2_defeated;
vel_x = 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 26B90148
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 68CD2691
alarm_set(0, 30);