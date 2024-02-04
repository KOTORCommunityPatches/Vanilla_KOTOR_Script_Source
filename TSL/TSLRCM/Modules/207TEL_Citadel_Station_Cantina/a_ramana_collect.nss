void main() {
	object oPC = GetFirstPC();
	int int1 = GetLevelByPosition(1, oPC);
	GiveGoldToCreature(oPC, (100 * int1));
	SetGlobalNumber("207TEL_Ramana_Level", int1);
}