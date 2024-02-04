void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
			break;
		case 2:
			break;
		case 3:
			break;
		case 4:
			break;
		default:
			AurPostString("ERROR: Should not here.", 5, 15, 10.0);
			break;
	}
}