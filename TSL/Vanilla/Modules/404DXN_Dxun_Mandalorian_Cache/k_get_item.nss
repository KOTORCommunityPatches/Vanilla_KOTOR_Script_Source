void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if (GetLoadFromSaveGame()) {
			return;
		}
		if (GetGlobalBoolean("404DXN_RECEIVED_DATA")) {
			return;
		}
		SetGlobalBoolean("404DXN_RECEIVED_DATA", 1);
		object object4 = GetItemPossessedBy(GetFirstPC(), "dpad_fman");
		if (GetIsObjectValid(object4)) {
			int nLocalBool = GetLocalBoolean(object4, 94);
			if ((!nLocalBool)) {
				DelayCommand(0.5, DisplayDatapad(object4));
			}
		}
	}
}
