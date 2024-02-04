int StartingConditional() {
	object oComputerPanel = GetObjectByTag("ComputerPanel", 0);
	if (GetLocalBoolean(oComputerPanel, 34)) {
		SetLocalBoolean(oComputerPanel, 34, 0);
		return 1;
	}
	else {
		return 0;
	}
}