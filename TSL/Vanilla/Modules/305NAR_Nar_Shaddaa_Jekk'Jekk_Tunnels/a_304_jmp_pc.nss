void main() {
	object oWP_VISQUIS_PC_JUMP = GetObjectByTag("WP_VISQUIS_PC_JUMP", 0);
	AssignCommand(GetPCSpeaker(), ActionJumpToLocation(GetLocation(oWP_VISQUIS_PC_JUMP)));
}

