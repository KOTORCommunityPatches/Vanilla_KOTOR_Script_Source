void main() {
	int nGlobal = GetGlobalNumber("101PER_XP_Sedatives");
	if ((nGlobal == 0)) {
		GiveXPToCreature(GetPCSpeaker(), 100);
		SetGlobalNumber("101PER_XP_Sedatives", 1);
	}
}

