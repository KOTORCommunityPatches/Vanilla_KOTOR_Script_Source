int StartingConditional() {
	
	int iResult;
	
	iResult = GetGlobalNumber("Mis_MissionTalk") == 6 ||
			GetGlobalNumber("Mis_MissionTalk") == 7 ||
			GetGlobalNumber("Mis_MissionTalk") == 8;
	
	return iResult;
}
