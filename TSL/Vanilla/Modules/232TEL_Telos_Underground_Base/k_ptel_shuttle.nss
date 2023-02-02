void main() {
	QueueMovie("TelMov10", 1);
	QueueMovie("TelMov11", 1);
	QueueMovie("TelMov12", 1);
	PlayMovieQueue(1);
	AurPostString("k_ptel_shuttle: fade out 0.0", 5, 5, 5.0);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	StartNewModule("261TEL", "from_232TEL", "", "", "", "", "", "");
}
