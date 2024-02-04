void main() {
	if ((GetGlobalNumber("411DXN_Complete") == 0)) {
		PlayMovie("OndMov05", 0);
		StartNewModule("501OND", "From_403DXN", "", "", "", "", "", "");
	}
	else {
		PlayMovie("OndMov07", 0);
		StartNewModule("511OND", "From_403DXN", "", "", "", "", "", "");
	}
}