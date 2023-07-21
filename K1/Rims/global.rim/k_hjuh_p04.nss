int StartingConditional() {
	int int1 = ((GetGlobalNumber("G_JUHANIP_STATE") == 3) && (GetGlobalNumber("G_JUHANIH_STATE") == 3));
	if (int1) {
		SetGlobalNumber("G_JUHANIP_STATE", 4);
		SetGlobalNumber("T_LEVP", GetHitDice(GetFirstPC()));
	}
	return int1;
}

