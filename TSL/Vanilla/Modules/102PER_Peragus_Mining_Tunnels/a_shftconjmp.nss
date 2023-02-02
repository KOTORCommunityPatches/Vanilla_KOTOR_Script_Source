void main() {
	object oWP_SHFTCON_PC_JMP = GetObjectByTag("WP_SHFTCON_PC_JMP", 0);
	AssignCommand(GetPCSpeaker(), ActionJumpToLocation(GetLocation(oWP_SHFTCON_PC_JMP)));
}
