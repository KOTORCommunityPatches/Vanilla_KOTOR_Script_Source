void main() {
	if ((GetGlobalNumber("003EBO_Disciple_Atton") < 4)) {
		return;
	}
	if ((!IsAvailableCreature(11))) {
		return;
	}
	CreateObject(32, "g_lastlocal", GetLocation(GetFirstPC()), 0);
	StartNewModule("909MAL", "", "", "", "", "", "", "");
}