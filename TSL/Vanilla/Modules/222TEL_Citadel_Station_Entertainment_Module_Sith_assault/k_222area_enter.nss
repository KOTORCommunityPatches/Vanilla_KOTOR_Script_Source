void main() {
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if ((!GetGlobalBoolean("222_FIRST_ENTER"))) {
			SetGlobalBoolean("222_FIRST_ENTER", 1);
		}
	}
}
