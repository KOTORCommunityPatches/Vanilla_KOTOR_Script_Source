void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		SetGlobalFadeOut(0.0, 3.0, 0.0, 0.0, 0.0);
	}
	else {
		if ((nParam1 == 2)) {
			SetGlobalFadeIn(0.0, 2.0, 0.0, 0.0, 0.0);
		}
	}
}
