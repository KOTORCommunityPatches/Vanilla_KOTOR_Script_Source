void main() {
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	CreateObject(1, "n_darthnihilu001", GetLocation(GetObjectByTag("sp_nihilus_start", 0)), 0);
	int nGlobal = GetGlobalNumber("853NIH_CUTSCENE");
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	switch (nGlobal) {
		case 0:
			SetGlobalNumber("853NIH_CUTSCENE", 0);
			{
				object oP_visas002 = CreateObject(1, "p_visas002", GetLocation(GetObjectByTag("sp_visas_start", 0)), 0);
				AssignCommand(GetObjectByTag("DarthNihilus", 0), ActionStartConversation(oEntering, "Nihilus", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			break;
		case 1:
			SetGlobalNumber("853NIH_CUTSCENE", 1);
			CreateObject(1, "npc_tobin", GetLocation(GetObjectByTag("sp_tobin", 0)), 0);
			AssignCommand(GetObjectByTag("DarthNihilus", 0), ActionStartConversation(oEntering, "NihTobin", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			break;
		case 2:
			SetGlobalNumber("853NIH_CUTSCENE", 2);
			{
				object oN_darthsion001 = CreateObject(1, "n_darthsion001", GetLocation(GetObjectByTag("sp_sion", 0)), 0);
				AssignCommand(oN_darthsion001, ActionStartConversation(oEntering, "sioncut", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			break;
	}
}

