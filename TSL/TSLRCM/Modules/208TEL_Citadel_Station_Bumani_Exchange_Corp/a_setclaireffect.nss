void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		EnableVideoEffect(3);
	}
	if ((nParam1 == 2)) {
		DisableVideoEffect();
	}
}