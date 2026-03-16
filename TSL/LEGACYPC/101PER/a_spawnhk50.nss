void main() {
	int nGlobal = GetGlobalNumber("101PER_Sion_Arrives");
	if ((nGlobal == 0)) {
		return;
	}
	int int3 = GetGlobalNumber("101PER_HK50_Spawned");
	if ((int3 == 1)) {
		return;
	}
	SetGlobalNumber("101PER_HK50_Spawned", 1);
	object oWP_HK50_SPAWN = GetObjectByTag("WP_HK50_SPAWN", 0);
	location location1 = GetLocation(oWP_HK50_SPAWN);
	object oP_hk048 = CreateObject(1, "p_hk048", location1, 0);
	AssignCommand(oP_hk048, ClearAllActions());
	AssignCommand(oP_hk048, ActionStartConversation(GetFirstPC(), "hk50", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

