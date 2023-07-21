int StartingConditional() {
	int int1 = (((GetGlobalNumber("G_CAND_STATE") == 7) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVC"))) && (GetGlobalBoolean("LEV_MALDREAM") == 1));
	return int1;
}

