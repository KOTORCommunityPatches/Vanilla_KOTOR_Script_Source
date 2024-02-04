int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			return ((((IsNPCPartyMember(8) || GetIsPC(GetObjectByTag("T3M4", 0))) && (!GetGlobalNumber("800DRO_Upg_T3M4_01"))) || ((IsNPCPartyMember(5) || GetIsPC(GetObjectByTag("HK47", 0))) && (!GetGlobalNumber("800DRO_Upg_HK47_01")))) || ((IsNPCPartyMember(3) || GetIsPC(GetObjectByTag("G0T0", 0))) && (!GetGlobalNumber("800DRO_Upg_G0T0_01"))));
		case 2:
			return ((((IsNPCPartyMember(8) || GetIsPC(GetObjectByTag("T3M4", 0))) && (!GetGlobalNumber("800DRO_Upg_T3M4_02"))) || ((IsNPCPartyMember(5) || GetIsPC(GetObjectByTag("HK47", 0))) && (!GetGlobalNumber("800DRO_Upg_T3M4_02")))) || ((IsNPCPartyMember(3) || GetIsPC(GetObjectByTag("G0T0", 0))) && (!GetGlobalNumber("800DRO_Upg_T3M4_02"))));
	}
	return 0;
}