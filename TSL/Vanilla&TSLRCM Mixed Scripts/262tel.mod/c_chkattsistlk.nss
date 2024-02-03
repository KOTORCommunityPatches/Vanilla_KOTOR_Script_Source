int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((((GetGlobalNumber("262TEL_SisTalk_Atton") == nParam1) && (IsNPCPartyMember(0) == 1)) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Atton", 0)) <= 10.0))) {
		return 1;
	}
	return 0;
}

