void main() {
	object oWP_SHFTCON = GetObjectByTag("WP_SHFTCON", 0);
	AssignCommand(GetPCSpeaker(), ActionJumpToLocation(GetLocation(oWP_SHFTCON)));
}

