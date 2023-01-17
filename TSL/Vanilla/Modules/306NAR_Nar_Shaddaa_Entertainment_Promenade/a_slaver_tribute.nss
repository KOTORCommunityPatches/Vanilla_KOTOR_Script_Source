void main() {
	object oPC = GetFirstPC();
	int int1 = GetLevelByPosition(1, oPC);
	GiveGoldToCreature(oPC, (100 * int1));
	SetGlobalNumber("301NAR_Tribute_Level", int1);
}

