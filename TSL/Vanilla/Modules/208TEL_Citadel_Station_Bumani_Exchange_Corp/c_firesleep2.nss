int StartingConditional() {
	object oComputerPanel = GetObjectByTag("ComputerPanel", 0);
	if (GetLocalBoolean(oComputerPanel, 35)) {
		SetLocalBoolean(oComputerPanel, 35, 0);
		return 1;
	}
	else {
		return 0;
	}
}
