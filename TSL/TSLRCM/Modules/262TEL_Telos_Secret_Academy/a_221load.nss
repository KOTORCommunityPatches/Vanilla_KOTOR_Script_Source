void main() {
	if ((GetGlobalNumber("262TEL_HK_Factory") == 1)) {
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		PlayMovie("TelMov14", 0);
		PlayMovie("MalMov02", 0);
		PlayMovie("TelMov04", 0);
		StartNewModule("232TEL", "From_262TEL", "", "", "", "", "", "");
	}
	if ((GetGlobalNumber("262TEL_HK_Factory") == 0)) {
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		PlayMovie("TelMov14", 0);
		PlayMovie("MalMov02", 0);
		PlayMovie("MalMov01b", 0);
		StartNewModule("221TEL", "", "", "", "", "", "", "");
	}
}