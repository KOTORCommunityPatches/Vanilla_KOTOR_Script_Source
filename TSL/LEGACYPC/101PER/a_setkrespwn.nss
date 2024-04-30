void main() {
	int nGlobal = GetGlobalNumber("101PER_Kreia_Spawn");
	if ((nGlobal == 0)) {
		SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		SetGlobalNumber("101PER_Kreia_Spawn", 2);
		object oP_kreia002 = GetObjectByTag("kreia_corpse", 0);
		DestroyObject(oP_kreia002, 0.0, 1, 0.0, 0);
		location location1 = GetLocation(GetObjectByTag("WP_KREIA_SPAWN1", 0));
		oP_kreia002 = CreateObject(1, "p_kreia002", location1, 0);
		AssignCommand(GetFirstPC(), ClearAllActions());
		AssignCommand(oP_kreia002, ClearAllActions());
		AssignCommand(oP_kreia002, ActionStartConversation(GetFirstPC(), "101kreia", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

