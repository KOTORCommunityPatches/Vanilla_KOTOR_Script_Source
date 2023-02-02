void main() {
	SetGlobalFadeIn(0.0, 0.5, 0.0, 0.0, 0.0);
	int nParam1 = GetScriptParameter(1);
	if (nParam1) {
		EnableVideoEffect(1);
	}
	else {
		DisableVideoEffect();
	}
}
