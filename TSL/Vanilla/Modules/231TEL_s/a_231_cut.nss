void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			SetGlobalFadeIn(1.0, 2.0, 0.0, 0.0, 0.0);
			break;
		default:
			break;
	}
}

