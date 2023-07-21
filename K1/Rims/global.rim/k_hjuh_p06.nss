int StartingConditional() {
	int int1 = ((GetGlobalNumber("G_JUHANIP_STATE") == 4) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVP")));
	if (int1) {
		SetGlobalNumber("G_JUHANIP_STATE", 6);
		SetGlobalNumber("T_LEVP", (GetGlobalNumber("T_LEVP") + 1));
	}
	return int1;
}

