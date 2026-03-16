int StartingConditional() {
	if (((GetIsObjectValid(GetObjectByTag("G_T_SONIC02_EMER1", 0)) || GetIsObjectValid(GetObjectByTag("G_T_SONIC02_EMER2", 0))) || GetIsObjectValid(GetObjectByTag("G_T_SONIC02_EMER3", 0)))) {
		return 1;
	}
	return 0;
}

