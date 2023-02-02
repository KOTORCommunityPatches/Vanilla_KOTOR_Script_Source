int StartingConditional() {
	object oAirlock3a = GetObjectByTag("Airlock3a", 0);
	if (((GetGlobalNumber("200TEL_Smuggling") == 9) || (GetGlobalNumber("200TEL_Sting") == 8))) {
		return 1;
	}
	return 0;
}
