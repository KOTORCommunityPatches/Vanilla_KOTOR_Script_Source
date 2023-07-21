int StartingConditional() {
	int int1 = (((GetGlobalNumber("G_JUHANIH_STATE") == 6) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVH"))) && (GetGlobalNumber("K_STAR_MAP") < 40));
	if (int1) {
		SetGlobalNumber("G_JUHANIH_STATE", 7);
	}
	return int1;
}

