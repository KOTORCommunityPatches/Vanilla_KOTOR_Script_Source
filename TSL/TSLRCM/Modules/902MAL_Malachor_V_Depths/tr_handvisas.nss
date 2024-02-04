void main() {
	if ((GetGlobalNumber("000_Handmaiden_Dead") != 5)) {
		return;
	}
	if ((!IsAvailableCreature(9))) {
		return;
	}
	if (GetIsObjectValid(GetObjectByTag("Mira", 0))) {
		return;
	}
	CreateObject(32, "g_lastlocal", GetLocation(GetFirstPC()), 0);
	StartNewModule("908MAL", "", "", "", "", "", "", "");
}