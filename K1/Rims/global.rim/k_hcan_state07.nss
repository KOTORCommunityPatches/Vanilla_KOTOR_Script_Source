int StartingConditional() {
	int int1 = (((GetGlobalNumber("G_CAND_STATE") == 6) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVC"))) && (GetGlobalBoolean("G_CAND_THING") == 0));
	if (int1) {
		SetGlobalBoolean("G_CAND_THING", 1);
	}
	return int1;
}

