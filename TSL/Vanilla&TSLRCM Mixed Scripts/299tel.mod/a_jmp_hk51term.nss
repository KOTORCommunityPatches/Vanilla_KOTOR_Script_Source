void main() {
	object oWP_PC_JUMP_HK51 = GetObjectByTag("WP_PC_JUMP_HK51", 0);
	AssignCommand(GetPCSpeaker(), ActionJumpToLocation(GetLocation(oWP_PC_JUMP_HK51)));
}

