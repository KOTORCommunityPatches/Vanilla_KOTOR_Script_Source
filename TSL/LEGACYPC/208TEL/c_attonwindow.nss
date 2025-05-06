int StartingConditional() {
	object oTr_window = GetObjectByTag("tr_window", 0);
	if (GetLocalBoolean(oTr_window, 30)) {
		return 1;
	}
	return 0;
}

