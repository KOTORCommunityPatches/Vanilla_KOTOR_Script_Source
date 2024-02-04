void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			PlayMovieQueue(1);
			break;
		case 2:
			SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
			break;
		case 3:
			break;
	}
}