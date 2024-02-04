void main() {
	int nGlobal = GetGlobalNumber("101PER_Kreia_Spawn");
	if ((nGlobal != 1)) {
		return;
	}
	SetGlobalNumber("101PER_Kreia_Spawn", 2);
	object oWP_KREIA_SPAWN1 = GetObjectByTag("WP_KREIA_SPAWN1", 0);
	location location1 = GetLocation(oWP_KREIA_SPAWN1);
	object oKreia = GetObjectByTag("Kreia", 0);
	AssignCommand(oKreia, ActionJumpToLocation(location1));
	AssignCommand(oKreia, ActionStartConversation(GetFirstPC(), "101kreia", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}