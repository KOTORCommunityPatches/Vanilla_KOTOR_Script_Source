int StartingConditional() {
	int int1 = (((GetGlobalNumber("G_JUHANIP_STATE") == 10) && (GetGlobalNumber("K_CURRENT_PLANET") == 45)) && (GetGlobalNumber("G_FinalChoice") == 2));
	if (int1) {
		SetGlobalNumber("G_JUHANIP_STATE", 11);
	}
	return int1;
}

