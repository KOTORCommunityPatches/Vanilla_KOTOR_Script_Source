int StartingConditional() {
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	return (GetStandardFaction(oVisasMarr) == 1);
}