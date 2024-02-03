void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	PlayMovie("TelMov02", 0);
	PlayMovie("HypMov01", 0);
	PlayMovie("MalMov07", 0);
	PlayMovie("MalMov08", 0);
	SetGlobalNumber("907MAL_CUTSCENE", 2);
	StartNewModule("907MAL", "", "", "", "", "", "", "");
}

