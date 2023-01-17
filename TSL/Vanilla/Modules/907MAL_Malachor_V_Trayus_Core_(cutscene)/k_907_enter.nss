void main() {
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	int nGlobal = GetGlobalNumber("907MAL_CUTSCENE");
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	switch (nGlobal) {
		case 0:
			CreateObject(1, "p_kreia_evil001", GetLocation(GetObjectByTag("sp_kreia", 0)), 0);
			CreateObject(1, "n_darthnihilu001", GetLocation(GetObjectByTag("sp_nihilus", 0)), 0);
			CreateObject(1, "n_darthsion", GetLocation(GetObjectByTag("sp_sion1", 0)), 0);
			AssignCommand(GetObjectByTag("Kreia", 0), ActionStartConversation(oEntering, "kreiaend", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			break;
		case 1:
			{
				object oN_darthsion = CreateObject(1, "n_darthsion", GetLocation(GetObjectByTag("wp_kreia_start", 0)), 0);
				object oC_hologrampc = CreateObject(1, "c_hologrampc", GetLocation(GetObjectByTag("wp_hologram", 0)), 0);
				CreateObject(1, "g_sithass002", GetLocation(GetObjectByTag("sp_sith1", 0)), 0);
				CreateObject(1, "g_sithass003", GetLocation(GetObjectByTag("sp_sith2", 0)), 0);
				int int4 = GetAppearanceType(GetEnteringObject());
				effect effect1 = EffectDisguise(int4);
				ApplyEffectToObject(2, effect1, oC_hologrampc, 0.0);
				AssignCommand(oN_darthsion, ActionStartConversation(oEntering, "sioncut1", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			break;
		case 2:
			{
				object oP_kreia_evil001 = CreateObject(1, "p_kreia_evil001", GetLocation(GetObjectByTag("sp_kreia2", 0)), 0);
				CreateObject(1, "n_darthsion", GetLocation(GetObjectByTag("wp_kreia_start", 0)), 0);
				AssignCommand(oP_kreia_evil001, ClearAllActions());
				AssignCommand(GetFirstPC(), ClearAllActions());
				AssignCommand(oP_kreia_evil001, ActionStartConversation(oEntering, "krecut1", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			break;
	}
}

