int StartingConditional() {
	object oKreiaGrdRmWarn = GetObjectByTag("KreiaGrdRmWarn", 0);
	if (GetLocalBoolean(oKreiaGrdRmWarn, 30)) {
		return 0;
	}
	return 1;
}
