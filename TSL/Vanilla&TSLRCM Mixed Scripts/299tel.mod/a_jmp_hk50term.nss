void main() {
	object oWP_PC_JUMP_HK50 = GetObjectByTag("WP_PC_JUMP_HK50", 0);
	AssignCommand(GetPCSpeaker(), ActionJumpToLocation(GetLocation(oWP_PC_JUMP_HK50)));
}

