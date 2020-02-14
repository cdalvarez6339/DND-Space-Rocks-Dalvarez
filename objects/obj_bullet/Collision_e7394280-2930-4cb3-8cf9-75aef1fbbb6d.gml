/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 2AAB4AD9
/// @DnDApplyTo : c0e94e12-2f3a-4958-ac7b-e3079c5b93d1
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 7C83B412
	/// @DnDParent : 2AAB4AD9
	/// @DnDArgument : "score" "10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1C7160B5
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 0E622701
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0593218E
	/// @DnDParent : 0E622701
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 41F23597
	/// @DnDParent : 0E622701
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_astroid_large"
	if(sprite_index == spr_astroid_large)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 466A093D
		/// @DnDParent : 41F23597
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 65ECCEE5
			/// @DnDParent : 466A093D
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAstroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_astroid"
			/// @DnDSaveInfo : "objectid" "41308b62-b18a-4cf8-8c76-eb8a27f7ebc7"
			var newAstroid = instance_create_layer(x + 0, y + 0, "Instances", obj_astroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6F0905E4
			/// @DnDParent : 466A093D
			/// @DnDArgument : "expr" "spr_astroid_medium"
			/// @DnDArgument : "var" "newAstroid.sprite_index"
			newAstroid.sprite_index = spr_astroid_medium;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 74D6A5BD
	/// @DnDParent : 0E622701
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_astroid_medium"
	if(sprite_index == spr_astroid_medium)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 0625B5AA
		/// @DnDParent : 74D6A5BD
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1FB83F55
			/// @DnDParent : 0625B5AA
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAstroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_astroid"
			/// @DnDSaveInfo : "objectid" "41308b62-b18a-4cf8-8c76-eb8a27f7ebc7"
			var newAstroid = instance_create_layer(x + 0, y + 0, "Instances", obj_astroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 208AC876
			/// @DnDParent : 0625B5AA
			/// @DnDArgument : "expr" "spr_astroid_small"
			/// @DnDArgument : "var" "newAstroid.sprite_index"
			newAstroid.sprite_index = spr_astroid_small;
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 6F388AAE
	/// @DnDParent : 0E622701
	/// @DnDArgument : "times" "10"
	repeat(10)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4E89F326
		/// @DnDParent : 6F388AAE
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_debris"
		/// @DnDSaveInfo : "objectid" "a1e4ce37-dd09-403f-bdf2-f0c6b30131c7"
		instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
	}
}