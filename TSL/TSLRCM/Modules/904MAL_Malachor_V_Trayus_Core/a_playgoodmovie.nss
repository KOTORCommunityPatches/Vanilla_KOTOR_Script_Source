void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	QueueMovie("MalMov11a", 1);
	QueueMovie("MalMov11b", 1);
	QueueMovie("MalMov12", 1);
	QueueMovie("CreditTSLRCM", 1);
	PlayMovieQueue(0);
}