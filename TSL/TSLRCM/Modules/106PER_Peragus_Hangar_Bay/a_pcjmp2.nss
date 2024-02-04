void main() {
	object oWP_PC_JUMP_2 = GetObjectByTag("WP_PC_JUMP_2", 0);
	AssignCommand(GetPCSpeaker(), ClearAllActions());
	AssignCommand(GetPCSpeaker(), ActionJumpToLocation(GetLocation(oWP_PC_JUMP_2)));
}