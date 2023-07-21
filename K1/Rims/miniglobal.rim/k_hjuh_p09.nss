int StartingConditional() {
	int int1 = ((GetGlobalNumber("K_CURRENT_PLANET") == 40) && (GetGlobalNumber("G_JUHANIP_STATE") != 9));
	if (int1) {
		SetGlobalNumber("G_JUHANIP_STATE", 9);
	}
	return int1;
}

