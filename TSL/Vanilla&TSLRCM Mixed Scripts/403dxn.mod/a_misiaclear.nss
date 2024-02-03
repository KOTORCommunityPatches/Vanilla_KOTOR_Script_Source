void main() {
	object oPC = GetFirstPC();
	AssignCommand(oPC, ClearAllEffects());
	int nGlobal = GetGlobalNumber("403DXN_Battle_Circle");
	object oNpc_bralor;
	switch (nGlobal) {
		case 0:
			oNpc_bralor = GetObjectByTag("npc_davrel", 0);
			break;
		case 1:
			oNpc_bralor = GetObjectByTag("npc_kex", 0);
			break;
		case 2:
			oNpc_bralor = GetObjectByTag("npc_tagren", 0);
			break;
		case 3:
			oNpc_bralor = GetObjectByTag("npc_kelborn", 0);
			break;
		case 4:
			oNpc_bralor = GetObjectByTag("npc_bralor", 0);
			break;
	}
	if ((!GetHasFeat(238, oNpc_bralor))) {
		GrantFeat(238, oNpc_bralor);
	}
}

