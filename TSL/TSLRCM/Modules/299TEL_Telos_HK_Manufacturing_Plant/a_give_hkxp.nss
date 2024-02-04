void main() {
	int nParam1 = GetScriptParameter(1);
	object oPC = GetFirstPC();
	GiveXPToCreature(oPC, nParam1);
}