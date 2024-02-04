void main() {
	int nGlobal = GetGlobalNumber("101PER_Know_Sedatives");
	if ((nGlobal == 0)) {
		GiveXPToCreature(GetPCSpeaker(), 50);
		SetGlobalNumber("101PER_Know_Sedatives", 1);
	}
}