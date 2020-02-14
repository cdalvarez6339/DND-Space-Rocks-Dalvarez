/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09298D84
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 19D7E456
	/// @DnDParent : 09298D84
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score == 1000)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 22832493
		/// @DnDParent : 19D7E456
		/// @DnDArgument : "room" "rm_win"
		/// @DnDSaveInfo : "room" "a574efcb-b6c7-4d37-a533-d5b50fa804cc"
		room_goto(rm_win);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 602EDC1E
	/// @DnDParent : 09298D84
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 437AE6C4
		/// @DnDParent : 602EDC1E
		/// @DnDArgument : "room" "rm_gameover"
		/// @DnDSaveInfo : "room" "3c3b7f85-25a4-48b6-b5ad-633c34828e3c"
		room_goto(rm_gameover);
	}
}