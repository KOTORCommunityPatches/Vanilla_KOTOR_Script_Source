void main() {
	int nParam1 = GetScriptParameter(1);
	CreateObject(1, "n_darthnihilu001", GetLocation(GetObjectByTag("sp_nihilus_start", 0)), 0);
	switch (nParam1) {
		case 0:
			SetGlobalNumber("853NIH_CUTSCENE", 0);
			{
				object oP_visas = CreateObject(1, "p_visas", GetLocation(GetObjectByTag("sp_visas_start", 0)), 0);
				AssignCommand(GetObjectByTag("DarthNihilus", 0), ActionStartConversation(GetFirstPC(), "Nihilus", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			break;
		case 1:
			SetGlobalNumber("853NIH_CUTSCENE", 1);
			CreateObject(1, "npc_tobin", GetLocation(GetObjectByTag("sp_tobin", 0)), 0);
			AssignCommand(GetObjectByTag("DarthNihilus", 0), ActionStartConversation(GetFirstPC(), "NihTobin", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			break;
		case 2:
			SetGlobalNumber("853NIH_CUTSCENE", 2);
			{
				object oN_darthsion001 = CreateObject(1, "n_darthsion001", GetLocation(GetObjectByTag("sp_sion", 0)), 0);
				AssignCommand(oN_darthsion001, ActionStartConversation(GetFirstPC(), "sioncut", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			break;
		case 3:
			break;
	}
}
