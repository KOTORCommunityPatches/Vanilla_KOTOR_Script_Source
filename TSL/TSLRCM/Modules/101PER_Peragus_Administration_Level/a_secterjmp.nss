void main() {
	object oWP_SECTER = GetObjectByTag("WP_SECTER", 0);
	AssignCommand(GetPCSpeaker(), ActionJumpToLocation(GetLocation(oWP_SECTER)));
}