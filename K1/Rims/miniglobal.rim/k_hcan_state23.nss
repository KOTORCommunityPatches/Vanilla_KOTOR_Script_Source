int StartingConditional() {
	int int1 = (((GetGlobalNumber("G_CAND_STATE") == 5) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVC"))) || (((GetGlobalNumber("G_CAND_STATE") == 6) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVC"))) && (GetGlobalBoolean("G_CAND_THING") == 0)));
	return int1;
}

