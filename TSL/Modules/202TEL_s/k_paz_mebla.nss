void main() {
	int nParam1 = GetScriptParameter(1);
	SetGlobalBoolean("G_Paz_JustPlayed", 1);
	if ((nParam1 == 1)) {
		PlayPazaak(1, "k_pazend_mebla", 0, 0, OBJECT_INVALID);
	}
	if ((nParam1 == 2)) {
		SetGlobalNumber("202TEL_MeblaP", 1);
		PlayPazaak(1, "k_pazend_mebla", 40, 0, OBJECT_INVALID);
	}
}

