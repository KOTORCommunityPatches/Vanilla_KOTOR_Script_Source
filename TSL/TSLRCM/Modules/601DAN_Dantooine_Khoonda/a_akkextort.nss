void main() {
	int nParam1 = GetScriptParameter(1);
	GiveGoldToCreature(GetFirstPC(), nParam1);
	SetGlobalNumber("601DAN_WrenchFound", 2);
}