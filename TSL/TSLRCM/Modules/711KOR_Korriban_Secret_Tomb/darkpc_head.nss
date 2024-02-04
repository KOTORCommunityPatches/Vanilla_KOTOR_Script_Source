void main() {
	if ((!GetLoadFromSaveGame())) {
		return;
	}
	object oG_darkpc = GetObjectByTag("g_darkpc", 0);
	if (GetIsObjectValid(oG_darkpc)) {
		DuplicateHeadAppearance(oG_darkpc, GetFirstPC());
	}
}