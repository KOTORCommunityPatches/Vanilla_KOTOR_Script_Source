int StartingConditional() {
	int int1 = ((GetGlobalNumber("Mis_MissionTalk") == 3) && (GetGlobalNumber("K_Current_Planet") != 10));
	return int1;
}

