void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 41:
			ActionTakeItem(GetObjectByTag("Airspeeder41", 0), GetPartyLeader());
			SetGlobalNumber("302NAR_Airspeeder_41", 1);
			SetGlobalNumber("302NAR_Airspeeder_44", 1);
			break;
		case 42:
			ActionTakeItem(GetObjectByTag("Airspeeder42", 0), GetPartyLeader());
			SetGlobalNumber("302NAR_Airspeeder_42", 1);
			break;
		case 43:
			ActionTakeItem(GetObjectByTag("Airspeeder43", 0), GetPartyLeader());
			SetGlobalNumber("302NAR_Airspeeder_43", 1);
			break;
		case 44:
			SetGlobalNumber("302NAR_Airspeeder_44", 2);
			break;
	}
}