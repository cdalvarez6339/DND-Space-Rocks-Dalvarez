/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 1EA352C1
/// @DnDArgument : "expr" "room"
var l1EA352C1_0 = room;
switch(l1EA352C1_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1335F110
	/// @DnDParent : 1EA352C1
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 465EF1FA
		/// @DnDParent : 1335F110
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "0512d994-5b29-4028-86a6-543746dfd503"
		room_goto(rm_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0EAE6F02
	/// @DnDParent : 1EA352C1
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 05FCB946
		/// @DnDParent : 0EAE6F02
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5B886F9D
	/// @DnDParent : 1EA352C1
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 4CCBDB6B
		/// @DnDParent : 5B886F9D
		game_restart();
		break;
}