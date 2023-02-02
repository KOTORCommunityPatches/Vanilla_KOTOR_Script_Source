void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetSoloMode(0);
	SetPartyLeader(0xFFFFFFFF);
	PlayMovie("MalMov05", 0);
	if ((GetGlobalNumber("101PER_Revan_End") == 1)) {
		QueueMovie("TelMov02", 1);
		QueueMovie("HypMov01", 1);
		QueueMovie("MalMov07", 1);
		QueueMovie("MalMov08", 1);
		PlayMovieQueue(1);
		SetGlobalNumber("907MAL_CUTSCENE", 2);
		StartNewModule("907MAL", "", "", "", "", "", "", "");
	}
	else {
		StartNewModule("205TEL", "", "", "", "", "", "", "");
	}
}
