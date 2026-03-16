void main() {
	object oWP_ATTONCAGE = GetObjectByTag("WP_ATTONCAGE", 0);
	AssignCommand(GetPCSpeaker(), ActionJumpToLocation(GetLocation(oWP_ATTONCAGE)));
	SetGlobalNumber("101PER_Talk_Atton", 1);
}

