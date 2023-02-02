void main() {
	object oWP_PC_JMP = GetObjectByTag("WP_PC_JMP", 0);
	AssignCommand(GetPCSpeaker(), ActionJumpToLocation(GetLocation(oWP_PC_JMP)));
}
