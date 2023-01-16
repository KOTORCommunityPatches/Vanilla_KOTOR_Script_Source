void PlayCredits() {
	StartCreditSequence(FALSE);
	SetGlobalBoolean("CREDITPLAY", TRUE);
}

void main() {
	SetGlobalFadeOut();
	QueueMovie("55", TRUE);
	PlayMovieQueue(TRUE);
	AssignCommand(GetFirstPC(), DelayCommand(0.049999997, PlayCredits()));
}
